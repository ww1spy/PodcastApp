package mobi.beyondpod.rsscore;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.widget.Toast;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategories;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.NetworkCredential;
import mobi.beyondpod.rsscore.helpers.Path;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.dialogs.SelectCategoryDialog;

/* loaded from: classes.dex */
public class Feed {
    private static final int FEED_ALREADY_EXIST = -3;
    private static final int FEED_INVALID_URL = -2;
    private static final int FEED_NULL = -1;
    private static final int FEED_OK = 0;

    @SuppressLint({"SdCardPath"})
    public static String MNT_SDCARD_MOUNT = "/mnt/sdcard/";

    @SuppressLint({"SdCardPath"})
    public static String OLD_SDCARD_MOUNT = "/sdcard/";
    private static final String TAG = "Feed";
    private Boolean _MNT_PATH_EXIST;
    private int _PreferredEnclosureIndex;
    public boolean changeTrackingEnabled;
    public boolean downloadFailed;
    public boolean isTransient;
    private int m_AllowAutoTrackDeletions;
    private FeedAudioSettings m_AudioSettings;
    private FeedCategories m_Category;
    private UUID m_FeedID;
    private boolean m_FeedImageHasChanged;
    private String m_FeedImageUrl;
    private int m_FeedPlayer;
    private int m_FeedType;
    private Uri m_FeedUri;
    private String m_FeedUrl;
    private final CopyOnWriteArrayList<Feed> m_Feeds;
    private boolean m_ForceUniqueNames;
    private boolean m_HasNewContent;
    private int m_IncludeInOneStepDownload;
    private int m_ItemFilter;
    private int m_ItemFingerprintAlgorithm;
    private int m_ItemSortOrder;
    private int m_KeepAtMostPodcasts;
    private String m_LastItemID;
    private Date m_LastModifiedDate;
    private Date m_LastServerModifiedDate;
    private boolean m_LeftTruncateLongTrackNames;
    private int m_MaxNumPodcastsToDownload;
    private TimeSpan m_MaxPodcastAge;
    private boolean m_Modified;
    private String m_Name;
    private int m_NumUnreadItems;
    private final Feed m_ParentFeed;
    private String m_Path;
    private boolean m_RememberPlayedPosition;
    private Long m_StorageRowID;
    private int m_TrackSortOrder;
    private final ConcurrentTrackList m_Tracks;
    private long m_UpdateSize;
    private long m_UpdatedPortion;
    private String m_UserName;
    private int m_getMaxNumGReaderItemsToGet;
    public int numDownloadedEnclosures;
    public int numEnclosuresAvailableForDownload;
    public String transientEpisodeUrl;
    public boolean updateFailed;
    private static final String FEED_S_WAS_ADDED_IN_CATEGORY = CoreHelper.loadResourceString(R.string.feed_s_was_added_in_category);
    private static final String THIS_FEED_ALREADY_EXISTS_IN_CATEGORY = CoreHelper.loadResourceString(R.string.this_feed_already_exists_in_category);
    private static final String THE_URL_OF_THIS_FEED_S_DOES_NOT_APPEAR_TO_BE_VALID = CoreHelper.loadResourceString(R.string.the_url_of_this_feed_s_does_not_appear_to_be_valid);

    /* loaded from: classes.dex */
    public static class FeedAudioSettings {
        private boolean _Modified = false;
        int _VolumeBoost = 0;

        public int getVolumeBoost() {
            return this._VolumeBoost;
        }

        public void setVolumeBoost(int i) {
            this._VolumeBoost = i;
            this._Modified = true;
        }

        public static FeedAudioSettings deserialize(String str) {
            FeedAudioSettings feedAudioSettings = new FeedAudioSettings();
            if (StringUtils.isNullOrEmpty(str)) {
                return feedAudioSettings;
            }
            String[] split = str.split("\\|");
            if (split.length > 0) {
                feedAudioSettings.setVolumeBoost(StringUtils.safeParseInt(split[0], 0));
            }
            feedAudioSettings._Modified = false;
            return feedAudioSettings;
        }

        public boolean isModified() {
            return this._Modified;
        }

        public void setIsModified(boolean z) {
            this._Modified = z;
        }

        public String serialize() {
            return Integer.toString(getVolumeBoost()) + MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR;
        }
    }

    public Feed(File file, Feed feed) {
        this(feed);
        this.m_Path = file.getPath();
    }

    public Feed(UUID uuid, Feed feed, String str, String str2, int i) {
        this(feed);
        this.m_FeedID = uuid;
        this.m_Name = str;
        this.m_FeedUrl = str2;
        this.m_FeedType = i;
    }

    public Feed(UUID uuid, Feed feed) {
        this(feed);
        this.m_FeedID = uuid;
    }

    private Feed(Feed feed) {
        this.m_Feeds = new CopyOnWriteArrayList<>();
        this.m_Tracks = new ConcurrentTrackList();
        this.m_AllowAutoTrackDeletions = 2;
        this.m_RememberPlayedPosition = true;
        this.m_Category = new FeedCategories();
        this.m_FeedID = null;
        this.m_FeedType = 0;
        this.m_ForceUniqueNames = false;
        this.m_LeftTruncateLongTrackNames = false;
        this.m_HasNewContent = false;
        this.m_NumUnreadItems = 0;
        this.m_IncludeInOneStepDownload = 1;
        this.m_LastModifiedDate = null;
        this.m_LastServerModifiedDate = null;
        this.m_LastItemID = null;
        this.m_ItemFingerprintAlgorithm = 1;
        this.m_Modified = true;
        this.m_FeedImageHasChanged = false;
        this.m_TrackSortOrder = -1;
        this._PreferredEnclosureIndex = 0;
        this.m_ItemSortOrder = -1;
        this.m_FeedPlayer = -1;
        this.m_getMaxNumGReaderItemsToGet = 0;
        this.m_AudioSettings = new FeedAudioSettings();
        this.downloadFailed = false;
        this.updateFailed = false;
        this.numDownloadedEnclosures = 0;
        this.numEnclosuresAvailableForDownload = 0;
        this.changeTrackingEnabled = true;
        this.isTransient = false;
        this.m_ItemFilter = 0;
        this._MNT_PATH_EXIST = null;
        this.m_ParentFeed = feed;
    }

    public Long rowID() {
        return this.m_StorageRowID;
    }

    public void initRowID(Long l) {
        this.m_StorageRowID = l;
    }

    public TimeSpan getMaximumPodcastAge() {
        return this.m_MaxPodcastAge != null ? this.m_MaxPodcastAge : Configuration.getGlobalDefaultMaximumPodcastAge();
    }

    public void setMaximumPodcastAge(TimeSpan timeSpan) {
        if (this.m_MaxPodcastAge == null || timeSpan != this.m_MaxPodcastAge) {
            this.m_MaxPodcastAge = timeSpan;
            markModified();
        }
    }

    public int getKeepAtMostPodcasts() {
        return this.m_KeepAtMostPodcasts;
    }

    public void setKeepAtMostPodcasts(int i) {
        if (i != this.m_KeepAtMostPodcasts) {
            this.m_KeepAtMostPodcasts = i;
            markModified();
        }
    }

    public UUID id() {
        if (this.m_FeedID == null) {
            this.m_FeedID = UUID.randomUUID();
            markModified();
        }
        return this.m_FeedID;
    }

    public UUID topLevelParentID() {
        if (isSubFeed()) {
            return this.m_ParentFeed.topLevelParentID();
        }
        return id();
    }

    public ConcurrentTrackList tracks() {
        return this.m_Tracks;
    }

    public List<Feed> subFeeds() {
        return this.m_Feeds;
    }

    public TrackList tracksAndSubTracks() {
        TrackList trackList = new TrackList();
        if (tracks().size() > 0) {
            tracks().appendTo(trackList);
        } else {
            Iterator<Feed> it = subFeeds().iterator();
            while (it.hasNext()) {
                trackList.addAll(it.next().tracksAndSubTracks());
            }
            Collections.sort(trackList, new TrackSorter(getLocalOrInheritedTrackSortOrder()));
        }
        return trackList;
    }

    public Feed parentFeed() {
        return this.m_ParentFeed;
    }

    public String getFeedPath() {
        if (StringUtils.isNullOrEmpty(this.m_Path)) {
            return this.m_Path;
        }
        return this.m_Path;
    }

    public void setFeedPath(String str) {
        if (StringUtils.equals(this.m_Path, str)) {
            return;
        }
        this.m_Path = str;
        markModified();
    }

    public String getName() {
        if (this.m_Name == null) {
            return getFeedPath() != null ? Path.getFileName(getFeedPath()).replace(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, " ") : "";
        }
        return this.m_Name;
    }

    public void setName(String str) {
        if (StringUtils.equals(this.m_Name, str)) {
            return;
        }
        this.m_Name = str;
        markModified();
    }

    public boolean downloadPathExists() {
        String feedPath = getFeedPath();
        return feedPath != null && FileUtils.directoryExists(feedPath);
    }

    public boolean canDeleteTracks() {
        int allowAutoTrackDeletions = getAllowAutoTrackDeletions();
        if (allowAutoTrackDeletions == 0) {
            return true;
        }
        if (allowAutoTrackDeletions == 1) {
            return false;
        }
        if (allowAutoTrackDeletions != 2 || this.m_ParentFeed == null) {
            return true;
        }
        return this.m_ParentFeed.canDeleteTracks();
    }

    public boolean shouldRememberPlayedPosition() {
        if (isSubFeed()) {
            return this.m_ParentFeed.shouldRememberPlayedPosition();
        }
        return getShouldRememberPlayedPosition();
    }

    public String getFeedUrl() {
        return this.m_FeedUrl;
    }

    public void setFeedUrl(String str) {
        if (StringUtils.equals(this.m_FeedUrl, str)) {
            return;
        }
        markModified();
        this.m_FeedUrl = str;
        this.m_FeedUri = null;
    }

    public Uri getFeedUri() {
        if (this.m_FeedUri == null) {
            this.m_FeedUri = CoreHelper.safeCreateUri(this.m_FeedUrl);
        }
        return this.m_FeedUri;
    }

    public String getFeedImageUrl() {
        return this.m_FeedImageUrl;
    }

    public void setFeedImageUrl(String str) {
        this.m_FeedImageHasChanged = false;
        if (StringUtils.equals(this.m_FeedImageUrl, str)) {
            return;
        }
        markModified();
        if (!StringUtils.isNullOrEmpty(this.m_FeedImageUrl)) {
            this.m_FeedImageHasChanged = true;
        }
        this.m_FeedImageUrl = str;
    }

    public boolean hasFeedImageChanged() {
        return this.m_FeedImageHasChanged;
    }

    public int getAllowAutoTrackDeletions() {
        if (equals(FeedRepository.getRootFeed())) {
            this.m_AllowAutoTrackDeletions = !Configuration.getAllowAutoTrackDeletions() ? 1 : 0;
        }
        return this.m_AllowAutoTrackDeletions;
    }

    public void setAllowAutoTrackDeletions(int i) {
        this.m_AllowAutoTrackDeletions = i;
        markModified();
    }

    public boolean getShouldRememberPlayedPosition() {
        return this.m_RememberPlayedPosition;
    }

    public void setShouldRememberPlayedPosition(boolean z) {
        this.m_RememberPlayedPosition = z;
        markModified();
    }

    public boolean getForceUniqueTrackNames() {
        return this.m_ForceUniqueNames;
    }

    public void setForceUniqueTrackNames(boolean z) {
        this.m_ForceUniqueNames = z;
        markModified();
    }

    public boolean getLeftTruncateLongTrackNames() {
        return this.m_LeftTruncateLongTrackNames;
    }

    public void setLeftTruncateLongTrackNames(boolean z) {
        this.m_LeftTruncateLongTrackNames = z;
        markModified();
    }

    public boolean isModified() {
        return this.m_Modified || getCategories().getIsModified() || getAudioSettings().isModified();
    }

    public void setIsModified(boolean z) {
        this.m_Modified = z;
        getCategories().setIsModified(z);
        getAudioSettings().setIsModified(z);
    }

    public Date getLastModifiedDate() {
        return this.m_LastModifiedDate;
    }

    public void setLastModifiedDate(Date date) {
        if (this.m_LastModifiedDate != date) {
            markModified();
            this.m_LastModifiedDate = date;
        }
    }

    public String getLastItemID() {
        return this.m_LastItemID;
    }

    public void setLastItemID(String str) {
        if (StringUtils.equals(this.m_LastItemID, str)) {
            return;
        }
        markModified();
        this.m_LastItemID = str;
    }

    public Date getLastServerModifiedDate() {
        return this.m_LastServerModifiedDate;
    }

    public void setLastServerModifiedDate(Date date) {
        if (this.m_LastServerModifiedDate != date) {
            markModified();
            this.m_LastServerModifiedDate = date;
        }
    }

    public boolean allowsEnclosures() {
        return !StringUtils.isNullOrEmpty(getFeedPath());
    }

    public boolean hasUrl() {
        return !StringUtils.isNullOrEmpty(getFeedUrl());
    }

    public boolean hasUri() {
        return hasUrl() && getFeedUri() != null;
    }

    public int getPreferredEnclosureIndex() {
        return this._PreferredEnclosureIndex;
    }

    public void setPreferredEnclosureIndex(int i) {
        if (this._PreferredEnclosureIndex != i) {
            markModified();
            this._PreferredEnclosureIndex = i;
        }
    }

    public int getType() {
        if (this.m_FeedType == 4 || this.m_FeedType == 5 || this.m_FeedType == 6) {
            return this.m_FeedType;
        }
        if (hasUrl() && allowsEnclosures()) {
            return 3;
        }
        return !hasUrl() ? 1 : 2;
    }

    public void setType(int i) {
        if (this.m_FeedType != i) {
            markModified();
            this.m_FeedType = i;
        }
    }

    public boolean isGReaderFeed() {
        return getType() == 5;
    }

    public boolean hasNewContent() {
        return this.m_HasNewContent;
    }

    public void setHasNewContent(boolean z) {
        if (this.m_HasNewContent != z) {
            this.m_HasNewContent = z;
            markModified();
        }
    }

    public boolean hasUnreadItems() {
        return this.m_NumUnreadItems > 0;
    }

    public boolean mayHaveUnreadItems() {
        return !hasUri() || hasUnreadItems() || getLastServerModifiedDate() == null;
    }

    public void setNumUnreadItems(int i) {
        if (this.m_NumUnreadItems != i) {
            this.m_NumUnreadItems = i;
            markModified();
        }
    }

    public int numUnreadItems() {
        return this.m_NumUnreadItems;
    }

    public FeedCategories getCategories() {
        if (this.m_Category.getIsUnassigned() && parentFeed() != null && parentFeed() != FeedRepository.getRootFeed()) {
            return parentFeed().getCategories();
        }
        return this.m_Category;
    }

    public void setCategories(FeedCategories feedCategories) {
        if (this.m_Category != feedCategories) {
            this.m_Category = feedCategories;
            markModified();
        }
    }

    public int getPodcastDownloadAction() {
        return this.m_IncludeInOneStepDownload;
    }

    public void setPodcastDownloadAction(int i) {
        if (this.m_IncludeInOneStepDownload != i) {
            this.m_IncludeInOneStepDownload = i;
            markModified();
        }
    }

    public int getForceFeedItemSort() {
        return this.m_ItemSortOrder;
    }

    public void setForceFeedItemSort(int i) {
        if (i == 0) {
            i = -1;
        }
        if (i == 1) {
            i = 2;
        }
        if (this.m_ItemSortOrder != i) {
            this.m_ItemSortOrder = i;
            markModified();
        }
    }

    public int getMaxNumberPodcastToDownload() {
        return this.m_MaxNumPodcastsToDownload;
    }

    public void setMaxNumberPodcastsToDownload(int i) {
        if (i != this.m_MaxNumPodcastsToDownload) {
            this.m_MaxNumPodcastsToDownload = i;
            markModified();
        }
    }

    public int getMaxNumGReaderItemsToGet() {
        return this.m_getMaxNumGReaderItemsToGet;
    }

    public void setMaxNumGReaderItemsToGet(int i) {
        this.m_getMaxNumGReaderItemsToGet = i;
        markModified();
    }

    public FeedAudioSettings getAudioSettings() {
        return this.m_AudioSettings;
    }

    public void setAudioSettings(FeedAudioSettings feedAudioSettings) {
        this.m_AudioSettings = feedAudioSettings;
    }

    public int getItemFingerprintAlgorithm() {
        return this.m_ItemFingerprintAlgorithm;
    }

    public void setItemFingerprintAlgorithm(int i) {
        if (i != this.m_ItemFingerprintAlgorithm) {
            this.m_ItemFingerprintAlgorithm = i;
            markModified();
        }
    }

    public int getTrackSortOrder() {
        if (this.m_TrackSortOrder == -1) {
            return Configuration.getPodcastsSortOrder();
        }
        return this.m_TrackSortOrder;
    }

    public int getLocalOrInheritedTrackSortOrder() {
        Feed feed = this;
        while (feed.m_TrackSortOrder == -1) {
            feed = feed.parentFeed();
            if (feed == null) {
                return Configuration.getPodcastsSortOrder();
            }
        }
        return feed.m_TrackSortOrder;
    }

    public void setLocalOrInheritedTrackSortOrder(int i) {
        Feed feed = this;
        while (feed.isSubFeed()) {
            feed = feed.parentFeed();
        }
        feed.setTrackSortOrder(i);
    }

    public void setTrackSortOrder(int i) {
        if (this.m_TrackSortOrder != i) {
            this.m_TrackSortOrder = i;
            markModified();
        }
    }

    public int getFeedPlayer() {
        return this.m_FeedPlayer;
    }

    public void setFeedPlayer(int i) {
        if (this.m_FeedPlayer != i) {
            this.m_FeedPlayer = i;
            markModified();
        }
    }

    public float preferredPlaybackSpeed() {
        if (isSubFeed()) {
            return this.m_ParentFeed.preferredPlaybackSpeed();
        }
        int feedPlayer = getFeedPlayer();
        if (feedPlayer >= 30 && feedPlayer <= 300) {
            return feedPlayer / 100.0f;
        }
        if (Configuration.useAudioPluginForConfiguredFeedsOnly()) {
            return 1.0f;
        }
        return Configuration.defaultPlaybackSpeed();
    }

    public float playbackVolumeBoost() {
        if (isSubFeed()) {
            return this.m_ParentFeed.playbackVolumeBoost();
        }
        if (getAudioSettings() == null) {
            return 0.0f;
        }
        return getAudioSettings().getVolumeBoost();
    }

    public boolean isSubFeed() {
        return !(parentFeed() == null || parentFeed().parentFeed() == null) || equals(FeedRepository.getGoUpPlaceholder());
    }

    public boolean canNavigateUp() {
        return parentFeed() != null;
    }

    public long getUpdateSize() {
        return this.m_UpdateSize;
    }

    public void setUpdateSize(long j) {
        this.m_UpdateSize = j;
    }

    public long getUpdatedPortion() {
        return this.m_UpdatedPortion;
    }

    public void setUpdatedPortion(long j) {
        this.m_UpdatedPortion = j;
    }

    public int updatePercent() {
        if (getUpdatedPortion() < 0 || getUpdateSize() < 0 || getUpdateSize() < getUpdatedPortion()) {
            return 0;
        }
        return (int) ((((float) getUpdatedPortion()) / ((float) getUpdateSize())) * 100.0f);
    }

    public String getUserName() {
        return this.m_UserName;
    }

    public void setUserName(String str) {
        if (StringUtils.equals(this.m_UserName, str)) {
            return;
        }
        this.m_UserName = str;
        markModified();
    }

    public String getPassword() {
        return Configuration.getFeedPrivateData(id());
    }

    public void setPassword(String str) {
        if (StringUtils.equals(getPassword(), str)) {
            return;
        }
        Configuration.storeFeedPrivateData(id(), str);
    }

    public NetworkCredential credentials() {
        if (StringUtils.isNullOrEmpty(getUserName()) || StringUtils.isNullOrEmpty(getPassword())) {
            return null;
        }
        return new NetworkCredential(getUserName(), getPassword());
    }

    public int getItemFilter() {
        return this.m_ItemFilter;
    }

    public void setItemFilter(int i) {
        this.m_ItemFilter = i;
    }

    public String getRawFeedPath() {
        return this.m_Path;
    }

    public String toString() {
        return getName();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Feed)) {
            obj = null;
        }
        Feed feed = (Feed) obj;
        if (feed == null) {
            return false;
        }
        if (id() != null) {
            return id().equals(feed.id());
        }
        return id() == feed.id();
    }

    public int hashCode() {
        return this.m_FeedID.hashCode();
    }

    private void markModified() {
        this.m_Modified = true;
        publishFeedChangedEvent();
    }

    public void touch() {
        markModified();
    }

    private void publishFeedChangedEvent() {
        FeedRepository.notifyFeedChanged(this);
    }

    public boolean hasPodcasts() {
        return allowsEnclosures() && tracks().size() > 0;
    }

    public void clearTracksAndSubFeeds() {
        FeedRepository.removeFromTrackDictionary(tracksAndSubTracks());
        subFeeds().clear();
    }

    public void updateNameIfDefault(String str) {
        if ((StringUtils.equalsIgnoreCase(getName(), getFeedUrl()) || StringUtils.isNullOrEmpty(getName())) && !StringUtils.isNullOrEmpty(str)) {
            setName(str);
            patchGeneratedFeedPath();
        }
    }

    public boolean ensureFeedHasDownloadPath() {
        if (FileUtils.directoryExists(getFeedPath())) {
            return true;
        }
        if (!FeedRepository.getRootFeed().downloadPathExists()) {
            return false;
        }
        try {
            String makeValidFolderName = makeValidFolderName(FeedRepository.getRootPath(), getName());
            if (!StringUtils.isNullOrEmpty(getFeedPath())) {
                String name = new File(getFeedPath()).getName();
                if (!StringUtils.isNullOrEmpty(name)) {
                    makeValidFolderName = makeValidFolderName(FeedRepository.getRootPath(), name);
                    CoreHelper.writeTraceEntry(TAG, "Found feed with an invalid download path, but was able to patch it to:" + makeValidFolderName);
                }
            }
            FileUtils.createDirectory(makeValidFolderName);
            setFeedPath(makeValidFolderName);
            tracks().ensureTrackPathMatchesParent();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean patchGeneratedFeedPath() {
        if (!FileUtils.directoryExists(getFeedPath())) {
            return false;
        }
        try {
            String makeValidFolderName = makeValidFolderName(FeedRepository.getRootPath(), getName());
            if (!FileUtils.renameTo(getFeedPath(), makeValidFolderName)) {
                return false;
            }
            setFeedPath(makeValidFolderName);
            return true;
        } catch (Throwable th) {
            CoreHelper.logException(TAG, "failed to patch feed download path for: " + getFeedPath() + "! reason: ", th);
            return false;
        }
    }

    public void patchFeedPathForCurrentRoot(boolean z) {
        if (!hasUrl() || getFeedPath() == null) {
            return;
        }
        String patchRootPath = FeedRepository.patchRootPath(getFeedPath());
        if (z || FileUtils.directoryExists(patchRootPath)) {
            CoreHelper.writeTraceEntry(TAG, "Patching feed path from:" + getFeedPath() + " => " + patchRootPath);
            setFeedPath(patchRootPath);
        }
    }

    public void patchFeedPathForMntRoot() {
        if (this._MNT_PATH_EXIST == null) {
            this._MNT_PATH_EXIST = Boolean.valueOf(Configuration.enclosureDownloadRoot().startsWith(MNT_SDCARD_MOUNT));
        }
        if (this._MNT_PATH_EXIST.booleanValue() && hasUrl() && this.m_Path != null && this.m_Path.startsWith(OLD_SDCARD_MOUNT)) {
            CoreHelper.writeTraceEntry(TAG, "Patched old sdcard mount for feed: " + this.m_Path);
            setFeedPath(MNT_SDCARD_MOUNT + this.m_Path.substring(OLD_SDCARD_MOUNT.length()));
        }
    }

    public static String makeValidFolderName(String str, String str2) {
        String trim = StringUtils.isNullOrEmpty(str2) ? "" : str2.replaceAll("[^a-zA-Z0-9 - ]", "").trim();
        if (trim.length() > 30) {
            trim = trim.substring(0, 30);
        }
        if (trim.length() < 3) {
            trim = "Feed_" + Long.toString(new Date().getTime());
        }
        String combine = Path.combine(str, trim.trim());
        if (!FileUtils.directoryExists(combine) || !FeedRepository.isDownloadFolderInUse(combine)) {
            return combine;
        }
        return combine + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + Long.toString(new Date().getTime());
    }

    public static Feed createAndAddFeedWithDefaults(String str, String str2, String str3) {
        Feed feed = new Feed(UUID.randomUUID(), FeedRepository.getRootFeed());
        feed.setFeedUrl(str);
        feed.setName(str2);
        feed.setForceUniqueTrackNames(true);
        feed.setPodcastDownloadAction(Configuration.getGlobalDefaultPodcastDownloadAction());
        feed.setMaxNumberPodcastsToDownload(Configuration.getGlobalDefaultNumberPodcastsToDownload());
        feed.setKeepAtMostPodcasts(Configuration.getGlobalDefaultKeepAtMostPodcasts());
        feed.setMaximumPodcastAge(Configuration.getGlobalDefaultMaximumPodcastAge());
        feed.setItemFingerprintAlgorithm(-1);
        if (!StringUtils.isNullOrEmpty(str3)) {
            feed.setFeedImageUrl(str3);
        }
        if (feed.getPodcastDownloadAction() == 5 || feed.getPodcastDownloadAction() == 4) {
            feed.setForceFeedItemSort(2);
            feed.setTrackSortOrder(2);
        }
        feed.ensureFeedPathIsUnique();
        FeedCategory activeFeedCategory = Configuration.getActiveFeedCategory();
        if (activeFeedCategory != null && !CategoryManager.CategoryHome.equals(activeFeedCategory) && !CategoryManager.CategoryNull.equals(activeFeedCategory)) {
            feed.getCategories().setPrimary(activeFeedCategory);
        }
        FeedRepository.getRootFeed().subFeeds().add(feed);
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(6, feed));
        return feed;
    }

    public void ensureFeedPathIsUnique() {
        if (!StringUtils.isNullOrEmpty(getFeedPath()) || StringUtils.isNullOrEmpty(getName())) {
            return;
        }
        String makeValidFolderName = makeValidFolderName(FeedRepository.getRootPath(), getName());
        Iterator<Feed> it = FeedRepository.getRootFeed().subFeeds().iterator();
        while (it.hasNext()) {
            if (StringUtils.equalsIgnoreCase(it.next().getFeedPath(), makeValidFolderName)) {
                makeValidFolderName = makeValidFolderName.concat(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + Long.toString(new Date().getTime()));
            }
        }
        if (FileUtils.createDirectory(makeValidFolderName)) {
            setFeedPath(makeValidFolderName);
        }
    }

    public static void subscribeToFeedAndPromptForCategory(final Context context, final Feed feed, String str, final boolean z) {
        if (!CategoryManager.hasUserCategories()) {
            addSubscriptionInCategory(context, feed, CategoryManager.Unassigned, z);
        } else {
            new SelectCategoryDialog(context, new SelectCategoryDialog.OnCategorySelectedListener() { // from class: mobi.beyondpod.rsscore.Feed.1
                @Override // mobi.beyondpod.ui.dialogs.SelectCategoryDialog.OnCategorySelectedListener
                public void onCategorySelected(FeedCategory feedCategory) {
                    if (feedCategory == null) {
                        return;
                    }
                    Feed.addSubscriptionInCategory(context, feed, feedCategory, z);
                }
            }).createDialog(str).show();
        }
    }

    public static void addSubscriptionInCategory(Context context, Feed feed, FeedCategory feedCategory, boolean z) {
        FeedList feedList = new FeedList();
        feedList.add(feed);
        FeedList addSubscriptionsInCategory = addSubscriptionsInCategory(feedList, feedCategory);
        if (addSubscriptionsInCategory.size() == 1) {
            if (CategoryManager.hasUserCategories() && z) {
                Toast.makeText(context, String.format(FEED_S_WAS_ADDED_IN_CATEGORY, feed.getName(), addSubscriptionsInCategory.get(0).getCategories().getPrimary().name()), 1).show();
                return;
            }
            return;
        }
        switch (checkIfFeedCanBeAdded(feed)) {
            case -3:
                Feed feedByUrl = FeedRepository.getFeedByUrl(feed.getFeedUrl());
                if (feedByUrl != null) {
                    Toast.makeText(context, String.format(THIS_FEED_ALREADY_EXISTS_IN_CATEGORY, feedByUrl.getCategories().getPrimary().name()), 1).show();
                    return;
                }
                return;
            case -2:
                Toast.makeText(context, String.format(THE_URL_OF_THIS_FEED_S_DOES_NOT_APPEAR_TO_BE_VALID, feed.getFeedUrl()), 1).show();
                return;
            case -1:
                Toast.makeText(context, "NULL feed", 1).show();
                return;
            default:
                return;
        }
    }

    public static FeedList addSubscriptionsInCategory(FeedList feedList, FeedCategory feedCategory) {
        FeedCategory feedCategory2;
        FeedList feedList2 = new FeedList();
        Iterator<Feed> it = feedList.iterator();
        while (it.hasNext()) {
            Feed next = it.next();
            if (checkIfFeedCanBeAdded(next) == 0) {
                Feed createAndAddFeedWithDefaults = createAndAddFeedWithDefaults(next.getFeedUrl(), next.getName(), next.getFeedImageUrl());
                if (AggregatorLoginHelper.isLoggedIn() && next.getType() == 5) {
                    createAndAddFeedWithDefaults.setType(5);
                    createAndAddFeedWithDefaults.setMaxNumGReaderItemsToGet(Configuration.getGlobalDefaultMaximumGReaderItemsToGet());
                }
                if (next.getType() == 6) {
                    createAndAddFeedWithDefaults.setForceUniqueTrackNames(next.getForceUniqueTrackNames());
                    if (!StringUtils.isNullOrEmpty(next.getFeedImageUrl())) {
                        createAndAddFeedWithDefaults.setFeedImageUrl(next.getFeedImageUrl());
                    }
                    createAndAddFeedWithDefaults.setTrackSortOrder(next.getTrackSortOrder());
                    createAndAddFeedWithDefaults.setAllowAutoTrackDeletions(next.getAllowAutoTrackDeletions());
                }
                FeedCategory activeFeedCategory = Configuration.getActiveFeedCategory();
                String str = null;
                if (feedCategory != null) {
                    str = feedCategory.name();
                } else if (next.parentFeed() != null) {
                    str = next.parentFeed().getName();
                }
                if (StringUtils.isNullOrEmpty(str) || (feedCategory2 = CategoryManager.getCategoryByValue(str)) == CategoryManager.CategoryNull) {
                    feedCategory2 = activeFeedCategory;
                }
                createAndAddFeedWithDefaults.getCategories().setPrimary(feedCategory2);
                feedList2.add(createAndAddFeedWithDefaults);
            }
        }
        FeedRepository.saveRepositoryAsync();
        StartupContentBuilder.backupRepositoriesAsync();
        return feedList2;
    }

    public static Feed createTransientFeed(String str, String str2) {
        Feed feed = new Feed(UUID.randomUUID(), FeedRepository.getRootFeed());
        feed.isTransient = true;
        feed.setFeedUrl(str);
        feed.setName(str2);
        feed.setForceUniqueTrackNames(true);
        feed.setPodcastDownloadAction(2);
        feed.setMaxNumberPodcastsToDownload(0);
        feed.setKeepAtMostPodcasts(0);
        feed.setMaximumPodcastAge(Configuration.getGlobalDefaultMaximumPodcastAge());
        feed.setForceFeedItemSort(3);
        feed.setTrackSortOrder(3);
        return feed;
    }

    private static int checkIfFeedCanBeAdded(Feed feed) {
        if (feed == null) {
            return -1;
        }
        if (CoreHelper.isUrlValid(feed.getFeedUrl(), false)) {
            return FeedRepository.getFeedByUrl(feed.getFeedUrl()) != null ? -3 : 0;
        }
        return -2;
    }
}
