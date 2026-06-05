package mobi.beyondpod.sync;

import java.io.File;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.history.EpisodeHistoryManager;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
public class TrackedChangeEpisode extends TrackedChangeBase {
    private static final int BLOB_CURR_POS = 3;
    private static final int BLOB_EPISODE_URL = 2;
    private static final int BLOB_FEED_URL = 0;
    private static final int BLOB_FILE_NAME = 1;
    private static final int BLOB_MARKED_PLAYED = 6;
    private static final int BLOB_START_POS = 4;
    private static final int BLOB_TOTAL_DURATION = 5;
    private static final String TAG = "TrackedChangeEpisode";
    int _CurrentPosition;
    String _EpisodeUrl;
    String _FeedUrl;
    String _FileName;
    boolean _MarkedPlayed;
    int _PlaybackStartPosition;
    int _TotalDuration;

    public TrackedChangeEpisode(int i, Track track) {
        super(i);
        this._EpisodeUrl = track.getUrl();
        this._CurrentPosition = (int) track.getPlayedTime();
        this._PlaybackStartPosition = this._CurrentPosition;
        this._TotalDuration = (int) track.getTotalTime();
        this._FileName = new File(track.trackPath()).getName();
        this._FeedUrl = track.getParentFeed().getFeedUrl();
        this._MarkedPlayed = track.isPlayed();
    }

    public TrackedChangeEpisode(Long l, long j, int i, int i2, String str) {
        super(l, j, i, i2, str);
        String[] parseBlob = parseBlob();
        for (int i3 = 0; i3 != parseBlob.length; i3++) {
            loadFromBlob(i3, parseBlob[i3]);
        }
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public String messageId() {
        if (this._MessageId == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this._FeedUrl);
            sb.append(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR);
            sb.append(StringUtils.isNullOrEmpty(this._EpisodeUrl) ? this._FileName : this._EpisodeUrl);
            this._MessageId = sb.toString();
        }
        return this._MessageId;
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public String friendlyName() {
        StringBuilder sb = new StringBuilder();
        sb.append("Pos: ");
        sb.append(this._CurrentPosition);
        sb.append(" (");
        sb.append(CoreHelper.formatTimeAsString(this._CurrentPosition));
        sb.append("), Dur: ");
        sb.append(this._TotalDuration);
        sb.append(" (");
        sb.append(CoreHelper.formatTimeAsString(this._TotalDuration));
        sb.append(")");
        sb.append(this._MarkedPlayed ? " - Played" : "");
        sb.append(" (");
        sb.append(StringUtils.isNullOrEmpty(this._EpisodeUrl) ? this._FileName : this._EpisodeUrl);
        sb.append(")");
        return sb.toString();
    }

    public String fileName() {
        return this._FileName;
    }

    public String episodeUrl() {
        return this._EpisodeUrl;
    }

    public int currentPosition() {
        return this._CurrentPosition;
    }

    public int playbackStartPosition() {
        return this._PlaybackStartPosition;
    }

    public int totalDuration() {
        return this._TotalDuration;
    }

    public boolean markedPlayed() {
        return this._MarkedPlayed;
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void updateTo(TrackedChangeBase trackedChangeBase) {
        if (!(trackedChangeBase instanceof TrackedChangeEpisode)) {
            throw new ClassCastException("Trying to update TrackedChangeEpisode from " + trackedChangeBase.getClass().getSimpleName());
        }
        TrackedChangeEpisode trackedChangeEpisode = (TrackedChangeEpisode) trackedChangeBase;
        super.updateTo(trackedChangeBase);
        this._EpisodeUrl = trackedChangeEpisode.episodeUrl();
        this._PlaybackStartPosition = trackedChangeEpisode.playbackStartPosition();
        this._CurrentPosition = trackedChangeEpisode.currentPosition();
        this._TotalDuration = trackedChangeEpisode.totalDuration();
        this._FileName = trackedChangeEpisode.fileName();
        this._MarkedPlayed = trackedChangeEpisode.markedPlayed();
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void applyRemoteChange() {
        if (syncStatus() != 3) {
            return;
        }
        if (!isValid()) {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote change for invalid episode: " + this._FeedUrl + ". Change ignored!", this);
            updateSyncStatusTo(4);
            return;
        }
        int changeType = changeType();
        if (changeType == 15) {
            handleEpisodeUpdated();
            return;
        }
        switch (changeType) {
            case 7:
                handleEpisodeDownloaded();
                return;
            case 8:
                handleEpisodePlayed();
                return;
            case 9:
                handleEpisodeDeleted();
                return;
            default:
                return;
        }
    }

    private void handleEpisodeDownloaded() {
        if (findLocalTrack() != null) {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE DOWNLOADED. Episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
        } else {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE DOWNLOADED. Episode does not exist! Ignoring... Episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
        }
        updateSyncStatusTo(4);
    }

    private void handleEpisodeDeleted() {
        Track findLocalTrack = findLocalTrack();
        if (!ChangeTracker.allowRemoteEpisodeDeletions()) {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE DELETED. Remote Deletions are not allowed! Ingoring deletion of episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
        } else if (findLocalTrack != null) {
            if (findLocalTrack.allowAutoDelete()) {
                findLocalTrack.changeTrackingEnabled = false;
                FeedRepository.deleteTrackSync(findLocalTrack);
                ItemStateHistory.markTracksItemAsRead(findLocalTrack);
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE DELETED. Episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
            } else {
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE DELETED. Local episode is currently 'LOCKED'! Ingoring deletion of episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
            }
        } else {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE DELETED. Episode does not exist! Ignoring... Episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
        }
        updateSyncStatusTo(4);
    }

    private void handleEpisodePlayed() {
        String str;
        Track findLocalTrack = findLocalTrack();
        if (!ChangeTracker.allowRemoteEpisodeModifications()) {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE PLAYED. Remote modifications are not allowed! Ignoring... Episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
        } else if (findLocalTrack != null) {
            long playedTime = findLocalTrack.getPlayedTime();
            long totalTime = findLocalTrack.getTotalTime();
            boolean isPlayed = findLocalTrack.isPlayed();
            long currentPosition = currentPosition();
            long j = (!Configuration.CDSSyncFurthestPlayedPositionOnly() || currentPosition >= playedTime) ? currentPosition : playedTime;
            findLocalTrack.initializePlayedTimes(j, (totalTime != 0 || totalDuration() <= 0) ? totalTime : totalDuration(), this._MarkedPlayed);
            if (j > 0 || this._MarkedPlayed) {
                EpisodeHistoryManager.addEpisodePlayedHistoryEntry(findLocalTrack);
            }
            boolean z = false;
            Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
            if (currentTrack != null && currentTrack == findLocalTrack) {
                if (findLocalTrack.getCurrentPlayState() != 1) {
                    CommandManagerBase.cmdLoadCurrentTrack();
                }
                z = true;
            }
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("   --- APPLY remote EPISODE PLAYED. Episode: ");
            sb.append(findLocalTrack.displayName());
            sb.append(", Play Position: ");
            sb.append(playedTime);
            sb.append(" (");
            sb.append(CoreHelper.formatTimeAsString(playedTime));
            sb.append(") => ");
            sb.append(findLocalTrack.getPlayedTime());
            sb.append(" (");
            sb.append(CoreHelper.formatTimeAsString(findLocalTrack.getPlayedTime()));
            sb.append("), duration: ");
            sb.append(totalTime);
            sb.append(" (");
            sb.append(CoreHelper.formatTimeAsString(totalTime));
            sb.append(") => ");
            sb.append(findLocalTrack.getTotalTime());
            sb.append(" (");
            sb.append(CoreHelper.formatTimeAsString(findLocalTrack.getTotalTime()));
            sb.append("), Played: ");
            sb.append(isPlayed);
            sb.append(" => ");
            sb.append(findLocalTrack.isPlayed());
            sb.append(z ? ", CPT" : "");
            if (j != currentPosition()) {
                str = ", Received pos: " + currentPosition() + " (" + CoreHelper.formatTimeAsString(currentPosition()) + ") was ignored because it was before the current position";
            } else {
                str = "";
            }
            sb.append(str);
            TrackedChangeBase.logSyncEvent(str2, sb.toString(), this);
            if (findLocalTrack.isPlayed()) {
                ItemStateHistory.markTracksItemAsRead(findLocalTrack);
            }
        } else {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE PLAYED. Episode does not exist! Ignoring... Episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
        }
        updateSyncStatusTo(4);
    }

    private void handleEpisodeUpdated() {
        Track findLocalTrack = findLocalTrack();
        if (!ChangeTracker.allowRemoteEpisodeModifications()) {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE UPDATED. Remote modifications are not allowed! Ignoring... Episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
        } else if (findLocalTrack != null) {
            long playedTime = findLocalTrack.getPlayedTime();
            long totalTime = findLocalTrack.getTotalTime();
            boolean isPlayed = findLocalTrack.isPlayed();
            findLocalTrack.initializePlayedTimes(playedTime, totalDuration(), isPlayed);
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE UPDATED. Episode: " + findLocalTrack.displayName() + " duration: " + totalTime + " (" + CoreHelper.formatTimeAsString(totalTime) + ") => " + findLocalTrack.getTotalTime() + " (" + CoreHelper.formatTimeAsString(findLocalTrack.getTotalTime()) + "), Played: " + isPlayed + " => " + findLocalTrack.isPlayed(), this);
        } else {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY remote EPISODE UPDATED. Episode does not exist! Ignoring... Episode:" + this._FeedUrl + " => " + this._EpisodeUrl, this);
        }
        updateSyncStatusTo(4);
    }

    private Track findLocalTrack() {
        if (!StringUtils.isNullOrEmpty(this._EpisodeUrl)) {
            return FeedRepository.getTrackByUrl(episodeUrl());
        }
        return FeedRepository.getLocalTrack(this._FileName);
    }

    protected void loadFromBlob(int i, String str) {
        switch (i) {
            case 0:
                this._FeedUrl = str;
                return;
            case 1:
                this._FileName = str;
                return;
            case 2:
                this._EpisodeUrl = str;
                return;
            case 3:
                this._CurrentPosition = StringUtils.safeParseInt(str, -1);
                return;
            case 4:
                this._PlaybackStartPosition = StringUtils.safeParseInt(str, -1);
                return;
            case 5:
                this._TotalDuration = StringUtils.safeParseInt(str, -1);
                return;
            case 6:
                this._MarkedPlayed = StringUtils.safeParseInt(str, 0) == 1;
                return;
            default:
                return;
        }
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void prepareForSave() {
        String[] strArr = new String[7];
        strArr[0] = this._FeedUrl;
        strArr[1] = this._FileName;
        strArr[2] = this._EpisodeUrl;
        strArr[3] = String.valueOf(this._CurrentPosition);
        strArr[4] = String.valueOf(this._PlaybackStartPosition);
        strArr[5] = String.valueOf(this._TotalDuration);
        strArr[6] = this._MarkedPlayed ? NotificationPreferences.YES : NotificationPreferences.NO;
        saveToBlob(strArr);
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public boolean isValid() {
        return (FeedRepository.getFeedByUrl(this._FeedUrl) == null || findLocalTrack() == null) ? false : true;
    }
}
