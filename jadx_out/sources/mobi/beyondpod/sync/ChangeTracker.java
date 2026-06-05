package mobi.beyondpod.sync;

import android.os.Build;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;

/* loaded from: classes.dex */
public class ChangeTracker {
    private static final String TAG = "ChangeTracker";
    private static final boolean _EnclosureStreamableTrackAddedEnabled = true;
    private static final boolean _EpisodeDeletionsTrackingEnabled = true;
    private static final boolean _EpisodePlayedTrackingEnabled = true;
    private static final boolean _FeedTrackingEnabled = true;
    private static boolean _IsInitialized = false;
    private static final boolean _PostTrackingEnabled = false;
    private static boolean _SavingHistory;
    private static final ArrayList<TrackedChangeBase> m_history = new ArrayList<>();
    private static FeedList _RecentlyImportedFeeds = new FeedList();
    private static Runnable _SaveHistoryRunnable = new Runnable() { // from class: mobi.beyondpod.sync.ChangeTracker.1
        @Override // java.lang.Runnable
        public void run() {
            ChangeTracker.saveHistoryInternal();
        }
    };

    public static boolean allowRemoteEpisodeAdditions() {
        return true;
    }

    public static boolean allowRemoteEpisodeModifications() {
        return true;
    }

    public static boolean allowRemoteFeedDeletions() {
        return false;
    }

    public static void onFeedImported(Feed feed) {
        _RecentlyImportedFeeds.add(feed);
    }

    public static boolean isTrackingEnabled() {
        return isSyncLicenseValid() && isTrackingConfigured();
    }

    public static boolean isTrackingConfigured() {
        return (!Configuration.CDSEnabled() || StringUtils.isNullOrEmpty(Configuration.CDSUserName()) || StringUtils.isNullOrEmpty(Configuration.CDSPassword())) ? false : true;
    }

    public static boolean isSyncLicenseValid() {
        return !PolicyManager.ifCDSRestricted();
    }

    public static boolean allowRemoteFeedAdditions() {
        return Configuration.CDSAllowRemoteFeeds() == 1;
    }

    public static boolean allowRemoteFeedModifications() {
        return allowRemoteFeedAdditions();
    }

    public static boolean alwaysAcceptRemoteFeedPush() {
        return Configuration.CDSAllowRemoteFeeds() == 2;
    }

    public static boolean allowRemoteEpisodeDeletions() {
        return Configuration.CDSAllowRemoteEpisodeDeletions();
    }

    private static ArrayList<TrackedChangeBase> history() {
        return m_history;
    }

    public static void addPendingRemoteChanges(List<TrackedChangeBase> list) {
        long lastRemoteChangeTimeStamp = Configuration.lastRemoteChangeTimeStamp();
        if (list != null && list.size() > 0) {
            synchronized (history()) {
                for (TrackedChangeBase trackedChangeBase : list) {
                    if (trackedChangeBase.syncStatus() != 3) {
                        break;
                    }
                    TrackedChangeBase findExistingDownPendingChangeFor = findExistingDownPendingChangeFor(trackedChangeBase);
                    TrackedChangeBase.logSyncEvent(TAG, "   --- DOWN sync =>" + trackedChangeBase, trackedChangeBase);
                    if (findExistingDownPendingChangeFor != null) {
                        findExistingDownPendingChangeFor.updateTo(trackedChangeBase);
                    } else {
                        history().add(trackedChangeBase);
                    }
                    if (lastRemoteChangeTimeStamp < trackedChangeBase.timeStamp()) {
                        lastRemoteChangeTimeStamp = trackedChangeBase.timeStamp();
                    }
                }
            }
            saveHistoryAsync();
        }
        if (Configuration.lastRemoteChangeTimeStamp() != lastRemoteChangeTimeStamp) {
            Configuration.setLastRemoteChangeTimeStamp(lastRemoteChangeTimeStamp);
            TrackedChangeBase.logSyncEvent(TAG, " --- Last remote change timestamp moved to: " + new Date(lastRemoteChangeTimeStamp), null);
        }
    }

    public static void addLocalEpisodePlayedChange(Track track) {
        if (isTrackingEnabled()) {
            if (!_IsInitialized) {
                CoreHelper.writeTraceEntryInDebug(TAG, "Trying to addLocalEpisodePlayedChange before initializing the change tracking repository!");
                return;
            }
            if (track.getParentFeed().getType() == 1) {
                CoreHelper.writeTraceEntryInDebug(TAG, "-------addLocalEpisodePlayedChange was ignored because the episode '" + track.getName() + "' belongs to a virtual feed!");
                return;
            }
            addPendingChangeInternal(new TrackedChangeEpisode(8, track), IHttpClient.SC_MULTIPLE_CHOICES);
        }
    }

    public static void addLocalEpisodeUpdatedChange(Track track) {
        if (isTrackingEnabled()) {
            if (!_IsInitialized) {
                CoreHelper.writeTraceEntryInDebug(TAG, "Trying to addLocalEpisodeUpdatedChange before initializing the change tracking repository!");
                return;
            }
            if (track.getParentFeed().getType() == 1) {
                CoreHelper.writeTraceEntryInDebug(TAG, "-------addLocalEpisodeUpdatedChange was ignored because the episode '" + track.getName() + "' belongs to a virtual feed!");
                return;
            }
            addPendingChangeInternal(new TrackedChangeEpisode(15, track), IHttpClient.SC_MULTIPLE_CHOICES);
        }
    }

    public static void addLocalEpisodeDeletedChange(Track track) {
        if (isTrackingEnabled()) {
            if (!_IsInitialized) {
                CoreHelper.writeTraceEntryInDebug(TAG, "Trying to add tracked Episode change before initializing the change tracking repository!");
                return;
            }
            if (!track.changeTrackingEnabled) {
                CoreHelper.writeTraceEntryInDebug(TAG, "-------addLocalEpisodeDeletedChange was ignored because change tracking is temporary disabled for episode: " + track.getName());
                track.changeTrackingEnabled = true;
                return;
            }
            if (track.getParentFeed().getType() == 1) {
                CoreHelper.writeTraceEntryInDebug(TAG, "-------addLocalEpisodeDeletedChange was ignored because episode " + track.getName() + " belongs to a virtual feed!");
                return;
            }
            addPendingChangeInternal(new TrackedChangeEpisode(9, track), IHttpClient.SC_MULTIPLE_CHOICES);
        }
    }

    public static void addLocalStreamableEpisodeAddedChange(Track track) {
        if (isTrackingEnabled()) {
            if (!_IsInitialized) {
                CoreHelper.writeTraceEntryInDebug(TAG, "Trying to add tracked Episode change before initializing the change tracking repository!");
                return;
            }
            String feedUrl = track.getParentFeed().getFeedUrl();
            if (StringUtils.isNullOrEmpty(feedUrl)) {
                CoreHelper.writeTraceEntryInDebug(TAG, "addLocalStreamableEpisodeAddedChange is not supported for Virtual feeds. Ignoring...");
                return;
            }
            if (!track.changeTrackingEnabled) {
                CoreHelper.writeTraceEntryInDebug(TAG, "-------addLocalStreamableEpisodeAddedChange was ignored because was temporary disabled for episode: " + track.getName());
                track.changeTrackingEnabled = true;
                return;
            }
            addPendingChangeInternal(new TrackedChangeEnclosure(4, RssFeedItem.buildMockRssItem(feedUrl, track.rssItemID(), track.displayName(), track.trackPostUrl(), track.getLastModifiedDate(), track.trackDescription(), track.getUrl(), track.contentMimeType(), Long.valueOf(track.getDownloadSize())).enclosure()), IHttpClient.SC_MULTIPLE_CHOICES);
        }
    }

    public static void addLocalFeedChange(int i, Feed feed, int i2) {
        if (isTrackingEnabled()) {
            if (!_IsInitialized) {
                CoreHelper.writeTraceEntryInDebug(TAG, "Trying to add tracked feed change before initializing the change tracking repository!");
                return;
            }
            if (!feed.changeTrackingEnabled) {
                CoreHelper.writeTraceEntryInDebug(TAG, "-------Change ignored because was disabled for the current feed!");
                feed.changeTrackingEnabled = true;
            } else if (feed.getType() == 1) {
                CoreHelper.writeTraceEntryInDebug(TAG, "-------Change ignored because the feed is a Virtual feed!");
            } else if (i == 1 || i == 3 || i == 14) {
                addPendingChangeInternal(new TrackedChangeFeed(i, feed), i2);
            } else {
                CoreHelper.writeTraceEntryInDebug(TAG, "-------Change ignored because CHANGE_TYPE_FEED_DELETED is not allowed!");
            }
        }
    }

    public static void addLocalPostChange(int i, RssFeedItem rssFeedItem) {
        isTrackingEnabled();
    }

    private static void addPendingChangeInternal(TrackedChangeBase trackedChangeBase, int i) {
        trackedChangeBase.setSyncStatus(2);
        synchronized (history()) {
            TrackedChangeBase findExistingUpPendingChangeFor = findExistingUpPendingChangeFor(trackedChangeBase);
            if (findExistingUpPendingChangeFor != null) {
                findExistingUpPendingChangeFor.updateTo(trackedChangeBase);
            } else {
                history().add(trackedChangeBase);
            }
        }
        ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(i, TimeSpan.fromSeconds(1.0d), false);
        saveHistoryAsync();
    }

    private static TrackedChangeBase findExistingUpPendingChangeFor(TrackedChangeBase trackedChangeBase) {
        Iterator<TrackedChangeBase> it = history().iterator();
        while (it.hasNext()) {
            TrackedChangeBase next = it.next();
            if (next.messageId().equals(trackedChangeBase.messageId()) && next.changeType() == trackedChangeBase.changeType() && isChangeUploadPending(next)) {
                return next;
            }
        }
        return null;
    }

    private static TrackedChangeBase findExistingDownPendingChangeFor(TrackedChangeBase trackedChangeBase) {
        Iterator<TrackedChangeBase> it = history().iterator();
        while (it.hasNext()) {
            TrackedChangeBase next = it.next();
            if (next.messageId().equals(trackedChangeBase.messageId()) && next.changeType() == trackedChangeBase.changeType() && isChangeDownPending(next)) {
                return next;
            }
        }
        return null;
    }

    private static boolean isChangeUploadPending(TrackedChangeBase trackedChangeBase) {
        return !trackedChangeBase.isMarkedForDeletion() && trackedChangeBase.syncStatus() == 2;
    }

    private static boolean isChangeDownPending(TrackedChangeBase trackedChangeBase) {
        return !trackedChangeBase.isMarkedForDeletion() && trackedChangeBase.syncStatus() == 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0058, code lost:
    
        if (r1 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0072, code lost:
    
        cleanStaleRecords();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0075, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
    
        r1.cleanup();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
    
        if (r1 == null) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void initializeHistory() {
        /*
            boolean r0 = isTrackingConfigured()
            if (r0 != 0) goto Le
            java.lang.String r0 = mobi.beyondpod.sync.ChangeTracker.TAG
            java.lang.String r1 = "Change Tracking is not configured! Ignoring..."
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r0, r1)
            return
        Le:
            boolean r0 = mobi.beyondpod.sync.ChangeTracker._IsInitialized
            if (r0 == 0) goto L1a
            java.lang.String r0 = mobi.beyondpod.sync.ChangeTracker.TAG
            java.lang.String r1 = "Change Tracking already initialized! Ignoring..."
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r0, r1)
            return
        L1a:
            java.util.ArrayList r0 = history()
            r0.clear()
            r0 = 0
            mobi.beyondpod.rsscore.repository.DatabaseHelper r1 = new mobi.beyondpod.rsscore.repository.DatabaseHelper     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62
            mobi.beyondpod.BeyondPodApplication r2 = mobi.beyondpod.BeyondPodApplication.getInstance()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62
            android.content.Context r2 = r2.getApplicationContext()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62
            java.util.ArrayList<mobi.beyondpod.sync.TrackedChangeBase> r0 = mobi.beyondpod.sync.ChangeTracker.m_history     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            r1.loadTrackedChanges(r0)     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            java.lang.String r0 = mobi.beyondpod.sync.ChangeTracker.TAG     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            r2.<init>()     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            java.lang.String r3 = "Loaded "
            r2.append(r3)     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            java.util.ArrayList<mobi.beyondpod.sync.TrackedChangeBase> r3 = mobi.beyondpod.sync.ChangeTracker.m_history     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            int r3 = r3.size()     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            r2.append(r3)     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            java.lang.String r3 = " change tracking records!"
            r2.append(r3)     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r0, r2)     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            r0 = 1
            mobi.beyondpod.sync.ChangeTracker._IsInitialized = r0     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> L76
            if (r1 == 0) goto L72
            goto L6f
        L5b:
            r0 = move-exception
            goto L66
        L5d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L77
        L62:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L66:
            java.lang.String r2 = mobi.beyondpod.sync.ChangeTracker.TAG     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = "Unable to load the change history from database"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r2, r3, r0)     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L72
        L6f:
            r1.cleanup()
        L72:
            cleanStaleRecords()
            return
        L76:
            r0 = move-exception
        L77:
            if (r1 == 0) goto L7c
            r1.cleanup()
        L7c:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.sync.ChangeTracker.initializeHistory():void");
    }

    public static void saveHistoryAsync() {
        RepositoryPersistence.repositoryHandler().removeCallbacks(_SaveHistoryRunnable);
        RepositoryPersistence.repositoryHandler().postDelayed(_SaveHistoryRunnable, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0095 A[Catch: all -> 0x00a5, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x0009, B:36:0x005e, B:37:0x0064, B:38:0x006b, B:39:0x0090, B:45:0x0082, B:46:0x0088, B:50:0x0095, B:51:0x009b, B:52:0x00a4), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveHistoryInternal() {
        /*
            java.util.ArrayList<mobi.beyondpod.sync.TrackedChangeBase> r0 = mobi.beyondpod.sync.ChangeTracker.m_history
            monitor-enter(r0)
            boolean r1 = mobi.beyondpod.sync.ChangeTracker._SavingHistory     // Catch: java.lang.Throwable -> La5
            if (r1 == 0) goto L9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La5
            return
        L9:
            r1 = 1
            mobi.beyondpod.sync.ChangeTracker._SavingHistory = r1     // Catch: java.lang.Throwable -> La5
            r1 = 0
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La5
            r2.<init>()     // Catch: java.lang.Throwable -> La5
            r3 = 0
            mobi.beyondpod.rsscore.repository.DatabaseHelper r4 = new mobi.beyondpod.rsscore.repository.DatabaseHelper     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            mobi.beyondpod.BeyondPodApplication r5 = mobi.beyondpod.BeyondPodApplication.getInstance()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            android.content.Context r5 = r5.getApplicationContext()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L75
            r4.beginTransaction()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            java.util.ArrayList r1 = history()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
        L2b:
            boolean r5 = r1.hasNext()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            if (r5 == 0) goto L59
            java.lang.Object r5 = r1.next()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            mobi.beyondpod.sync.TrackedChangeBase r5 = (mobi.beyondpod.sync.TrackedChangeBase) r5     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            boolean r6 = r5.isNew()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            if (r6 != 0) goto L43
            boolean r6 = r5.isModified()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            if (r6 == 0) goto L49
        L43:
            r5.prepareForSave()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            r4.saveTrackedChange(r5)     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
        L49:
            boolean r6 = r5.isMarkedForDeletion()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            if (r6 == 0) goto L2b
            boolean r6 = r4.deleteTrackedChange(r5)     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            if (r6 == 0) goto L2b
            r2.add(r5)     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            goto L2b
        L59:
            r4.setTransactionSuccessful()     // Catch: java.lang.Exception -> L6e java.lang.Throwable -> L92
            if (r4 == 0) goto L64
            r4.endTransaction()     // Catch: java.lang.Throwable -> La5
            r4.cleanup()     // Catch: java.lang.Throwable -> La5
        L64:
            java.util.ArrayList r1 = history()     // Catch: java.lang.Throwable -> La5
            r1.removeAll(r2)     // Catch: java.lang.Throwable -> La5
        L6b:
            mobi.beyondpod.sync.ChangeTracker._SavingHistory = r3     // Catch: java.lang.Throwable -> La5
            goto L90
        L6e:
            r1 = move-exception
            goto L79
        L70:
            r4 = move-exception
            r7 = r4
            r4 = r1
            r1 = r7
            goto L93
        L75:
            r4 = move-exception
            r7 = r4
            r4 = r1
            r1 = r7
        L79:
            java.lang.String r5 = mobi.beyondpod.sync.ChangeTracker.TAG     // Catch: java.lang.Throwable -> L92
            java.lang.String r6 = "failed to save change history to the database!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r5, r6, r1)     // Catch: java.lang.Throwable -> L92
            if (r4 == 0) goto L88
            r4.endTransaction()     // Catch: java.lang.Throwable -> La5
            r4.cleanup()     // Catch: java.lang.Throwable -> La5
        L88:
            java.util.ArrayList r1 = history()     // Catch: java.lang.Throwable -> La5
            r1.removeAll(r2)     // Catch: java.lang.Throwable -> La5
            goto L6b
        L90:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La5
            return
        L92:
            r1 = move-exception
        L93:
            if (r4 == 0) goto L9b
            r4.endTransaction()     // Catch: java.lang.Throwable -> La5
            r4.cleanup()     // Catch: java.lang.Throwable -> La5
        L9b:
            java.util.ArrayList r4 = history()     // Catch: java.lang.Throwable -> La5
            r4.removeAll(r2)     // Catch: java.lang.Throwable -> La5
            mobi.beyondpod.sync.ChangeTracker._SavingHistory = r3     // Catch: java.lang.Throwable -> La5
            throw r1     // Catch: java.lang.Throwable -> La5
        La5:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La5
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.sync.ChangeTracker.saveHistoryInternal():void");
    }

    public static void dumpHistory() {
        CoreHelper.writeTraceEntry(TAG, "*************** Unsynchronized Changes **************");
        ArrayList arrayList = (ArrayList) history().clone();
        Collections.sort(arrayList, TrackedChangeBase.TimestampComparator);
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            TrackedChangeBase trackedChangeBase = (TrackedChangeBase) it.next();
            if (isChangeUploadPending(trackedChangeBase) || isChangeDownPending(trackedChangeBase)) {
                i++;
                CoreHelper.writeTraceEntry(TAG, "   * " + trackedChangeBase.toString());
            }
        }
        CoreHelper.writeTraceEntry(TAG, "********** Dump Completed - " + i + " of " + arrayList.size() + " records *******************");
    }

    public static ArrayList<TrackedChangeBase> pendingUploadChanges() {
        ArrayList<TrackedChangeBase> arrayList = new ArrayList<>();
        if (!_IsInitialized) {
            CoreHelper.writeTraceEntryInDebug(TAG, "Trying to add tracked change before initializing the change tracking repository!");
            return arrayList;
        }
        synchronized (m_history) {
            Iterator<TrackedChangeBase> it = history().iterator();
            while (it.hasNext()) {
                TrackedChangeBase next = it.next();
                if (isChangeUploadPending(next)) {
                    arrayList.add(next);
                }
            }
        }
        Collections.sort(arrayList, TrackedChangeBase.TimestampComparator);
        return arrayList;
    }

    public static void cleanStaleRecords() {
        cleanRecordsInternal(true);
    }

    public static void cleanAllRecords() {
        cleanRecordsInternal(false);
    }

    private static void cleanRecordsInternal(boolean z) {
        int i;
        synchronized (m_history) {
            ArrayList arrayList = new ArrayList();
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date());
            calendar.add(2, -1);
            Date time = calendar.getTime();
            Iterator<TrackedChangeBase> it = history().iterator();
            i = 0;
            while (it.hasNext()) {
                TrackedChangeBase next = it.next();
                if (!z || isStaleRecord(next, time.getTime())) {
                    String str = TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Cleaning ");
                    sb.append(z ? "stale" : "");
                    sb.append(" record for: ");
                    sb.append(next);
                    CoreHelper.writeTraceEntry(str, sb.toString());
                    i++;
                    if (next.rowID().longValue() != -1) {
                        next.markDeleted();
                    } else {
                        arrayList.add(next);
                    }
                }
            }
            m_history.removeAll(arrayList);
            String str2 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("*** Cleaned ");
            sb2.append(i);
            sb2.append(z ? " stale" : "");
            sb2.append(" sync records");
            CoreHelper.writeTraceEntry(str2, sb2.toString());
        }
        if (i > 0) {
            saveHistoryAsync();
        }
    }

    public static int applyPendingRemoteChangesSync() {
        int i = 0;
        if (!isTrackingEnabled()) {
            return 0;
        }
        _RecentlyImportedFeeds.clear();
        synchronized (m_history) {
            ArrayList arrayList = new ArrayList();
            Iterator<TrackedChangeBase> it = history().iterator();
            while (it.hasNext()) {
                TrackedChangeBase next = it.next();
                if (next.syncStatus() == 3) {
                    arrayList.add(next);
                }
            }
            if (arrayList.size() > 0) {
                Collections.sort(arrayList, TrackedChangeBase.TimestampComparator);
                TrackedChangeBase.logSyncEvent(TAG, " --- Applying " + arrayList.size() + " remote changes...", null);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((TrackedChangeBase) it2.next()).applyRemoteChange();
                    i++;
                }
                TrackedChangeBase.logSyncEvent(TAG, " --- Changes applied!", null);
            }
            BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(15));
        }
        saveHistoryAsync();
        FeedRepository.saveRepositoryAsync();
        if (_RecentlyImportedFeeds.size() > 0 && !UpdateAndDownloadManager.isWorking()) {
            CoreHelper.writeTraceEntryInDebug(TAG, " --- Refreshing " + _RecentlyImportedFeeds.size() + " recently imported feeds...");
            UpdateAndDownloadManager.startQuickUpdate(_RecentlyImportedFeeds);
            _RecentlyImportedFeeds.clear();
        }
        return i;
    }

    private static boolean isStaleRecord(TrackedChangeBase trackedChangeBase, long j) {
        return trackedChangeBase.syncStatus() == 4 || trackedChangeBase.syncStatus() == 1 || j > trackedChangeBase.timeStamp();
    }

    public static boolean isInitialized() {
        return _IsInitialized;
    }

    public static boolean hasUploadPendingChanges() {
        if (!_IsInitialized) {
            return false;
        }
        synchronized (m_history) {
            Iterator<TrackedChangeBase> it = history().iterator();
            while (it.hasNext()) {
                if (isChangeUploadPending(it.next())) {
                    return true;
                }
            }
            return false;
        }
    }

    public static String deviceID() {
        return Build.MANUFACTURER + " " + Build.MODEL + " " + Settings.Secure.getString(BeyondPodApplication.getInstance().getContentResolver(), "android_id");
    }

    public static boolean isDeviceTimeCorrect(Date date) {
        return Math.abs(new Date().getTime() - date.getTime()) < 120000;
    }
}
