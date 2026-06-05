package mobi.beyondpod.rsscore;

import android.net.Uri;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.helpers.Path;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.history.EpisodeHistoryManager;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.sync.TrackedChangeEnclosure;
import mobi.beyondpod.ui.core.TrackMetadataParser;

/* loaded from: classes.dex */
public class Track {
    private static final String TAG = "track";
    private static final ArrayList<String> m_InternalPlayerExtensions = new ArrayList<>();
    public boolean changeTrackingEnabled;
    private int m_BufferedPercent;
    private String m_ContentMimeType;
    private Integer m_ContentType;
    private int m_CurrentPlayState;
    private boolean m_Deleted;
    private long m_DownloadSize;
    private int m_DownloadStatus;
    private long m_DownloadedPortion;
    private Date m_LastModifiedDate;
    private boolean m_Locked;
    private boolean m_Modified;
    private Feed m_ParentFeed;
    private String m_Path;
    private float m_PlaybackSpeed;
    private boolean m_Played;
    private long m_PlayedTime;
    private String m_Protocol;
    private String m_ShowNotes;
    private long m_ShowNotesSize;
    private long m_SizeOnDisk;
    private int m_SortOrder;
    private Long m_StorageRowID;
    private long m_TotalTime;
    private String m_TrackDescription;
    private String m_TrackImagePath;
    private Uri m_Uri;
    private String m_Url;
    private String m_postTitle;
    private String m_postUrl;
    private String m_rssItemID;
    private String m_trackName;

    static {
        reloadSupportedFileTypes();
    }

    public Track(String str, Feed feed) {
        this.m_Deleted = false;
        this.m_DownloadedPortion = 0L;
        this.m_DownloadSize = 0L;
        this.m_DownloadStatus = 0;
        this.m_Modified = false;
        this.m_Played = false;
        this.m_Protocol = "";
        this.m_SortOrder = AbstractSpiCall.DEFAULT_TIMEOUT;
        this.m_trackName = null;
        this.m_Uri = null;
        this.m_CurrentPlayState = 2;
        this.m_BufferedPercent = 100;
        this.m_ContentType = null;
        this.m_SizeOnDisk = 0L;
        this.m_Locked = false;
        this.m_ShowNotesSize = 0L;
        this.m_PlaybackSpeed = 1.0f;
        this.changeTrackingEnabled = true;
        this.m_Path = str;
        this.m_TotalTime = 0L;
        this.m_PlayedTime = 0L;
        this.m_ParentFeed = feed;
        this.m_Protocol = "";
        this.m_Played = false;
    }

    public Track(File file, Feed feed) {
        this(file.getPath(), feed);
        this.m_LastModifiedDate = new Date(file.lastModified());
        this.m_SizeOnDisk = file.length();
    }

    public void initializePlayedTimes(long j, long j2, boolean z) {
        this.m_TotalTime = j2;
        this.m_PlayedTime = j;
        this.m_Played = z;
        markModified();
    }

    public Long rowID() {
        return this.m_StorageRowID;
    }

    public void initRowID(Long l) {
        this.m_StorageRowID = l;
    }

    public void markPlayed() {
        if (getTotalTime() == 0) {
            this.m_Played = true;
            markModified();
            ChangeTracker.addLocalEpisodePlayedChange(this);
            return;
        }
        setPlayedTime(getTotalTime());
    }

    public void clearPlayed() {
        boolean z = getPlayedTime() == 0;
        this.m_Played = false;
        setPlayedTime(0L);
        if (z) {
            ChangeTracker.addLocalEpisodePlayedChange(this);
        }
    }

    public void delete() {
        this.m_Deleted = new File(trackPath()).delete();
    }

    public String toString() {
        return String.format("track: %s (%s/%s)", getName(), totalTimeAsString(), playedTimeAsString());
    }

    public static void reloadSupportedFileTypes() {
        m_InternalPlayerExtensions.clear();
        if (StringUtils.isNullOrEmpty(Configuration.getInternalPlayerSupportedFileExtensions())) {
            return;
        }
        for (String str : Configuration.getInternalPlayerSupportedFileExtensions().toLowerCase(Locale.ROOT).split(",")) {
            String trim = str.trim();
            if (!StringUtils.isNullOrEmpty(trim)) {
                m_InternalPlayerExtensions.add(trim);
            }
        }
    }

    public boolean getIsDeleted() {
        return this.m_Deleted;
    }

    public static boolean isSupportedExtension(String str) {
        return StringUtils.isNullOrEmpty(str) || m_InternalPlayerExtensions.contains(str.toLowerCase(Locale.ROOT));
    }

    public boolean isSupportedFileType() {
        return isSupportedExtension(Path.getExtension(this.m_Path));
    }

    public Feed getParentFeed() {
        return this.m_ParentFeed;
    }

    public void setParentFeed(Feed feed) {
        this.m_ParentFeed = feed;
    }

    public String trackPath() {
        return this.m_Path;
    }

    public Date getLastModifiedDate() {
        if (this.m_LastModifiedDate == null && exists()) {
            this.m_LastModifiedDate = FileUtils.getLastWriteTime(trackPath());
        }
        return this.m_LastModifiedDate;
    }

    public void setLastModifiedDate(Date date) {
        this.m_LastModifiedDate = date;
    }

    public String getName() {
        if (this.m_trackName == null) {
            this.m_trackName = getDefaultTrackName();
        }
        return this.m_trackName;
    }

    public void setName(String str) {
        this.m_trackName = str;
        markModified();
    }

    private String getDefaultTrackName() {
        String replace = Path.getFileNameWithoutExtension(trackPath()).replace(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, " ");
        if (isSupportedFileType()) {
            return replace;
        }
        String extension = Path.getExtension(trackPath());
        if (StringUtils.isNullOrEmpty(extension)) {
            return replace;
        }
        return replace + String.format(" (%s)", extension);
    }

    public String trackImagePath() {
        return this.m_TrackImagePath;
    }

    public void setTrackImagePath(String str) {
        this.m_TrackImagePath = str;
        markModified();
    }

    public boolean hasImage() {
        return this.m_TrackImagePath != null && this.m_TrackImagePath.length() > 0;
    }

    public String trackDescription() {
        return this.m_TrackDescription;
    }

    public void setTrackDescription(String str) {
        this.m_TrackDescription = str;
        markModified();
    }

    public String getShowNotes() {
        return this.m_ShowNotes;
    }

    public void setShowNotes(String str) {
        this.m_ShowNotes = str;
        markModified();
    }

    public void setSavedShowNotesSize(long j) {
        this.m_ShowNotesSize = j;
    }

    public boolean hasShowNotes() {
        return this.m_ShowNotesSize > 0 || !StringUtils.isNullOrEmpty(this.m_ShowNotes);
    }

    public String trackPostTitle() {
        return this.m_postTitle;
    }

    public void setTrackPostTitle(String str) {
        if (str != null) {
            this.m_postTitle = str.trim();
        } else {
            this.m_postTitle = null;
        }
        markModified();
    }

    public String trackPostUrl() {
        return this.m_postUrl;
    }

    public void setTrackPostUrl(String str) {
        this.m_postUrl = str;
        markModified();
    }

    public String displayName() {
        String trackPostTitle = Configuration.podcastNamingScheme() == 0 ? trackPostTitle() : null;
        return StringUtils.isNullOrEmpty(trackPostTitle) ? getName() : trackPostTitle;
    }

    public int getSortOrder() {
        return this.m_SortOrder;
    }

    public void setSortOrder(int i) {
        this.m_SortOrder = i;
        markModified();
    }

    public long getTotalTime() {
        return this.m_TotalTime;
    }

    public void setTotalTime(long j) {
        boolean z = this.m_TotalTime != j;
        this.m_TotalTime = j;
        markModified();
        if (z) {
            ChangeTracker.addLocalEpisodeUpdatedChange(this);
        }
    }

    public boolean isModified() {
        return this.m_Modified;
    }

    public void setIsModified(boolean z) {
        this.m_Modified = z;
    }

    public boolean isNew() {
        return !isPlayed() && (getTotalTime() == 0 || (getTotalTime() > 0 && getPlayedTime() == 0));
    }

    public boolean isPartialyPlayed() {
        return (isNew() || isPlayed()) ? false : true;
    }

    public boolean isPlayed() {
        return this.m_Played || (getTotalTime() > 0 && getTotalTime() - getPlayedTime() < 5);
    }

    public String totalTimeAsString() {
        return CoreHelper.formatTimeAsString(getTotalTime());
    }

    public String totalTimeAsMinuteString() {
        return CoreHelper.formatSecondsAsMinutes(getTotalTime());
    }

    public long getPlayedTime() {
        return this.m_PlayedTime;
    }

    public void setPlayedTime(long j) {
        boolean z = this.m_PlayedTime != j;
        this.m_PlayedTime = j;
        if (this.m_PlayedTime > 0) {
            this.m_Played = false;
        }
        markModified();
        if (z) {
            ChangeTracker.addLocalEpisodePlayedChange(this);
            EpisodeHistoryManager.addEpisodePlayedHistoryEntry(this);
        }
    }

    public float playedAsFraction() {
        if (isPlayed()) {
            return 1.0f;
        }
        if (isNew()) {
            return 0.0f;
        }
        return ((float) getPlayedTime()) / ((float) getTotalTime());
    }

    public String playedTimeAsString() {
        return CoreHelper.formatTimeAsString(getPlayedTime());
    }

    public String getProtocol() {
        return this.m_Protocol;
    }

    public void setProtocol(String str) {
        this.m_Protocol = str;
        markModified();
    }

    public boolean isRemoteEpisode() {
        return StringUtils.equals(TrackedChangeEnclosure.REMOTE_CHANGE, getProtocol());
    }

    public boolean exists() {
        return !StringUtils.isNullOrEmpty(trackPath()) && FileUtils.exists(trackPath());
    }

    public boolean allowAutoDelete() {
        if (locked()) {
            return false;
        }
        if (!hasDownloadStarted() || isFullyDownloaded()) {
            return this.m_ParentFeed.canDeleteTracks();
        }
        return false;
    }

    public boolean temporaryLocked() {
        return equals(BeyondPodApplication.getInstance().playList().currentTrack());
    }

    public boolean canSetAsFavorite() {
        return getParentFeed().canDeleteTracks() && !locked();
    }

    public boolean locked() {
        return this.m_Locked;
    }

    public void setLocked(boolean z) {
        if (this.m_Locked != z) {
            this.m_Locked = z;
            markModified();
        }
    }

    public String getUrl() {
        return this.m_Url;
    }

    public void setUrl(String str) {
        if (StringUtils.equals(this.m_Url, str)) {
            return;
        }
        this.m_Url = str;
        markModified();
    }

    public Uri getUri() {
        if (this.m_Uri != null) {
            return this.m_Uri;
        }
        if (StringUtils.isNullOrEmpty(this.m_Url)) {
            return null;
        }
        this.m_Uri = Uri.parse(this.m_Url);
        return this.m_Uri;
    }

    public long getDownloadSize() {
        return this.m_DownloadSize;
    }

    public void setDownloadSize(long j) {
        if (this.m_DownloadSize != j) {
            this.m_DownloadSize = j;
            this.m_Modified = true;
        }
    }

    public long getDownloadedPortion() {
        return this.m_DownloadedPortion;
    }

    public void setDownloadedPortion(long j) {
        if (this.m_DownloadedPortion != j) {
            this.m_DownloadedPortion = j;
            this.m_Modified = true;
        }
    }

    public float getDownloadPercent() {
        if (getDownloadedPortion() == 0 || getDownloadSize() == 0) {
            return 0.0f;
        }
        return (((float) getDownloadedPortion()) / ((float) getDownloadSize())) * 100.0f;
    }

    public boolean isFullyDownloaded() {
        if (!exists()) {
            return false;
        }
        if (StringUtils.isNullOrEmpty(getUrl())) {
            return true;
        }
        return getDownloadSize() > 0 && getDownloadedPortion() == getDownloadSize();
    }

    public boolean hasDownloadStarted() {
        return exists() || this.m_DownloadedPortion > 0;
    }

    public boolean hasUrl() {
        return !StringUtils.isNullOrEmpty(getUrl());
    }

    public int getDownloadStatus() {
        return this.m_DownloadStatus;
    }

    public void setDownloadStatus(int i) {
        this.m_DownloadStatus = i;
    }

    public float getCurrentPlaybackSpeed() {
        return this.m_PlaybackSpeed;
    }

    public void setCurrentPlaybackSpeed(float f) {
        if (this.m_PlaybackSpeed != f) {
            this.m_PlaybackSpeed = f;
        }
    }

    public int getCurrentPlayState() {
        return this.m_CurrentPlayState;
    }

    public void setCurrentPlayState(int i) {
        if (this.m_CurrentPlayState != i) {
            this.m_CurrentPlayState = i;
            if (this.m_CurrentPlayState == 2 || this.m_CurrentPlayState == -1) {
                if (!shouldRememberPlayedPosition()) {
                    clearPlayed();
                }
                if (!Configuration.allowSeekingOfInternetStreams() && !hasDownloadStarted() && !isPlayed()) {
                    clearPlayed();
                }
            }
            BeyondPodApplication.getInstance().playList().onTrackPlayStateChanged(this);
            publishTrackChangedEvent();
        }
    }

    public int getBufferedPercent() {
        return this.m_BufferedPercent;
    }

    public void setBufferedPercent(int i) {
        if (this.m_BufferedPercent != i) {
            this.m_BufferedPercent = i;
            publishTrackChangedEvent();
        }
    }

    public boolean shouldRememberPlayedPosition() {
        return this.m_ParentFeed.shouldRememberPlayedPosition();
    }

    private void publishTrackChangedEvent() {
        FeedRepository.notifyTrackChanged(this);
    }

    public String rssItemID() {
        return this.m_rssItemID;
    }

    public void setRssItemID(String str) {
        if (StringUtils.equals(this.m_rssItemID, str)) {
            return;
        }
        this.m_rssItemID = str;
        markModified();
    }

    private void markModified() {
        this.m_Modified = true;
        publishTrackChangedEvent();
    }

    public void setContentMimeType(String str) {
        this.m_ContentMimeType = str;
        this.m_ContentType = null;
        markModified();
    }

    public String contentMimeType() {
        return this.m_ContentMimeType;
    }

    public int contentType() {
        if (this.m_ContentType == null) {
            if (StringUtils.isNullOrEmpty(this.m_ContentMimeType)) {
                TrackMetadataParser.loadMetadataFor(this);
            }
            this.m_ContentType = Integer.valueOf(MediaFile.mapMimeToContentType(this.m_ContentMimeType));
            if (this.m_ContentType.intValue() == 0 || this.m_ContentType.intValue() == -1) {
                this.m_ContentType = Integer.valueOf(MediaFile.mapMimeToContentType(MediaFile.convertToStreamableMimeType(this.m_ContentMimeType, getUrl(), trackPath())));
            }
        }
        return this.m_ContentType.intValue();
    }

    public boolean hasContentType() {
        return this.m_ContentMimeType != null;
    }

    public long getSizeOnDisk() {
        return this.m_SizeOnDisk > 0 ? this.m_SizeOnDisk : this.m_DownloadSize;
    }

    public void patchTrackPathForCurrentRoot(boolean z) {
        if (trackPath() == null || !trackPath().startsWith("/")) {
            return;
        }
        String patchRootPath = FeedRepository.patchRootPath(trackPath());
        if (z || FileUtils.exists(patchRootPath) || !hasDownloadStarted()) {
            CoreHelper.writeTraceEntry(TAG, "Patching track path from:" + this.m_Path + " => " + patchRootPath);
            this.m_Path = patchRootPath;
        }
    }

    public boolean patchTrackPathToMatchParent() {
        if (!hasUrl() || StringUtils.isNullOrEmpty(trackPath())) {
            return false;
        }
        File file = new File(trackPath());
        File file2 = new File(getParentFeed().getFeedPath());
        if (StringUtils.equalsIgnoreCase(file2.getAbsolutePath(), file.getParent())) {
            return false;
        }
        this.m_Path = new File(file2, file.getName()).getAbsolutePath();
        markModified();
        return true;
    }

    public boolean isUsingParentImage() {
        return this.m_ParentFeed.topLevelParentID().toString().equals(this.m_TrackImagePath);
    }

    public void setUseParentImage() {
        setTrackImagePath(this.m_ParentFeed.topLevelParentID().toString());
    }

    public void ensureTrackHasContentType() {
        if (hasContentType()) {
            return;
        }
        TrackMetadataParser.loadMetadataFor(this);
    }

    public float preferredPlaybackSpeed() {
        return getParentFeed().preferredPlaybackSpeed();
    }

    public float playbackVolumeBoost() {
        return getParentFeed().playbackVolumeBoost();
    }

    public boolean belongsTo(Feed feed) {
        Feed parentFeed = getParentFeed();
        while (!parentFeed.equals(feed)) {
            parentFeed = parentFeed.parentFeed();
            if (parentFeed == null) {
                return false;
            }
        }
        return true;
    }
}
