package mobi.beyondpod.rsscore.repository;

import android.support.annotation.Nullable;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.StartupContentBuilder;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackDictionary;
import mobi.beyondpod.rsscore.TrackFilter;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.categories.CategoryList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.Path;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.history.EpisodeHistoryManager;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.core.volley.DiskBasedCacheBP;

/* loaded from: classes.dex */
public final class FeedRepository {
    public static int RepositoryLoadKind = -1;
    private static final String TAG = "FeedRepository";
    public static long _RepEndLoadTime = 0;
    public static long _RepEndSaveTime = 0;
    public static long _RepStartLoadTime = 0;
    public static long _RepStartSaveTime = 0;
    public static long _RepXMlReadEndTime = 0;
    private static volatile int _RepositoryState = -1;
    private static File _RootPatchKey;
    private static String _RootPath;
    public static final UUID FEED_SEARCH_RESULT_ROOT_ID = UUID.randomUUID();
    private static final Feed _RootFeed = new Feed((UUID) null, (Feed) null);
    private static final Feed _GoUpPlaceholder = new Feed(UUID.randomUUID(), _RootFeed);
    static final TrackDictionary _TrackDictionary = new TrackDictionary();
    static long _LastSavedTime = System.currentTimeMillis();

    static {
        _GoUpPlaceholder.setName("..");
    }

    public static int repositoryLoadState() {
        return _RepositoryState;
    }

    public static boolean isRepositoryAvailable() {
        return _RepositoryState == 2 || _RepositoryState == 1 || _RepositoryState == 3;
    }

    public static String getRootPath() {
        return _RootPath;
    }

    public static void setRootPath(String str) {
        CoreHelper.writeTraceEntry(TAG, "Repository Root: " + str);
        _RootPath = str;
        _RootFeed.setFeedPath(_RootPath);
    }

    public static boolean isEmpty() {
        return getRootFeed().subFeeds().size() == 0;
    }

    public static Feed getRootFeed() {
        return _RootFeed;
    }

    public static Feed getGoUpPlaceholder() {
        return _GoUpPlaceholder;
    }

    public static int getFeedCount() {
        return getRootFeed().subFeeds().size();
    }

    public static int getTrackCount() {
        int size;
        synchronized (_TrackDictionary) {
            size = _TrackDictionary.size();
        }
        return size;
    }

    public static boolean initializeAndLoadRepository() {
        if (!canRepositoryBeLoaded()) {
            BeyondPodApplication.messageBus.publishEvent(new RepositoryEvents.RepositoryEvent(-1));
            return false;
        }
        try {
            setRootPath(Configuration.enclosureDownloadRoot());
            return RepositoryPersistence.loadRepository();
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to load the feed Repository. reason: ", e);
            return false;
        }
    }

    public static boolean canRepositoryBeLoaded() {
        return CoreHelper.externalStorageState().equals("mounted") && !StringUtils.isNullOrEmpty(Configuration.enclosureDownloadRoot());
    }

    public static void saveRepositoryAsync() {
        RepositoryPersistence.saveRepositoryAsync();
    }

    public static void saveAndUnloadRepositoryAsync() {
        RepositoryPersistence.saveAndUnloadRepositoryAsync();
    }

    public static void saveRepositorySync() {
        RepositoryPersistence.saveRepositorySync();
    }

    public static Date longTermRepositoryBackupDate() {
        return RepositoryPersistence.longTermRepositoryBackupDate();
    }

    public static void autoSaveRepository() {
        RepositoryPersistence.autoSaveRepository();
    }

    public static void saveRepositoryAsOpml(String str) throws Exception {
        RepositoryPersistence.saveRepositoryAsOpml(str);
    }

    /* loaded from: classes.dex */
    public static class EpisodeQuery {
        private final FeedCategory feedCategory;
        private final Feed feedFilter;
        private final int mediaFilter;
        public TrackList resultList;
        public int totalCount;
        public int visibleCount;

        public EpisodeQuery(Feed feed, int i, FeedCategory feedCategory) {
            this.feedFilter = feed;
            this.mediaFilter = i;
            this.feedCategory = feedCategory;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0083, code lost:
    
        if (r3.contentType() == 1) goto L38;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0051. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void queryEpisodes(mobi.beyondpod.rsscore.repository.FeedRepository.EpisodeQuery r7) {
        /*
            r0 = 0
            r7.totalCount = r0
            r7.visibleCount = r0
            mobi.beyondpod.rsscore.TrackList r1 = new mobi.beyondpod.rsscore.TrackList
            r1.<init>()
            r7.resultList = r1
            mobi.beyondpod.rsscore.TrackDictionary r1 = mobi.beyondpod.rsscore.repository.FeedRepository._TrackDictionary
            monitor-enter(r1)
            mobi.beyondpod.rsscore.TrackDictionary r2 = mobi.beyondpod.rsscore.repository.FeedRepository._TrackDictionary     // Catch: java.lang.Throwable -> L9d
            java.util.Collection r2 = r2.values()     // Catch: java.lang.Throwable -> L9d
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L9d
        L19:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L9d
            if (r3 == 0) goto L9b
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L9d
            mobi.beyondpod.rsscore.Track r3 = (mobi.beyondpod.rsscore.Track) r3     // Catch: java.lang.Throwable -> L9d
            mobi.beyondpod.rsscore.categories.FeedCategory r4 = mobi.beyondpod.rsscore.repository.FeedRepository.EpisodeQuery.access$000(r7)     // Catch: java.lang.Throwable -> L9d
            mobi.beyondpod.rsscore.categories.FeedCategory r5 = mobi.beyondpod.rsscore.categories.CategoryManager.CategoryNull     // Catch: java.lang.Throwable -> L9d
            if (r4 == r5) goto L3b
            mobi.beyondpod.rsscore.Feed r4 = r3.getParentFeed()     // Catch: java.lang.Throwable -> L9d
            mobi.beyondpod.rsscore.categories.FeedCategory r5 = mobi.beyondpod.rsscore.repository.FeedRepository.EpisodeQuery.access$000(r7)     // Catch: java.lang.Throwable -> L9d
            boolean r4 = mobi.beyondpod.rsscore.categories.CategoryManager.isInCategory(r4, r5)     // Catch: java.lang.Throwable -> L9d
            if (r4 == 0) goto L19
        L3b:
            mobi.beyondpod.rsscore.Feed r4 = mobi.beyondpod.rsscore.repository.FeedRepository.EpisodeQuery.access$100(r7)     // Catch: java.lang.Throwable -> L9d
            if (r4 == 0) goto L4c
            mobi.beyondpod.rsscore.Feed r4 = mobi.beyondpod.rsscore.repository.FeedRepository.EpisodeQuery.access$100(r7)     // Catch: java.lang.Throwable -> L9d
            boolean r4 = r3.belongsTo(r4)     // Catch: java.lang.Throwable -> L9d
            if (r4 != 0) goto L4c
            goto L19
        L4c:
            int r4 = mobi.beyondpod.rsscore.repository.FeedRepository.EpisodeQuery.access$200(r7)     // Catch: java.lang.Throwable -> L9d
            r5 = 1
            switch(r4) {
                case 0: goto L85;
                case 1: goto L7f;
                case 2: goto L77;
                case 3: goto L70;
                case 4: goto L69;
                case 5: goto L62;
                case 6: goto L55;
                default: goto L54;
            }     // Catch: java.lang.Throwable -> L9d
        L54:
            goto L87
        L55:
            boolean r4 = r3.isNew()     // Catch: java.lang.Throwable -> L9d
            if (r4 != 0) goto L85
            boolean r4 = r3.isPartialyPlayed()     // Catch: java.lang.Throwable -> L9d
            if (r4 == 0) goto L87
            goto L85
        L62:
            boolean r4 = r3.allowAutoDelete()     // Catch: java.lang.Throwable -> L9d
            if (r4 != 0) goto L87
            goto L85
        L69:
            boolean r4 = r3.isPartialyPlayed()     // Catch: java.lang.Throwable -> L9d
            if (r4 == 0) goto L87
            goto L85
        L70:
            boolean r4 = r3.isFullyDownloaded()     // Catch: java.lang.Throwable -> L9d
            if (r4 == 0) goto L87
            goto L85
        L77:
            int r4 = r3.contentType()     // Catch: java.lang.Throwable -> L9d
            r6 = 2
            if (r4 != r6) goto L87
            goto L85
        L7f:
            int r4 = r3.contentType()     // Catch: java.lang.Throwable -> L9d
            if (r4 != r5) goto L87
        L85:
            r4 = r5
            goto L88
        L87:
            r4 = r0
        L88:
            if (r4 == 0) goto L94
            mobi.beyondpod.rsscore.TrackList r4 = r7.resultList     // Catch: java.lang.Throwable -> L9d
            r4.add(r3)     // Catch: java.lang.Throwable -> L9d
            int r3 = r7.visibleCount     // Catch: java.lang.Throwable -> L9d
            int r3 = r3 + r5
            r7.visibleCount = r3     // Catch: java.lang.Throwable -> L9d
        L94:
            int r3 = r7.totalCount     // Catch: java.lang.Throwable -> L9d
            int r3 = r3 + r5
            r7.totalCount = r3     // Catch: java.lang.Throwable -> L9d
            goto L19
        L9b:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L9d
            return
        L9d:
            r7 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L9d
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.FeedRepository.queryEpisodes(mobi.beyondpod.rsscore.repository.FeedRepository$EpisodeQuery):void");
    }

    public static List<Track> getEpisodesByContentTypeAndCategory(int i, FeedCategory feedCategory) {
        ArrayList arrayList = new ArrayList();
        synchronized (_TrackDictionary) {
            for (Track track : _TrackDictionary.values()) {
                int contentType = track.contentType();
                if (contentType == -1) {
                    contentType = 1;
                }
                if (i == -2 || contentType == i) {
                    if (CategoryManager.isInCategory(track.getParentFeed(), feedCategory)) {
                        arrayList.add(track);
                    }
                }
            }
        }
        return arrayList;
    }

    public static List<Track> getLockedEpisodes() {
        ArrayList arrayList = new ArrayList();
        synchronized (_TrackDictionary) {
            for (Track track : _TrackDictionary.values()) {
                if (track.locked()) {
                    arrayList.add(track);
                }
            }
        }
        return arrayList;
    }

    public static List<Track> getAllDeletablePlayedEpisodes() {
        ArrayList arrayList = new ArrayList();
        synchronized (_TrackDictionary) {
            for (Track track : _TrackDictionary.values()) {
                if (track.isPlayed() && !track.locked() && track.getParentFeed().canDeleteTracks()) {
                    arrayList.add(track);
                }
            }
        }
        return arrayList;
    }

    public static FeedList getFeedsInCategory(FeedCategory feedCategory) {
        FeedList feedList = new FeedList();
        for (Feed feed : getRootFeed().subFeeds()) {
            if (feedCategory == CategoryManager.AllFeeds || (feed.getCategories() != null && feed.getCategories().isOfCategory(feedCategory))) {
                feedList.add(feed);
            }
        }
        return feedList;
    }

    public static Feed getFeedById(UUID uuid) {
        return getFeedByIdInternal(getRootFeed(), uuid);
    }

    private static Feed getFeedByIdInternal(Feed feed, UUID uuid) {
        Feed feedByIdInternal;
        if (feed.id().equals(uuid)) {
            return feed;
        }
        for (Feed feed2 : feed.subFeeds()) {
            if (feed2.id().equals(uuid)) {
                return feed2;
            }
            if (feed2.subFeeds().size() > 0 && (feedByIdInternal = getFeedByIdInternal(feed2, uuid)) != null) {
                return feedByIdInternal;
            }
        }
        return null;
    }

    public static Feed getFeedByUrl(String str) {
        for (Feed feed : getRootFeed().subFeeds()) {
            if (StringUtils.equalsIgnoreCase(feed.getFeedUrl(), str)) {
                return feed;
            }
        }
        return null;
    }

    public static Track getTrackByPathOrUrl(String str, String str2) {
        Track track = null;
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        synchronized (_TrackDictionary) {
            for (Track track2 : _TrackDictionary.values()) {
                if (!StringUtils.equalsIgnoreCase(track2.trackPath(), str) && (StringUtils.isNullOrEmpty(str2) || !StringUtils.equalsIgnoreCase(track2.getUrl(), str2))) {
                }
                track = track2;
            }
        }
        return track;
    }

    public static Track getTrackByPathQuick(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        return _TrackDictionary.get(str);
    }

    public static Track getLocalTrack(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        synchronized (_TrackDictionary) {
            for (Track track : _TrackDictionary.values()) {
                if (track.trackPath().contains(str)) {
                    return track;
                }
            }
            return null;
        }
    }

    public static Track getTrackByPath(String str) {
        Track track = null;
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        synchronized (_TrackDictionary) {
            Iterator<Track> it = _TrackDictionary.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Track next = it.next();
                if (StringUtils.equalsIgnoreCase(next.trackPath(), str)) {
                    track = next;
                    break;
                }
            }
        }
        return track;
    }

    public static Track getTrackByUrl(String str) {
        Track track = null;
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        synchronized (_TrackDictionary) {
            Iterator<Track> it = _TrackDictionary.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Track next = it.next();
                if (StringUtils.equalsIgnoreCase(next.getUrl(), str)) {
                    track = next;
                    break;
                }
            }
        }
        return track;
    }

    public static boolean containsTrackKey(String str) {
        boolean containsKey;
        synchronized (_TrackDictionary) {
            containsKey = _TrackDictionary.containsKey(str);
        }
        return containsKey;
    }

    public static void addTrack(Track track) {
        synchronized (_TrackDictionary) {
            _TrackDictionary.put(track.trackPath(), track);
        }
    }

    public static List<Track> getAllEpisodesSorted(int i) {
        TrackList trackList = new TrackList();
        synchronized (_TrackDictionary) {
            trackList.addAll(_TrackDictionary.values());
        }
        Collections.sort(trackList, new TrackSorter(i));
        return trackList;
    }

    public static void deleteFeedAndRelatedFoldersAsync(final Feed feed) {
        RepositoryPersistence.repositoryHandler().post(new Runnable() { // from class: mobi.beyondpod.rsscore.repository.FeedRepository.1
            @Override // java.lang.Runnable
            public void run() {
                FeedRepository.deleteFeedAndRelatedFoldersSync(Feed.this);
            }
        });
    }

    public static void deleteFeedAndRelatedFoldersSync(Feed feed) {
        try {
            if (feed.getType() == 1) {
                removeFromTrackDictionary(feed.tracksAndSubTracks());
                feed.subFeeds().clear();
            } else {
                TrackList trackList = new TrackList();
                feed.tracks().appendTo(trackList);
                Iterator<Track> it = trackList.iterator();
                while (it.hasNext()) {
                    deleteTrackSync(it.next());
                }
                if (FileUtils.directoryExists(feed.getFeedPath())) {
                    File file = new File(feed.getFeedPath());
                    if (file.list().length == 0) {
                        file.delete();
                        CoreHelper.writeTraceEntry(TAG, "Deleting feed download folder: " + feed.getFeedPath());
                    } else {
                        CoreHelper.writeLogEntry(TAG, "Unable to delete feed download folder: " + feed.getFeedPath());
                    }
                }
            }
            getRootFeed().subFeeds().remove(feed);
            RepositoryPersistence.deleteFeed(feed);
            if (Configuration.getActiveFeedFilter() == feed) {
                Configuration.setActiveFeedFilter(null);
            }
            onFeedDeleted(feed);
            RssFeedCache.deleteFeedCacheFor(feed);
            if (feed.getType() != 1) {
                FeedImageCache.deleteImageCacheFor(feed);
            }
            saveRepositoryAsync();
            StartupContentBuilder.backupRepositoriesAsync();
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to delete feed: " + feed.getName(), e);
        }
    }

    @Nullable
    public static Track findOrCreateLocalTrack(Feed feed, String str, Date date, String str2, String str3, String str4, String str5, String str6, String str7, boolean z) {
        if (!feed.ensureFeedHasDownloadPath()) {
            return null;
        }
        String combine = Path.combine(feed.getFeedPath(), CoreHelper.createFileNameFromUrl(str, feed.getForceUniqueTrackNames(), feed.getName(), str2, str3));
        Track trackByPathOrUrl = getTrackByPathOrUrl(combine, str);
        if (trackByPathOrUrl == null) {
            trackByPathOrUrl = new Track(combine, feed);
            if (!StringUtils.isNullOrEmpty(str4)) {
                trackByPathOrUrl.setName(str4);
            }
            trackByPathOrUrl.setUrl(str);
            trackByPathOrUrl.setProtocol(RssFeed.IMG_RSS_KEY);
            if (date == null) {
                date = new Date();
            }
            trackByPathOrUrl.setLastModifiedDate(date);
            trackByPathOrUrl.setRssItemID(str2);
            trackByPathOrUrl.setTrackDescription(str5);
            trackByPathOrUrl.setTrackPostTitle(str4);
            trackByPathOrUrl.setTrackPostUrl(str7);
            trackByPathOrUrl.setShowNotes(str6);
            if (!StringUtils.isNullOrEmpty(str3)) {
                trackByPathOrUrl.setContentMimeType(str3);
            }
            RepositoryPersistence.addChildTrack(feed, trackByPathOrUrl, true);
            EpisodeHistoryManager.addEpisodeAddedHistoryEntry(trackByPathOrUrl);
            if (z) {
                ChangeTracker.addLocalStreamableEpisodeAddedChange(trackByPathOrUrl);
            }
        }
        return trackByPathOrUrl;
    }

    public static TrackList getOldTracksForFeed(Feed feed, boolean z) {
        return getOldTracksForFeed(feed, feed.getKeepAtMostPodcasts(), feed.getMaximumPodcastAge(), z);
    }

    public static TrackList getOldTracksForFeed(Feed feed, int i, TimeSpan timeSpan, boolean z) {
        int size;
        TrackList trackList = new TrackList();
        if (!feed.allowsEnclosures() || feed.tracks().size() == 0 || !feed.canDeleteTracks()) {
            return trackList;
        }
        TrackList trackList2 = new TrackList();
        feed.tracks().appendTo(trackList2);
        Iterator it = trackList2.iterator();
        while (it.hasNext()) {
            if (!((Track) it.next()).allowAutoDelete()) {
                it.remove();
            }
        }
        TrackSorter trackSorter = new TrackSorter();
        trackSorter.SortOrder = 2;
        Collections.sort(trackList2, trackSorter);
        TrackList trackList3 = new TrackList();
        Iterator it2 = trackList2.iterator();
        while (it2.hasNext()) {
            Track track = (Track) it2.next();
            Date subtractFrom = timeSpan.subtractFrom(new Date());
            if (track.getLastModifiedDate() != null && track.getLastModifiedDate().getTime() < subtractFrom.getTime()) {
                trackList3.add(track);
            }
        }
        trackList2.removeAll(trackList3);
        trackList.addAll(trackList3);
        if (z) {
            i--;
        }
        if (trackList2.size() > i && (size = trackList2.size() - i) > 0) {
            trackList.addAll(trackList2.subList(0, size));
        }
        TrackList trackList4 = new TrackList();
        Iterator it3 = trackList.iterator();
        while (it3.hasNext()) {
            Track track2 = (Track) it3.next();
            if (track2.temporaryLocked()) {
                trackList4.add(track2);
            }
        }
        if (trackList4.size() > 0) {
            trackList.removeAll(trackList4);
        }
        return trackList;
    }

    public static void deleteTrackAsync(final Track track) {
        RepositoryPersistence.repositoryHandler().post(new Runnable() { // from class: mobi.beyondpod.rsscore.repository.FeedRepository.2
            @Override // java.lang.Runnable
            public void run() {
                FeedRepository.deleteTrackSync(Track.this);
            }
        });
    }

    public static void deleteTrackSync(Track track) {
        CoreHelper.writeTraceEntry(TAG, "Deleting track: " + track.getName() + " ...");
        try {
            onTrackBeforeDelete(track);
            if (DiskBasedCacheBP.deleteFileForKey("episode://" + track.trackPath())) {
                CoreHelper.writeTraceEntry(TAG, "Deleted track episode image cache");
            }
            track.delete();
            synchronized (_TrackDictionary) {
                _TrackDictionary.remove(track.trackPath());
            }
            track.getParentFeed().tracks().remove(track);
            ChangeTracker.addLocalEpisodeDeletedChange(track);
            onTrackDeleted(track);
            RepositoryPersistence.deleteTrack(track);
        } catch (Throwable th) {
            CoreHelper.writeLogEntry(TAG, "Unable to delete track! reason:" + th.getMessage());
            BeyondPodApplication.messageBus.publishEventAsync(RepositoryEvents.RepositoryEvent.fromException(new Exception("Unable to delete track " + track.displayName() + "!\n" + th.getMessage())));
        }
    }

    public static void notifyTrackChanged(Track track) {
        if (_RepositoryState != 2) {
            return;
        }
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(11, track));
        autoSaveRepository();
    }

    public static void notifyFeedChanged(Feed feed) {
        if (_RepositoryState != 2) {
            return;
        }
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(5, feed));
        autoSaveRepository();
    }

    private static void onFeedDeleted(Feed feed) {
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(7, feed));
    }

    private static void onTrackBeforeDelete(Track track) {
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(9, track));
    }

    private static void onTrackDeleted(Track track) {
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(10, track));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onTrackAdded(Track track) {
        if (_RepositoryState != 2) {
            return;
        }
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(8, track));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onRepositoryLoadComplete() {
        long currentTimeMillis = System.currentTimeMillis();
        _LastSavedTime = currentTimeMillis;
        _RepEndLoadTime = currentTimeMillis;
        CoreHelper.writeTraceEntry(TAG, "Repository load completed!");
        _RepositoryState = 2;
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(2));
        AnalyticsTracker.onRepositoryTracksLoaded(getTrackCount());
        DateTime.primeTimeZones();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onRepositoryScanningForChanges() {
        _RepXMlReadEndTime = System.currentTimeMillis();
        CoreHelper.writeTraceEntry(TAG, "Repository Reading completed!");
        _RepositoryState = 1;
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(1));
        AnalyticsTracker.onRepositoryFeedsLoaded(getFeedCount());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onRepositoryLoadStart() {
        _RepStartLoadTime = System.currentTimeMillis();
        CoreHelper.writeTraceEntry(TAG, "Repository load started...");
        _RepositoryState = 0;
        BeyondPodApplication.messageBus.publishEvent(new RepositoryEvents.RepositoryEvent(0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onRepositorySaveStart() {
        CoreHelper.writeTraceEntry(TAG, "Repository save started...");
        _RepStartSaveTime = System.currentTimeMillis();
        _RepositoryState = 3;
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onRepositorySaveComplete() {
        long currentTimeMillis = System.currentTimeMillis();
        _LastSavedTime = currentTimeMillis;
        _RepEndSaveTime = currentTimeMillis;
        CoreHelper.writeTraceEntry(TAG, "Repository save completed!");
        _RepositoryState = 2;
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(4));
    }

    public static String patchRootPath(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return str;
        }
        if (_RootPatchKey == null) {
            _RootPatchKey = Configuration.constructEnclosureDownloadRoot(Configuration.constructBeyondPodRootIn("/"));
        }
        int indexOf = str.indexOf(_RootPatchKey.getPath());
        if (indexOf < 0) {
            return str;
        }
        return CoreHelper.externalStorageDirectory().getAbsolutePath() + str.substring(indexOf);
    }

    public static String getRepositoryLoadStatistics() {
        return String.format(CoreHelper.getCurrentLocale(), "Loaded %d feeds and %d podcasts\n%s", Integer.valueOf(getRootFeed().subFeeds().size()), Integer.valueOf(getTrackCount()), "");
    }

    public static long getRepositoryLoadTimeInSec() {
        return (_RepEndLoadTime - _RepStartLoadTime) / 1000;
    }

    public static long getXMLReadTimeInSec() {
        return (_RepXMlReadEndTime - _RepStartLoadTime) / 1000;
    }

    public static long getRepositorySaveTimeInSec() {
        return (_RepEndSaveTime - _RepStartSaveTime) / 1000;
    }

    public static void notifyCategoryEvent(int i) {
        if (_RepositoryState != 2) {
            return;
        }
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(i));
        saveRepositoryAsync();
    }

    public static void refreshVirtualFeed(Feed feed) {
        TrackList tracksAndSubTracks = feed.tracksAndSubTracks();
        TrackDictionary trackDictionary = new TrackDictionary();
        removeFromTrackDictionary(tracksAndSubTracks);
        feed.subFeeds().clear();
        Iterator<Track> it = tracksAndSubTracks.iterator();
        while (it.hasNext()) {
            Track next = it.next();
            next.initRowID(null);
            trackDictionary.put(next.trackPath(), next);
        }
        RepositoryPersistence.buildFeedList(feed, trackDictionary);
    }

    public static void removeFromTrackDictionary(TrackList trackList) {
        if (trackList == null) {
            return;
        }
        try {
            synchronized (_TrackDictionary) {
                Iterator<Track> it = trackList.iterator();
                while (it.hasNext()) {
                    _TrackDictionary.remove(it.next().trackPath());
                }
            }
            RepositoryPersistence.deleteTracks(trackList);
        } catch (Exception e) {
            CoreHelper.writeLogEntry(TAG, "Unable to delete track from repository! reason:" + e.getMessage());
        }
    }

    public static void unloadRepository() {
        CoreHelper.writeTraceEntry(TAG, "Unloading the feed Repository!");
        getRootFeed().subFeeds().clear();
        clearTrackDictionary();
        _RepositoryState = -1;
        CategoryManager.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void clearTrackDictionary() {
        synchronized (_TrackDictionary) {
            _TrackDictionary.clear();
        }
    }

    public static void deleteAllRepositoryFiles() {
        RepositoryPersistence.deleteRepositoryFiles();
    }

    public static void deleteScheduledTask(ScheduledTask scheduledTask) {
        RepositoryPersistence.deleteScheduledTask(scheduledTask);
    }

    /* loaded from: classes.dex */
    public static class FeedSearchArguments {
        public boolean leafFeedsOnly = true;
        private Pattern searchPattern;
        private String searchString;

        public FeedSearchArguments(String str) {
            if (StringUtils.isNullOrEmpty(str)) {
                return;
            }
            this.searchString = str.trim();
            this.searchPattern = Pattern.compile(str, 10);
        }

        public boolean isValid() {
            return !StringUtils.isNullOrEmpty(this.searchString);
        }

        public boolean matches(Feed feed) {
            String name = feed.getName();
            return name != null && this.searchPattern.matcher(name).find() && (!this.leafFeedsOnly || feed.subFeeds().size() == 0);
        }

        public boolean matches(Track track) {
            String displayName = track.displayName();
            String trackDescription = track.trackDescription();
            return (displayName != null && this.searchPattern.matcher(displayName).find()) || (trackDescription != null && this.searchPattern.matcher(trackDescription).find());
        }

        public boolean matches(FeedCategory feedCategory) {
            String name = feedCategory.name();
            return name != null && this.searchPattern.matcher(name).find();
        }
    }

    public static Feed searchForFeeds(Feed feed, FeedSearchArguments feedSearchArguments) {
        Feed feed2 = new Feed(FEED_SEARCH_RESULT_ROOT_ID, feed);
        if (feed == null) {
            return feed2;
        }
        if (feedSearchArguments == null || !feedSearchArguments.isValid()) {
            return feed;
        }
        searchForFeeds(feed2, feed, feedSearchArguments);
        return feed2;
    }

    private static void searchForFeeds(Feed feed, Feed feed2, FeedSearchArguments feedSearchArguments) {
        for (Feed feed3 : feed2.subFeeds()) {
            if (feedSearchArguments.matches(feed3)) {
                feed.subFeeds().add(feed3);
            }
            if (feed3.subFeeds().size() > 0) {
                searchForFeeds(feed, feed3, feedSearchArguments);
            }
        }
    }

    public static TrackList searchForTracks(FeedSearchArguments feedSearchArguments) {
        TrackList trackList = new TrackList();
        if (feedSearchArguments == null || !feedSearchArguments.isValid()) {
            return trackList;
        }
        synchronized (_TrackDictionary) {
            for (Track track : _TrackDictionary.values()) {
                if (feedSearchArguments.matches(track)) {
                    trackList.add(track);
                }
            }
        }
        return trackList;
    }

    public static CategoryList searchForCategory(FeedSearchArguments feedSearchArguments) {
        CategoryList categoryList = new CategoryList();
        if (feedSearchArguments == null || !feedSearchArguments.isValid()) {
            return categoryList;
        }
        Iterator<FeedCategory> it = CategoryManager.getCategoriesForAssignment().iterator();
        while (it.hasNext()) {
            FeedCategory next = it.next();
            if (feedSearchArguments.matches(next)) {
                categoryList.add(next);
            }
        }
        return categoryList;
    }

    public static String convertToRelativePath(String str) {
        if (str == null || !str.startsWith(Configuration.enclosureDownloadRoot())) {
            return str;
        }
        return "~" + str.substring(Configuration.enclosureDownloadRoot().length());
    }

    public static String convertToAbsolutePath(String str) {
        if (str == null || !str.startsWith("~")) {
            return str;
        }
        return Configuration.enclosureDownloadRoot() + str.substring(1);
    }

    public static void clearTrackImageCaches() {
        synchronized (_TrackDictionary) {
            Iterator<Track> it = _TrackDictionary.values().iterator();
            while (it.hasNext()) {
                it.next().setTrackImagePath(null);
            }
        }
        saveRepositoryAsync();
    }

    public static Feed getVirtualFeedByDownloadPath(String str) {
        return getVirtualFeedByDownloadPathInternal(getRootFeed(), str);
    }

    private static Feed getVirtualFeedByDownloadPathInternal(Feed feed, String str) {
        Feed virtualFeedByDownloadPathInternal;
        for (Feed feed2 : feed.subFeeds()) {
            if (feed2.getFeedPath() != null && feed2.getFeedPath().compareToIgnoreCase(str) == 0) {
                return feed2;
            }
            if (feed2.subFeeds().size() > 0 && (virtualFeedByDownloadPathInternal = getVirtualFeedByDownloadPathInternal(feed2, str)) != null) {
                return virtualFeedByDownloadPathInternal;
            }
        }
        return null;
    }

    public static FeedList getUpdatableFeedsInCategory(FeedCategory feedCategory) {
        FeedList feedList = new FeedList();
        for (Feed feed : getRootFeed().subFeeds()) {
            if (CategoryManager.isInCategory(feed, feedCategory) && feed.hasUrl()) {
                feedList.add(feed);
            }
        }
        return feedList;
    }

    public static boolean isDownloadFolderInUse(String str) {
        Iterator<Feed> it = getRootFeed().subFeeds().iterator();
        while (it.hasNext()) {
            if (StringUtils.equalsIgnoreCase(it.next().getFeedPath(), str)) {
                return true;
            }
        }
        return false;
    }

    public static TrackList filterTracks(TrackFilter trackFilter) {
        TrackList trackList = new TrackList();
        synchronized (_TrackDictionary) {
            for (Track track : _TrackDictionary.values()) {
                if (trackFilter.apply(track)) {
                    trackList.add(track);
                }
            }
        }
        return trackList;
    }

    public static TrackList allResumableDownloads() {
        return filterTracks(new TrackFilter() { // from class: mobi.beyondpod.rsscore.repository.FeedRepository.3
            @Override // mobi.beyondpod.rsscore.TrackFilter
            public boolean apply(Track track) {
                return (track == null || !track.hasDownloadStarted() || track.isFullyDownloaded()) ? false : true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void touchAllTracks() {
        synchronized (_TrackDictionary) {
            Iterator<Track> it = _TrackDictionary.values().iterator();
            while (it.hasNext()) {
                it.next().setIsModified(true);
            }
        }
    }
}
