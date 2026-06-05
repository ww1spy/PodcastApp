package mobi.beyondpod.rsscore.repository;

import android.os.Handler;
import android.os.Looper;
import java.io.File;
import java.util.Date;
import java.util.regex.Pattern;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackDictionary;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.schedulercore.ScheduledTask;

/* loaded from: classes.dex */
public class RepositoryPersistence {
    private static final String TAG = "RepositoryPersistence";
    private static final Pattern _AlbumArtPattern;
    private static Runnable _RepositorySaver;
    private static Runnable _RepositoryUnloader;
    private static IRepositoryStorage _Storage = new SQLRepositoryStorage();
    private static RepositoryWorker _Worker = new RepositoryWorker();

    static {
        _Worker.setName("Repository Worker Thread");
        _Worker.setPriority(1);
        _Worker.start();
        while (!_Worker._IsReady) {
            try {
                Thread.sleep(10L);
            } catch (InterruptedException unused) {
            }
        }
        _RepositorySaver = new Runnable() { // from class: mobi.beyondpod.rsscore.repository.RepositoryPersistence.1
            @Override // java.lang.Runnable
            public void run() {
                RepositoryPersistence.saveRepositorySync();
            }
        };
        _RepositoryUnloader = new Runnable() { // from class: mobi.beyondpod.rsscore.repository.RepositoryPersistence.2
            @Override // java.lang.Runnable
            public void run() {
                FeedRepository.unloadRepository();
            }
        };
        _AlbumArtPattern = Pattern.compile("AlbumArt\\S*jpg|folder.jpg|thumbs.db|desktop.ini", 2);
    }

    public static Handler repositoryHandler() {
        return _Worker.workerHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void saveRepositorySync() {
        if (!canSaveRepository()) {
            CoreHelper.writeTraceEntry(TAG, "Trying to save the repository but the repository is in invalid state: " + FeedRepository.repositoryLoadState() + ". Save Ignored!");
            return;
        }
        _Storage.saveRepository();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void saveRepositoryAsync() {
        if (!canSaveRepository()) {
            CoreHelper.writeTraceEntry(TAG, "Trying to save the repository but the repository is in invalid state: " + FeedRepository.repositoryLoadState() + ". Save Ignored!");
            return;
        }
        repositoryHandler().removeCallbacks(_RepositorySaver);
        repositoryHandler().post(_RepositorySaver);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void saveAndUnloadRepositoryAsync() {
        if (!canSaveRepository()) {
            CoreHelper.writeTraceEntry(TAG, "Trying to save the repository but the repository is in invalid state: " + FeedRepository.repositoryLoadState() + ". Save Ignored!");
            return;
        }
        repositoryHandler().removeCallbacks(_RepositorySaver);
        repositoryHandler().removeCallbacks(_RepositoryUnloader);
        repositoryHandler().post(_RepositorySaver);
        repositoryHandler().post(_RepositoryUnloader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void autoSaveRepository() {
        if (System.currentTimeMillis() - FeedRepository._LastSavedTime > 240000) {
            saveRepositoryAsync();
        }
    }

    private static boolean isRepositoryLoadingOrSaving() {
        return FeedRepository.repositoryLoadState() == 0 || FeedRepository.repositoryLoadState() == 1 || FeedRepository.repositoryLoadState() == 3;
    }

    private static boolean canSaveRepository() {
        return FeedRepository.repositoryLoadState() == 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean loadRepository() {
        if (isRepositoryLoadingOrSaving()) {
            return false;
        }
        repositoryHandler().post(new Runnable() { // from class: mobi.beyondpod.rsscore.repository.RepositoryPersistence.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        RepositoryPersistence._Storage.loadRepository();
                    } catch (Exception e) {
                        CoreHelper.writeTraceEntry(RepositoryPersistence.TAG, e.getMessage());
                    }
                } finally {
                    FeedRepository.onRepositoryLoadComplete();
                }
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void buildFeedList(Feed feed, TrackDictionary trackDictionary) {
        feed.subFeeds().clear();
        if (StringUtils.isNullOrEmpty(feed.getFeedPath())) {
            return;
        }
        File file = new File(feed.getFeedPath());
        if (file.exists()) {
            if (!feed.hasUrl()) {
                try {
                    for (File file2 : file.listFiles()) {
                        if (file2.isDirectory() && !file2.isHidden() && !file2.getName().startsWith(".")) {
                            Feed feed2 = new Feed(file2, feed);
                            buildFeedList(feed2, trackDictionary);
                            feed.subFeeds().add(feed2);
                            if (!feed.hasUrl() && feed.getLastModifiedDate() != null && feed2.getLastModifiedDate() != null && feed.getLastModifiedDate().compareTo(feed2.getLastModifiedDate()) < 0) {
                                feed.setLastModifiedDate(feed2.getLastModifiedDate());
                            }
                        }
                    }
                } catch (Throwable th) {
                    CoreHelper.writeLogEntry(TAG, "Error loading feeds! " + th.getMessage());
                }
            }
            try {
                loadFeedTracks(feed, trackDictionary);
            } catch (Throwable th2) {
                CoreHelper.logException(TAG, String.format("Error loading podcasts for feed: %s.", feed.getName()), th2);
            }
        }
    }

    private static void loadFeedTracks(Feed feed, TrackDictionary trackDictionary) {
        feed.tracks().clear();
        if (StringUtils.isNullOrEmpty(feed.getFeedPath())) {
            return;
        }
        File file = new File(feed.getFeedPath());
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isFile() && !file2.isHidden() && file2.length() != 0 && !isOnIgnoreList(file2.getName())) {
                        try {
                            if (!FeedRepository.containsTrackKey(file2.getPath())) {
                                Track track = new Track(file2, feed);
                                if (!Configuration.getHideUnsupportedFileTypes() || track.isSupportedFileType()) {
                                    addChildTrack(feed, track, false);
                                    Track track2 = trackDictionary.get(track.trackPath());
                                    if (track2 == null && track.trackPath().startsWith(Feed.MNT_SDCARD_MOUNT) && (track2 = trackDictionary.get(track.trackPath().substring(4))) != null) {
                                        track2.initRowID(null);
                                    }
                                    if (track2 != null) {
                                        track.initRowID(track2.rowID());
                                        track.setName(track2.getName());
                                        track.setContentMimeType(track2.contentMimeType());
                                        track.initializePlayedTimes(track2.getPlayedTime(), track2.getTotalTime(), track2.isPlayed());
                                        track.setProtocol(track2.getProtocol());
                                        track.setRssItemID(track2.rssItemID());
                                        track.setTrackDescription(track2.trackDescription());
                                        track.setTrackImagePath(track2.trackImagePath());
                                        track.setTrackPostTitle(track2.trackPostTitle());
                                        track.setTrackPostUrl(track2.trackPostUrl());
                                        track.setLocked(track2.locked());
                                        if (track2.hasUrl()) {
                                            track.setDownloadedPortion(track.getSizeOnDisk());
                                            track.setDownloadSize(track2.getDownloadSize() > 0 ? track2.getDownloadSize() : track.getSizeOnDisk());
                                            track.setUrl(track2.getUrl());
                                            if (!track.isFullyDownloaded()) {
                                                track.setDownloadStatus(4);
                                            }
                                            if (track2.getLastModifiedDate() != null) {
                                                track.setLastModifiedDate(track2.getLastModifiedDate());
                                            }
                                        }
                                        if (track.rowID() != null) {
                                            track.setIsModified(false);
                                        }
                                    }
                                    if (!feed.hasUrl() && track.getLastModifiedDate() != null && (feed.getLastModifiedDate() == null || feed.getLastModifiedDate().compareTo(track.getLastModifiedDate()) < 0)) {
                                        feed.setLastModifiedDate(track.getLastModifiedDate());
                                    }
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            if (feed.hasUrl() || feed.getLastModifiedDate() != null) {
                return;
            }
            feed.setLastModifiedDate(new Date(file.lastModified()));
        }
    }

    private static boolean isOnIgnoreList(String str) {
        return _AlbumArtPattern.matcher(str).find();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addChildTrack(Feed feed, Track track, boolean z) {
        feed.tracks().add(track);
        if (FeedRepository.containsTrackKey(track.trackPath())) {
            return;
        }
        FeedRepository.addTrack(track);
        if (z) {
            FeedRepository.onTrackAdded(track);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveRepositoryAsOpml(java.lang.String r8) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.RepositoryPersistence.saveRepositoryAsOpml(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class RepositoryWorker extends Thread {
        private volatile boolean _IsReady;
        private Handler workerHandler;

        private RepositoryWorker() {
            this._IsReady = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            this.workerHandler = new Handler();
            this._IsReady = true;
            Looper.loop();
        }
    }

    public static Date longTermRepositoryBackupDate() {
        try {
            File file = new File(Configuration.trackStateBackupPath());
            if (file.exists()) {
                return new Date(file.lastModified());
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void deleteRepositoryFiles() {
        _Storage.deleteRepositoryFiles();
    }

    public static void deleteFeed(Feed feed) {
        _Storage.deleteFeed(feed);
    }

    public static void deleteTrack(Track track) {
        _Storage.deleteTrack(track);
    }

    public static void deleteTracks(TrackList trackList) {
        _Storage.deleteTracks(trackList);
    }

    public static void deleteScheduledTask(ScheduledTask scheduledTask) {
        _Storage.deleteTask(scheduledTask);
    }
}
