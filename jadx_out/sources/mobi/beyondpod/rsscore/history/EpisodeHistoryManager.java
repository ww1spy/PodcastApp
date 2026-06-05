package mobi.beyondpod.rsscore.history;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;

/* loaded from: classes.dex */
public class EpisodeHistoryManager {
    public static final int EPISODE_HISTORY_TYPE_EPISODE_PLAYED = 1;
    public static final int EPISODE_HISTORY_TYPE_MY_EPISODE_ADDED = 2;
    private static final int HISTORY_CLEAN_BATCH = 15;
    static final int MAX_HISTORY_AGE_DAYS = 15;
    private static final int MAX_HISTORY_EPISODE_PLAYED_ENTRIES = 50;
    private static final int MAX_HISTORY_MY_EPISODE_ADDED_ENTRIES = 50;
    private static final int SAVE_DELAY_LONG = 30000;
    private static final int SAVE_DELAY_SHORT = 1000;
    private static final String TAG = "EpisodeHistoryManager";
    private static boolean _IsInitialized = false;
    private static boolean _SavingHistory;
    private static final List<EpisodeHistoryEntry> m_history = Collections.synchronizedList(new ArrayList());
    private static Runnable _SaveHistoryRunnable = new Runnable() { // from class: mobi.beyondpod.rsscore.history.EpisodeHistoryManager.1
        @Override // java.lang.Runnable
        public void run() {
            EpisodeHistoryManager.saveHistoryInternal();
        }
    };
    private static Comparator<EpisodeHistoryEntry> _TimeStampComparator = new Comparator<EpisodeHistoryEntry>() { // from class: mobi.beyondpod.rsscore.history.EpisodeHistoryManager.3
        @Override // java.util.Comparator
        public int compare(EpisodeHistoryEntry episodeHistoryEntry, EpisodeHistoryEntry episodeHistoryEntry2) {
            return episodeHistoryEntry2.timeStamp().compareTo(episodeHistoryEntry.timeStamp());
        }
    };

    public static TrackList getLatestAddedEpisodes(int i) {
        TrackList trackList = new TrackList();
        List<EpisodeHistoryEntry> forTypeOrdered = getForTypeOrdered(2);
        for (EpisodeHistoryEntry episodeHistoryEntry : forTypeOrdered) {
            Track trackByPathOrUrl = FeedRepository.getTrackByPathOrUrl(episodeHistoryEntry.episodeUrl(), episodeHistoryEntry.episodeUrl());
            if (trackByPathOrUrl != null && trackByPathOrUrl.isNew()) {
                trackList.add(trackByPathOrUrl);
            }
            if (trackList.size() >= i) {
                return trackList;
            }
        }
        if (forTypeOrdered.size() == 0) {
            for (Track track : getAllEpisodesSorted()) {
                if (track.isNew()) {
                    addEpisodeAddedHistoryEntry(track);
                    trackList.add(track);
                }
                if (trackList.size() >= i) {
                    break;
                }
            }
        }
        return trackList;
    }

    public static TrackList getLatestPlayedEpisodes(int i) {
        TrackList trackList = new TrackList();
        List<EpisodeHistoryEntry> forTypeOrdered = getForTypeOrdered(1);
        for (EpisodeHistoryEntry episodeHistoryEntry : forTypeOrdered) {
            Track trackByPathOrUrl = FeedRepository.getTrackByPathOrUrl(episodeHistoryEntry.episodeUrl(), episodeHistoryEntry.episodeUrl());
            if (trackByPathOrUrl != null && !trackByPathOrUrl.isNew()) {
                trackList.add(trackByPathOrUrl);
            }
            if (trackList.size() >= i) {
                return trackList;
            }
        }
        if (forTypeOrdered.size() == 0) {
            for (Track track : getAllEpisodesSorted()) {
                if (track.isPartialyPlayed()) {
                    addEpisodePlayedHistoryEntry(track);
                    trackList.add(track);
                }
                if (trackList.size() >= i) {
                    break;
                }
            }
        }
        return trackList;
    }

    public static FeedList getMostUsedFeeds() {
        Feed feedByUrl;
        HashMap hashMap = new HashMap();
        synchronized (m_history) {
            for (EpisodeHistoryEntry episodeHistoryEntry : m_history) {
                if (episodeHistoryEntry.entryType() == 1) {
                    String feedUrl = episodeHistoryEntry.feedUrl();
                    if (!StringUtils.isNullOrEmpty(feedUrl) && (feedByUrl = FeedRepository.getFeedByUrl(feedUrl)) != null && feedByUrl.hasUrl()) {
                        if (hashMap.containsKey(feedByUrl)) {
                            hashMap.put(feedByUrl, Integer.valueOf(((Integer) hashMap.get(feedByUrl)).intValue() + 1));
                        } else {
                            hashMap.put(feedByUrl, 1);
                        }
                    }
                }
            }
        }
        LinkedList linkedList = new LinkedList(hashMap.entrySet());
        Collections.sort(linkedList, new Comparator<Map.Entry<Feed, Integer>>() { // from class: mobi.beyondpod.rsscore.history.EpisodeHistoryManager.2
            @Override // java.util.Comparator
            public int compare(Map.Entry<Feed, Integer> entry, Map.Entry<Feed, Integer> entry2) {
                return entry2.getValue().compareTo(entry.getValue());
            }
        });
        FeedList feedList = new FeedList();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            feedList.add(((Map.Entry) it.next()).getKey());
        }
        return feedList;
    }

    private static List<Track> getAllEpisodesSorted() {
        return FeedRepository.getAllEpisodesSorted(3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
    
        if (r1 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005f, code lost:
    
        r1.cleanup();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0062, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
    
        if (r1 == null) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void initializeHistory() {
        /*
            boolean r0 = mobi.beyondpod.rsscore.history.EpisodeHistoryManager._IsInitialized
            if (r0 == 0) goto Lc
            java.lang.String r0 = mobi.beyondpod.rsscore.history.EpisodeHistoryManager.TAG
            java.lang.String r1 = "History already initialized! Ignoring..."
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r0, r1)
            return
        Lc:
            java.util.List<mobi.beyondpod.rsscore.history.EpisodeHistoryManager$EpisodeHistoryEntry> r0 = mobi.beyondpod.rsscore.history.EpisodeHistoryManager.m_history
            r0.clear()
            r0 = 0
            mobi.beyondpod.rsscore.repository.DatabaseHelper r1 = new mobi.beyondpod.rsscore.repository.DatabaseHelper     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52
            mobi.beyondpod.BeyondPodApplication r2 = mobi.beyondpod.BeyondPodApplication.getInstance()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52
            android.content.Context r2 = r2.getApplicationContext()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L52
            java.util.List<mobi.beyondpod.rsscore.history.EpisodeHistoryManager$EpisodeHistoryEntry> r0 = mobi.beyondpod.rsscore.history.EpisodeHistoryManager.m_history     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            r1.loadEpisodeHistory(r0)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            java.lang.String r0 = mobi.beyondpod.rsscore.history.EpisodeHistoryManager.TAG     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            r2.<init>()     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            java.lang.String r3 = "Loaded "
            r2.append(r3)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            java.util.List<mobi.beyondpod.rsscore.history.EpisodeHistoryManager$EpisodeHistoryEntry> r3 = mobi.beyondpod.rsscore.history.EpisodeHistoryManager.m_history     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            int r3 = r3.size()     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            r2.append(r3)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            java.lang.String r3 = " history records!"
            r2.append(r3)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r0, r2)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            r0 = 1
            mobi.beyondpod.rsscore.history.EpisodeHistoryManager._IsInitialized = r0     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L63
            if (r1 == 0) goto L62
            goto L5f
        L4b:
            r0 = move-exception
            goto L56
        L4d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L64
        L52:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L56:
            java.lang.String r2 = mobi.beyondpod.rsscore.history.EpisodeHistoryManager.TAG     // Catch: java.lang.Throwable -> L63
            java.lang.String r3 = "Unable to load the user history from database"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r2, r3, r0)     // Catch: java.lang.Throwable -> L63
            if (r1 == 0) goto L62
        L5f:
            r1.cleanup()
        L62:
            return
        L63:
            r0 = move-exception
        L64:
            if (r1 == 0) goto L69
            r1.cleanup()
        L69:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.history.EpisodeHistoryManager.initializeHistory():void");
    }

    private static Date ageLimitInMilliseconds(int i) {
        return new Date(TimeUnit.DAYS.toMillis(i));
    }

    private static void addHistoryEntry(Track track, int i) {
        EpisodeHistoryEntry entryFor = getEntryFor(track, i);
        if (entryFor != null) {
            entryFor.setTimeStamp(Long.valueOf(new Date().getTime()));
            entryFor.setIsModified(true);
            saveHistoryAsyncIn(SAVE_DELAY_LONG);
        } else {
            m_history.add(new EpisodeHistoryEntry(getTrackId(track), getFeedId(track.getParentFeed()), Long.valueOf(new Date().getTime()), i));
            saveHistoryAsyncIn(1000);
        }
    }

    private static EpisodeHistoryEntry getEntryFor(Track track, int i) {
        synchronized (m_history) {
            for (EpisodeHistoryEntry episodeHistoryEntry : m_history) {
                if (getFeedId(track.getParentFeed()).equals(episodeHistoryEntry.feedUrl()) && getTrackId(track).equals(episodeHistoryEntry.episodeUrl()) && i == episodeHistoryEntry.entryType()) {
                    return episodeHistoryEntry;
                }
            }
            return null;
        }
    }

    private static String getTrackId(Track track) {
        if (track.hasUrl()) {
            return track.getUrl();
        }
        return track.trackPath();
    }

    private static String getFeedId(Feed feed) {
        if (feed.hasUrl()) {
            return feed.getFeedUrl();
        }
        return feed.getFeedPath();
    }

    private static void saveHistoryAsyncIn(int i) {
        RepositoryPersistence.repositoryHandler().removeCallbacks(_SaveHistoryRunnable);
        RepositoryPersistence.repositoryHandler().postDelayed(_SaveHistoryRunnable, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fa A[Catch: all -> 0x012d, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x0009, B:36:0x005c, B:37:0x0062, B:39:0x0068, B:40:0x008c, B:41:0x00d4, B:42:0x00f5, B:48:0x00a3, B:49:0x00a9, B:51:0x00af, B:55:0x00fa, B:56:0x0100, B:58:0x0106, B:59:0x012a, B:60:0x012c), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0106 A[Catch: all -> 0x012d, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x0009, B:36:0x005c, B:37:0x0062, B:39:0x0068, B:40:0x008c, B:41:0x00d4, B:42:0x00f5, B:48:0x00a3, B:49:0x00a9, B:51:0x00af, B:55:0x00fa, B:56:0x0100, B:58:0x0106, B:59:0x012a, B:60:0x012c), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveHistoryInternal() {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.history.EpisodeHistoryManager.saveHistoryInternal():void");
    }

    private static void cleanupHistory() {
        List<EpisodeHistoryEntry> forTypeOrdered = getForTypeOrdered(1);
        if (forTypeOrdered.size() > 50) {
            for (int i = 35; i != forTypeOrdered.size(); i++) {
                forTypeOrdered.get(i).markDeleted();
            }
        }
        List<EpisodeHistoryEntry> forTypeOrdered2 = getForTypeOrdered(2);
        if (forTypeOrdered2.size() > 50) {
            for (int i2 = 35; i2 != forTypeOrdered2.size(); i2++) {
                forTypeOrdered2.get(i2).markDeleted();
            }
        }
    }

    public static void addEpisodePlayedHistoryEntry(Track track) {
        if (!_IsInitialized) {
            CoreHelper.writeTraceEntryInDebug(TAG, "Trying to addEpisodePlayedHistoryEntry before initializing the history repository!");
        } else {
            addHistoryEntry(track, 1);
        }
    }

    public static void addEpisodeAddedHistoryEntry(Track track) {
        if (!_IsInitialized) {
            CoreHelper.writeTraceEntryInDebug(TAG, "Trying to addEpisodePlayedHistoryEntry before initializing the history repository!");
        } else {
            addHistoryEntry(track, 2);
        }
    }

    public static List<EpisodeHistoryEntry> getForTypeOrdered(int i) {
        ArrayList arrayList = new ArrayList();
        synchronized (m_history) {
            for (EpisodeHistoryEntry episodeHistoryEntry : m_history) {
                if (episodeHistoryEntry.entryType() == i) {
                    arrayList.add(episodeHistoryEntry);
                }
            }
        }
        Collections.sort(arrayList, _TimeStampComparator);
        return arrayList;
    }

    /* loaded from: classes.dex */
    public static class EpisodeHistoryEntry {
        private int _EntryType;
        private String _EpisodeUrl;
        private String _FeedUrl;
        private Long _StorageRowID;
        private Long _TimeStamp;
        private boolean _IsModified = false;
        private boolean _Deleted = false;

        public EpisodeHistoryEntry(String str, String str2, Long l, int i) {
            this._EpisodeUrl = str;
            this._FeedUrl = str2;
            this._TimeStamp = l;
            this._EntryType = i;
        }

        public EpisodeHistoryEntry(Long l, String str, String str2, Long l2, int i) {
            this._StorageRowID = l;
            this._EpisodeUrl = str;
            this._FeedUrl = str2;
            this._TimeStamp = l2;
            this._EntryType = i;
        }

        public Long rowID() {
            return this._StorageRowID;
        }

        public String episodeUrl() {
            return this._EpisodeUrl;
        }

        public String feedUrl() {
            return this._FeedUrl;
        }

        public Long timeStamp() {
            return this._TimeStamp;
        }

        public int entryType() {
            return this._EntryType;
        }

        public void initRowID(Long l) {
            this._StorageRowID = l;
        }

        public boolean isMarkedForDeletion() {
            return this._Deleted;
        }

        public void markDeleted() {
            this._Deleted = true;
        }

        public void setTimeStamp(Long l) {
            this._TimeStamp = l;
            setIsModified(true);
        }

        public boolean isModified() {
            return this._IsModified;
        }

        public void setIsModified(boolean z) {
            this._IsModified = z;
        }

        public boolean isNew() {
            return this._StorageRowID == null;
        }

        public String friendlyName() {
            return "EpUrl: " + this._EpisodeUrl + ", feedUrl: " + this._FeedUrl + ", Time: " + CoreHelper.formatTimeAsString(this._TimeStamp.longValue()) + ", Entry type: " + this._EntryType;
        }
    }
}
