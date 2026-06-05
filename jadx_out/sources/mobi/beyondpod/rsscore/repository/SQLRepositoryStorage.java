package mobi.beyondpod.rsscore.repository;

import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackDictionary;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.schedulercore.ScheduledTask;

/* loaded from: classes.dex */
public class SQLRepositoryStorage implements IRepositoryStorage {
    private static final int REPO_MOVED_BP_DLG = 2;
    private static final int REPO_MOVED_EXTERNAL = 1;
    private static final int REPO_NOT_MOVED = 0;
    private static final String TAG = "SQLRepositoryStorage";

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteRepositoryFiles() {
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009d  */
    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadRepository() {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.SQLRepositoryStorage.loadRepository():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00bb A[Catch: all -> 0x00c5, TryCatch #1 {, blocks: (B:4:0x0003, B:53:0x0091, B:54:0x0097, B:55:0x00b6, B:62:0x00af, B:66:0x00bb, B:67:0x00c1, B:68:0x00c4), top: B:3:0x0003 }] */
    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void saveRepository() {
        /*
            r6 = this;
            mobi.beyondpod.rsscore.TrackDictionary r0 = mobi.beyondpod.rsscore.repository.FeedRepository._TrackDictionary
            monitor-enter(r0)
            mobi.beyondpod.rsscore.repository.FeedRepository.onRepositorySaveStart()     // Catch: java.lang.Throwable -> Lc5
            r1 = 0
            mobi.beyondpod.rsscore.repository.DatabaseHelper r2 = new mobi.beyondpod.rsscore.repository.DatabaseHelper     // Catch: java.lang.Throwable -> L9d java.lang.Exception -> La2
            mobi.beyondpod.BeyondPodApplication r3 = mobi.beyondpod.BeyondPodApplication.getInstance()     // Catch: java.lang.Throwable -> L9d java.lang.Exception -> La2
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.Throwable -> L9d java.lang.Exception -> La2
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L9d java.lang.Exception -> La2
            r2.beginTransaction()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            mobi.beyondpod.rsscore.TrackDictionary r1 = mobi.beyondpod.rsscore.repository.FeedRepository._TrackDictionary     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            java.util.Collection r1 = r1.values()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
        L21:
            boolean r3 = r1.hasNext()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r3 == 0) goto L37
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            mobi.beyondpod.rsscore.Track r3 = (mobi.beyondpod.rsscore.Track) r3     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            boolean r4 = r3.isModified()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r4 == 0) goto L21
            r2.saveTrack(r3)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            goto L21
        L37:
            mobi.beyondpod.rsscore.Feed r1 = mobi.beyondpod.rsscore.repository.FeedRepository.getRootFeed()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            java.util.List r1 = r1.subFeeds()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
        L43:
            boolean r3 = r1.hasNext()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r3 == 0) goto L5f
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            mobi.beyondpod.rsscore.Feed r3 = (mobi.beyondpod.rsscore.Feed) r3     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            java.lang.Long r4 = r3.rowID()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r4 == 0) goto L5b
            boolean r4 = r3.isModified()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r4 == 0) goto L43
        L5b:
            r2.saveFeed(r3)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            goto L43
        L5f:
            boolean r1 = mobi.beyondpod.rsscore.categories.CategoryManager.isModified()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r1 == 0) goto L68
            r2.saveCategories()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
        L68:
            java.util.Collection r1 = mobi.beyondpod.schedulercore.ScheduledTasksManager.tasks()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
        L70:
            boolean r3 = r1.hasNext()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r3 == 0) goto L8c
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            mobi.beyondpod.schedulercore.ScheduledTask r3 = (mobi.beyondpod.schedulercore.ScheduledTask) r3     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            java.lang.Long r4 = r3.rowID()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r4 == 0) goto L88
            boolean r4 = r3.isModified()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r4 == 0) goto L70
        L88:
            r2.saveTask(r3)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            goto L70
        L8c:
            r2.setTransactionSuccessful()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lb8
            if (r2 == 0) goto L97
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lc5
            r2.cleanup()     // Catch: java.lang.Throwable -> Lc5
        L97:
            mobi.beyondpod.rsscore.repository.FeedRepository.onRepositorySaveComplete()     // Catch: java.lang.Throwable -> Lc5
            goto Lb6
        L9b:
            r1 = move-exception
            goto La6
        L9d:
            r2 = move-exception
            r5 = r2
            r2 = r1
            r1 = r5
            goto Lb9
        La2:
            r2 = move-exception
            r5 = r2
            r2 = r1
            r1 = r5
        La6:
            java.lang.String r3 = "SQLRepositoryStorage"
            java.lang.String r4 = "failed to save tracks and feeds to the database!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r3, r4, r1)     // Catch: java.lang.Throwable -> Lb8
            if (r2 == 0) goto L97
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lc5
            r2.cleanup()     // Catch: java.lang.Throwable -> Lc5
            goto L97
        Lb6:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc5
            return
        Lb8:
            r1 = move-exception
        Lb9:
            if (r2 == 0) goto Lc1
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lc5
            r2.cleanup()     // Catch: java.lang.Throwable -> Lc5
        Lc1:
            mobi.beyondpod.rsscore.repository.FeedRepository.onRepositorySaveComplete()     // Catch: java.lang.Throwable -> Lc5
            throw r1     // Catch: java.lang.Throwable -> Lc5
        Lc5:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc5
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.SQLRepositoryStorage.saveRepository():void");
    }

    private TrackDictionary loadRepositoryTables() {
        DatabaseHelper databaseHelper = new DatabaseHelper(BeyondPodApplication.getInstance().getApplicationContext());
        TrackDictionary trackDictionary = null;
        try {
            try {
                databaseHelper.loadCategories();
                databaseHelper.loadTasks();
                databaseHelper.loadFeeds(FeedRepository.getRootFeed());
                TrackDictionary loadTracks = databaseHelper.loadTracks();
                try {
                    FeedRepository.RepositoryLoadKind = 1;
                    FeedRepository.onRepositoryScanningForChanges();
                    return loadTracks;
                } catch (Exception e) {
                    e = e;
                    trackDictionary = loadTracks;
                    CoreHelper.logException(TAG, "Unable to load the repository from database", e);
                    return trackDictionary;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } finally {
            databaseHelper.cleanup();
        }
    }

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteFeed(Feed feed) {
        DatabaseHelper databaseHelper;
        DatabaseHelper databaseHelper2 = null;
        try {
            try {
                databaseHelper = new DatabaseHelper(BeyondPodApplication.getInstance().getApplicationContext());
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            databaseHelper.deleteFeed(feed);
            if (databaseHelper != null) {
                databaseHelper.cleanup();
            }
        } catch (Exception e2) {
            e = e2;
            databaseHelper2 = databaseHelper;
            CoreHelper.logException(TAG, "Unable to delete feed from database", e);
            if (databaseHelper2 != null) {
                databaseHelper2.cleanup();
            }
        } catch (Throwable th2) {
            th = th2;
            databaseHelper2 = databaseHelper;
            if (databaseHelper2 != null) {
                databaseHelper2.cleanup();
            }
            throw th;
        }
    }

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteTask(ScheduledTask scheduledTask) {
        DatabaseHelper databaseHelper;
        DatabaseHelper databaseHelper2 = null;
        try {
            try {
                databaseHelper = new DatabaseHelper(BeyondPodApplication.getInstance().getApplicationContext());
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            databaseHelper.deleteTask(scheduledTask);
            if (databaseHelper != null) {
                databaseHelper.cleanup();
            }
        } catch (Exception e2) {
            e = e2;
            databaseHelper2 = databaseHelper;
            CoreHelper.logException(TAG, "Unable to delete task from database", e);
            if (databaseHelper2 != null) {
                databaseHelper2.cleanup();
            }
        } catch (Throwable th2) {
            th = th2;
            databaseHelper2 = databaseHelper;
            if (databaseHelper2 != null) {
                databaseHelper2.cleanup();
            }
            throw th;
        }
    }

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteTrack(Track track) {
        TrackList trackList = new TrackList();
        trackList.add(track);
        deleteTracks(trackList);
    }

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteTracks(TrackList trackList) {
        DatabaseHelper databaseHelper;
        DatabaseHelper databaseHelper2 = null;
        try {
            try {
                databaseHelper = new DatabaseHelper(BeyondPodApplication.getInstance().getApplicationContext());
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            databaseHelper.beginTransaction();
            Iterator<Track> it = trackList.iterator();
            while (it.hasNext()) {
                databaseHelper.deleteTrack(it.next());
            }
            databaseHelper.setTransactionSuccessful();
            if (databaseHelper != null) {
                databaseHelper.endTransaction();
                databaseHelper.cleanup();
            }
        } catch (Exception e2) {
            e = e2;
            databaseHelper2 = databaseHelper;
            CoreHelper.logException(TAG, "Unable to delete track from database", e);
            if (databaseHelper2 != null) {
                databaseHelper2.endTransaction();
                databaseHelper2.cleanup();
            }
        } catch (Throwable th2) {
            th = th2;
            databaseHelper2 = databaseHelper;
            if (databaseHelper2 != null) {
                databaseHelper2.endTransaction();
                databaseHelper2.cleanup();
            }
            throw th;
        }
    }

    private static void patchRepositoryRoot(TrackDictionary trackDictionary, int i) {
        if (i == 0) {
            return;
        }
        boolean z = i == 2;
        Iterator<Feed> it = FeedRepository.getRootFeed().subFeeds().iterator();
        while (it.hasNext()) {
            it.next().patchFeedPathForCurrentRoot(z);
        }
        TrackDictionary trackDictionary2 = new TrackDictionary();
        for (Track track : trackDictionary.values()) {
            if (track != null) {
                track.patchTrackPathForCurrentRoot(z);
                trackDictionary2.put(track.trackPath(), track);
            }
        }
        trackDictionary.clear();
        trackDictionary.putAll(trackDictionary2);
        Configuration.setRepoMovedPath(null);
    }

    private static int checkIfRepositoryRootHasMoved() {
        if (!StringUtils.isNullOrEmpty(Configuration.getRepoMovedPath())) {
            return 2;
        }
        for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
            if (feed.hasUrl() && feed.getFeedPath() != null) {
                if (feed.downloadPathExists()) {
                    return 0;
                }
                if (FileUtils.directoryExists(FeedRepository.patchRootPath(feed.getFeedPath()))) {
                    return 1;
                }
            }
        }
        return 0;
    }
}
