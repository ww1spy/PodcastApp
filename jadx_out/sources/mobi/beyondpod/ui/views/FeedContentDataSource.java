package mobi.beyondpod.ui.views;

import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.rsscore.rss.parsers.FeedParseData;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.views.base.FeedContentDataSourceEvents;

/* loaded from: classes.dex */
public class FeedContentDataSource {
    private static final String TAG = "FeedContentDataSource";
    private static LoadFeedContentAsync _AsyncLoader = null;
    private static CollectionChangedListener _CollectionListener = null;
    private static volatile Feed _CurrentFeed = null;
    private static volatile RssFeed _CurrentRssFeed = null;
    private static boolean _IsLoadingData = false;
    private static LoadListener _LoadListener;
    private static long _LoadStartTime;
    private static Exception _ParseException;
    static ArrayList<String> _SavedItemIds;
    static long _SavedItemIdsTimestamp;
    static ArrayList<RssFeedItem> _Items = new ArrayList<>();
    private static TrackList _OrphanedTracks = new TrackList();

    /* loaded from: classes.dex */
    public interface CollectionChangedListener {
        void onCollectionChanged();
    }

    /* loaded from: classes.dex */
    public interface LoadListener {
        void onLoadCompleted(boolean z);

        void onLoadProgress();

        void onLoadStarted();
    }

    public static boolean isEpisodeOnlyFilter(int i) {
        return i == 2 || i == 3;
    }

    public static void setLoadListener(LoadListener loadListener) {
        _LoadListener = loadListener;
    }

    public static void setCollectionChangedListener(CollectionChangedListener collectionChangedListener) {
        _CollectionListener = collectionChangedListener;
    }

    private static long currentFeedTimeStamp() {
        Date cachedFileDate;
        if (_CurrentFeed == null || (cachedFileDate = RssFeedCache.getCachedFileDate(_CurrentFeed.getFeedUri())) == null) {
            return 0L;
        }
        return cachedFileDate.getTime();
    }

    public static void loadItems(Feed feed, boolean z) {
        if (_AsyncLoader != null && !_AsyncLoader.isCancelled()) {
            _AsyncLoader.cancel(true);
            CoreHelper.writeTraceEntry(TAG, "Found that FeedContentData is currently loading! Canceling the existing load...");
        }
        if (_CurrentFeed == null || _CurrentFeed != feed || _CurrentFeed.hasNewContent() || !isDataLoaded()) {
            z = true;
        }
        if (_SavedItemIds != null && (_CurrentFeed != feed || _SavedItemIdsTimestamp != currentFeedTimeStamp())) {
            _SavedItemIds = null;
        }
        if (feed.numUnreadItems() > 0 && _Items.size() == 0 && !feed.hasNewContent()) {
            z = true;
        }
        if (z) {
            _AsyncLoader = new LoadFeedContentAsync();
            _AsyncLoader.execute(feed);
        } else if (_LoadListener != null) {
            _LoadListener.onLoadStarted();
            _LoadListener.onLoadCompleted(isDataLoaded());
        }
    }

    public static RssFeed currentRssFeed() {
        return _CurrentRssFeed;
    }

    public static Feed currentFeed() {
        return _CurrentFeed;
    }

    public static ArrayList<RssFeedItem> items() {
        return _Items;
    }

    /* loaded from: classes.dex */
    private static class LoadFeedContentAsync extends AsyncTask<Feed, RssFeedItem, Void> {
        FeedParseData data = new FeedParseData(0);

        LoadFeedContentAsync() {
            this.data.setParseListener(new FeedParseData.ParseListener() { // from class: mobi.beyondpod.ui.views.FeedContentDataSource.LoadFeedContentAsync.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.FeedParseData.ParseListener
                public void onParseCompleted(RssFeed rssFeed) {
                }

                @Override // mobi.beyondpod.rsscore.rss.parsers.FeedParseData.ParseListener
                public void onParseStarted(RssFeed rssFeed) {
                }

                @Override // mobi.beyondpod.rsscore.rss.parsers.FeedParseData.ParseListener
                public void onItemParsed(RssFeedItem rssFeedItem) {
                    LoadFeedContentAsync.this.publishProgress(rssFeedItem);
                }
            });
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Feed... feedArr) {
            Feed unused = FeedContentDataSource._CurrentFeed = feedArr[0];
            Exception unused2 = FeedContentDataSource._ParseException = null;
            RssFeed unused3 = FeedContentDataSource._CurrentRssFeed = null;
            try {
                if (FeedContentDataSource._CurrentFeed != null) {
                    if (FeedContentDataSource._CurrentFeed.hasUrl()) {
                        RssFeedCache.loadFromCache(FeedContentDataSource._CurrentFeed, this.data);
                        if (this.data.hasParseFailed()) {
                            Exception unused4 = FeedContentDataSource._ParseException = this.data.ParseException;
                        }
                        if (FeedContentDataSource._ParseException == null && this.data.RssFeed != null && FeedParseData.isRssFeedType(this.data.ParsedFeedType)) {
                            RssFeed unused5 = FeedContentDataSource._CurrentRssFeed = this.data.RssFeed;
                        }
                        if (FeedContentDataSource._CurrentRssFeed != null) {
                            FeedContentDataSource._CurrentRssFeed.SyncAllDownloadedWithRead(false);
                            FeedContentDataSource._CurrentRssFeed.SyncOwnerFeedReadStatus();
                            FeedContentDataSource._CurrentFeed.setHasNewContent(false);
                        }
                    } else {
                        RssFeed unused6 = FeedContentDataSource._CurrentRssFeed = new RssFeed();
                        FeedContentDataSource._CurrentRssFeed.FeedID = FeedContentDataSource._CurrentFeed.id();
                    }
                }
            } catch (Exception e) {
                RssFeed unused7 = FeedContentDataSource._CurrentRssFeed = null;
                Exception unused8 = FeedContentDataSource._ParseException = e;
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            FeedContentDataSource._Items.clear();
            if (FeedContentDataSource._CollectionListener != null) {
                FeedContentDataSource._CollectionListener.onCollectionChanged();
            }
            boolean unused = FeedContentDataSource._IsLoadingData = true;
            long unused2 = FeedContentDataSource._LoadStartTime = System.currentTimeMillis();
            if (FeedContentDataSource._LoadListener != null) {
                FeedContentDataSource._LoadListener.onLoadStarted();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r8) {
            if (FeedContentDataSource._CurrentFeed != null && FeedContentDataSource._CurrentRssFeed != null) {
                if (!allowAddOnProgress()) {
                    Iterator<RssFeedItem> it = FeedContentDataSource._CurrentRssFeed.Items.iterator();
                    while (it.hasNext()) {
                        addItemIfNeeded(it.next());
                    }
                }
                FeedContentDataSource.mergeOrphanEpisodesForFeed(true);
            }
            boolean unused = FeedContentDataSource._IsLoadingData = false;
            CoreHelper.writeTraceEntry(FeedContentDataSource.TAG, "Loaded " + FeedContentDataSource._Items.size() + " items in " + (System.currentTimeMillis() - FeedContentDataSource._LoadStartTime) + " ms.");
            FeedContentDataSource._SavedItemIds = null;
            FeedContentDataSource._SavedItemIdsTimestamp = -1L;
            if (FeedContentDataSource._LoadListener != null) {
                FeedContentDataSource._LoadListener.onLoadCompleted(FeedContentDataSource.isDataLoaded());
            }
            if (FeedContentDataSource._CollectionListener != null) {
                FeedContentDataSource._CollectionListener.onCollectionChanged();
            }
            BeyondPodApplication.messageBus.publishEvent(new FeedContentDataSourceEvents.FeedContentListViewDataSourceEvent(FeedContentDataSource.class, FeedContentDataSourceEvents.FeedContentListViewDataSourceEvent.LOAD_COMPLETED));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(RssFeedItem... rssFeedItemArr) {
            if (allowAddOnProgress()) {
                addItemIfNeeded(rssFeedItemArr[0]);
            }
            if (FeedContentDataSource._LoadListener != null) {
                FeedContentDataSource._LoadListener.onLoadProgress();
            }
        }

        private boolean allowAddOnProgress() {
            return (FeedContentDataSource._CurrentFeed == null || FeedContentDataSource._CurrentFeed.getForceFeedItemSort() != -1 || FeedContentDataSource.isEpisodeOnlyFilter(FeedContentDataSource._CurrentFeed.getItemFilter())) ? false : true;
        }

        private void addItemIfNeeded(RssFeedItem rssFeedItem) {
            if (FeedContentDataSource._SavedItemIds == null) {
                if (FeedContentDataSource.allowItemForCurrentFilter(rssFeedItem, FeedContentDataSource._CurrentFeed.getItemFilter())) {
                    FeedContentDataSource.addItem(rssFeedItem);
                }
            } else if (FeedContentDataSource._SavedItemIds.contains(rssFeedItem.itemID())) {
                FeedContentDataSource.addItem(rssFeedItem);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mergeOrphanEpisodesForFeed(boolean z) {
        _OrphanedTracks.clear();
    }

    private static ArrayList<RssFeedItem> FindAllMockRssItems() {
        ArrayList<RssFeedItem> arrayList = new ArrayList<>();
        Iterator<RssFeedItem> it = _Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.isMockItem().booleanValue()) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    private static void refreshOrphanedTracks() {
        Track trackByNameOrUrl;
        _OrphanedTracks = new TrackList();
        _CurrentFeed.tracks().appendTo(_OrphanedTracks);
        Iterator<RssFeedItem> it = _CurrentRssFeed.Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && !next.isMockItem().booleanValue() && (trackByNameOrUrl = _CurrentFeed.tracks().getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url)) != null) {
                _OrphanedTracks.remove(trackByNameOrUrl);
            }
        }
        Collections.sort(_OrphanedTracks, new TrackSorter(_CurrentFeed.getLocalOrInheritedTrackSortOrder()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addItem(RssFeedItem rssFeedItem) {
        if (_Items.contains(rssFeedItem)) {
            return;
        }
        rssFeedItem.Title = CoreHelper.cleanTitle(CoreHelper.htmlDecode(rssFeedItem.Title));
        rssFeedItem.shortTaglessDescription();
        _Items.add(rssFeedItem);
    }

    public static boolean isLoadingData() {
        return _IsLoadingData;
    }

    public static boolean isDataLoaded() {
        return (_CurrentRssFeed == null || _IsLoadingData) ? false : true;
    }

    public static boolean isItemsFiltered() {
        return (_CurrentFeed == null || _CurrentFeed.getItemFilter() == 0) ? false : true;
    }

    public static void saveCurrentState(MasterViewState masterViewState) {
        masterViewState.contentViewFeed = _CurrentFeed;
        if (isDataLoaded() && isItemsFiltered()) {
            masterViewState.feedContentItems = _Items;
        }
        masterViewState.feedContentRssFeed = _CurrentRssFeed;
        masterViewState.feedContentItemIdsTimeStamp = currentFeedTimeStamp();
    }

    public static void restoreCurrentState(MasterViewState masterViewState) {
        _CurrentFeed = masterViewState.contentViewFeed;
        _SavedItemIds = masterViewState.feedContentItemIds;
        _SavedItemIdsTimestamp = masterViewState.feedContentItemIdsTimeStamp;
        _Items.clear();
        _CurrentRssFeed = masterViewState.feedContentRssFeed;
        if (masterViewState.feedContentItems != null) {
            _Items = masterViewState.feedContentItems;
        }
    }

    public static RssFeedItem getNextPrevItem(int i, RssFeedItem rssFeedItem) {
        int indexOf = _Items.indexOf(rssFeedItem) + i;
        if (indexOf < 0 || indexOf > _Items.size() - 1) {
            return null;
        }
        return _Items.get(indexOf);
    }

    public static RssFeedItem getItemById(String str) {
        Iterator<RssFeedItem> it = items().iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (str.equals(next.itemID())) {
                return next;
            }
        }
        return null;
    }

    public static void clearItems() {
        _Items.clear();
        _OrphanedTracks.clear();
        _CurrentFeed = null;
        _CurrentRssFeed = null;
        _SavedItemIds = null;
        if (_CollectionListener != null) {
            _CollectionListener.onCollectionChanged();
        }
    }

    public static boolean isEmpty() {
        return _Items.size() == 0;
    }

    public static void showAllReadItems() {
        _Items.clear();
        Iterator<RssFeedItem> it = currentRssFeed().Items.iterator();
        while (it.hasNext()) {
            addItem(it.next());
        }
        mergeOrphanEpisodesForFeed(false);
        if (_CollectionListener != null) {
            _CollectionListener.onCollectionChanged();
        }
    }

    public static void hideReadItems() {
        _Items.clear();
        Iterator<RssFeedItem> it = currentRssFeed().Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (!next.getRead()) {
                addItem(next);
            }
        }
        mergeOrphanEpisodesForFeed(false);
        if (_CollectionListener != null) {
            _CollectionListener.onCollectionChanged();
        }
    }

    public static void filterItems(int i) {
        _Items.clear();
        Iterator<RssFeedItem> it = currentRssFeed().Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (allowItemForCurrentFilter(next, _CurrentFeed.getItemFilter())) {
                addItem(next);
            }
        }
        mergeOrphanEpisodesForFeed(false);
        if (_CollectionListener != null) {
            _CollectionListener.onCollectionChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean allowItemForCurrentFilter(RssFeedItem rssFeedItem, int i) {
        Track localEnclosureTrack;
        switch (i) {
            case 0:
                return true;
            case 1:
                return !rssFeedItem.getRead();
            case 2:
                return (rssFeedItem.enclosure() == null || rssFeedItem.enclosure().getLocalEnclosureTrack() == null) ? false : true;
            case 3:
                return (rssFeedItem.enclosure() == null || (localEnclosureTrack = rssFeedItem.enclosure().getLocalEnclosureTrack()) == null || !localEnclosureTrack.isFullyDownloaded()) ? false : true;
            default:
                return false;
        }
    }

    public static boolean hasHiddenItems() {
        return visibleItemCount() != totalItemCount();
    }

    public static boolean hasReadItems() {
        if (_CurrentRssFeed == null) {
            return false;
        }
        Iterator<RssFeedItem> it = items().iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.getRead() && !next.isMockItem().booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasUnReadItems() {
        if (_CurrentRssFeed == null) {
            return false;
        }
        Iterator<RssFeedItem> it = items().iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (!next.getRead() && !next.isMockItem().booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasEnclosures() {
        if (_CurrentRssFeed == null) {
            return false;
        }
        Iterator<RssFeedItem> it = items().iterator();
        while (it.hasNext()) {
            if (it.next().enclosure() != null) {
                return true;
            }
        }
        return false;
    }

    public static boolean currentFeedHasReadItems() {
        if (_CurrentRssFeed == null) {
            return false;
        }
        Iterator<RssFeedItem> it = _CurrentRssFeed.Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.getRead() && !next.isMockItem().booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static boolean currentFeedHasLocalEpisodes() {
        return _CurrentFeed != null && _CurrentFeed.hasPodcasts();
    }

    public static int unreadItemsCount() {
        Iterator<RssFeedItem> it = items().iterator();
        int i = 0;
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (!next.getRead() && !next.isMockItem().booleanValue()) {
                i++;
            }
        }
        return i;
    }

    public static int currentFeedUnreadItemsCount() {
        int i = 0;
        if (_CurrentRssFeed == null) {
            return 0;
        }
        Iterator<RssFeedItem> it = _CurrentRssFeed.Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (!next.getRead() && !next.isMockItem().booleanValue()) {
                i++;
            }
        }
        return i;
    }

    public static int visibleItemCount() {
        return _Items.size();
    }

    public static int totalItemCount() {
        return (_CurrentRssFeed != null ? _CurrentRssFeed.Items.size() : 0) + _OrphanedTracks.size();
    }
}
