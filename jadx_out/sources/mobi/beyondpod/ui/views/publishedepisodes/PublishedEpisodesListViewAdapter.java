package mobi.beyondpod.ui.views.publishedepisodes;

import android.content.Context;
import android.view.View;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.FeedContentDataSource;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;
import mobi.beyondpod.ui.views.myepisodesview.SectionAdAdapter;
import mobi.beyondpod.ui.views.myepisodesview.SectionEmptyListAdapter;
import mobi.beyondpod.ui.views.myepisodesview.SectionHeaderAdapter;

/* loaded from: classes.dex */
public class PublishedEpisodesListViewAdapter extends SectionedListViewAdapter {
    private static final String TAG = "PublishedEpisodesListViewAdapter";
    private Context _Context;
    private boolean _IsLoadingData;
    private boolean _IsPreviewMode;
    private PublishedEpisodesListView _Owner;

    public PublishedEpisodesListViewAdapter(Context context, PublishedEpisodesListView publishedEpisodesListView, boolean z) {
        super(new UUID[]{SectionHeaderAdapter.AdapterID, PublishedEpisodesCardAdapter.AdapterID, SectionEmptyListAdapter.AdapterID, SectionAdAdapter.AdapterID});
        this._IsLoadingData = false;
        this._Owner = publishedEpisodesListView;
        this._Context = context;
        this._IsPreviewMode = z;
        refreshSections();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void refreshSections() {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView r1 = r10._Owner
            android.content.Context r1 = r1.getContext()
            android.content.res.Resources r1 = r1.getResources()
            r2 = 2131165287(0x7f070067, float:1.7944787E38)
            int r7 = r1.getDimensionPixelSize(r2)
            mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView r1 = r10._Owner
            android.content.Context r1 = r1.getContext()
            android.content.res.Resources r1 = r1.getResources()
            r2 = 2131165288(0x7f070068, float:1.7944789E38)
            int r1 = r1.getDimensionPixelSize(r2)
            boolean r2 = r10._IsPreviewMode
            r3 = 2131165283(0x7f070063, float:1.7944779E38)
            if (r2 == 0) goto L3f
            mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView r2 = r10._Owner
            android.content.Context r2 = r2.getContext()
            android.content.res.Resources r2 = r2.getResources()
            int r2 = r2.getDimensionPixelSize(r3)
        L3c:
            r8 = r1
            r9 = r2
            goto L8c
        L3f:
            int r2 = mobi.beyondpod.rsscore.Configuration.publishedEpisodeCardSize()
            switch(r2) {
                case 2: goto L7a;
                case 3: goto L55;
                default: goto L46;
            }
        L46:
            mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView r2 = r10._Owner
            android.content.Context r2 = r2.getContext()
            android.content.res.Resources r2 = r2.getResources()
            int r2 = r2.getDimensionPixelSize(r3)
            goto L3c
        L55:
            mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView r1 = r10._Owner
            android.content.Context r1 = r1.getContext()
            android.content.res.Resources r1 = r1.getResources()
            r2 = 2131165285(0x7f070065, float:1.7944783E38)
            int r1 = r1.getDimensionPixelSize(r2)
            mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView r2 = r10._Owner
            android.content.Context r2 = r2.getContext()
            android.content.res.Resources r2 = r2.getResources()
            r3 = 2131165289(0x7f070069, float:1.794479E38)
            int r2 = r2.getDimensionPixelSize(r3)
            r9 = r1
            r8 = r2
            goto L8c
        L7a:
            mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView r2 = r10._Owner
            android.content.Context r2 = r2.getContext()
            android.content.res.Resources r2 = r2.getResources()
            r3 = 2131165284(0x7f070064, float:1.794478E38)
            int r2 = r2.getDimensionPixelSize(r3)
            goto L3c
        L8c:
            boolean r1 = mobi.beyondpod.ui.core.AdManager.areAdsEnabled()
            if (r1 == 0) goto L9c
            mobi.beyondpod.ui.views.myepisodesview.SectionAdAdapter r1 = new mobi.beyondpod.ui.views.myepisodesview.SectionAdAdapter
            android.content.Context r2 = r10._Context
            r1.<init>(r2)
            r0.add(r1)
        L9c:
            mobi.beyondpod.ui.views.base.columnlistview.MultiItemRowListAdapter r1 = new mobi.beyondpod.ui.views.base.columnlistview.MultiItemRowListAdapter
            android.content.Context r4 = r10._Context
            mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardAdapter r5 = new mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardAdapter
            android.content.Context r2 = r10._Context
            r5.<init>(r2, r10)
            mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView r2 = r10._Owner
            android.content.Context r2 = r2.getContext()
            android.content.res.Resources r2 = r2.getResources()
            r3 = 2131361819(0x7f0a001b, float:1.8343401E38)
            int r6 = r2.getInteger(r3)
            r3 = r1
            r3.<init>(r4, r5, r6, r7, r8, r9)
            r0.add(r1)
            r10.setSections(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListViewAdapter.refreshSections():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAfterActivate() {
        FeedContentDataSource.setLoadListener(new FeedContentDataSource.LoadListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListViewAdapter.1
            @Override // mobi.beyondpod.ui.views.FeedContentDataSource.LoadListener
            public void onLoadCompleted(boolean z) {
                PublishedEpisodesListViewAdapter.this._IsLoadingData = false;
                PublishedEpisodesListViewAdapter.this.refreshInternal();
                PublishedEpisodesListViewAdapter.this._Owner.onAdapterDataLoadCompleted(z);
            }

            @Override // mobi.beyondpod.ui.views.FeedContentDataSource.LoadListener
            public void onLoadProgress() {
                int size = FeedContentDataSource.items().size();
                if (size > 0) {
                    if (size % (size < 20 ? 5 : 40) == 0) {
                        PublishedEpisodesListViewAdapter.this.refreshInternal();
                    }
                }
            }

            @Override // mobi.beyondpod.ui.views.FeedContentDataSource.LoadListener
            public void onLoadStarted() {
                PublishedEpisodesListViewAdapter.this._IsLoadingData = true;
                PublishedEpisodesListViewAdapter.this.refreshInternal();
                PublishedEpisodesListViewAdapter.this._Owner.onAdapterDataLoadStarted();
            }
        });
        resumeAds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAfterDeactivate() {
        FeedContentDataSource.setLoadListener(null);
        pauseAds();
    }

    public void refreshItems() {
        refreshInternal();
    }

    public void loadItems(Feed feed, boolean z) {
        FeedContentDataSource.loadItems(feed, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RssFeed currentRssFeed() {
        return FeedContentDataSource.currentRssFeed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Feed currentFeed() {
        return FeedContentDataSource.currentFeed();
    }

    public void filterItems(int i) {
        if (FeedContentDataSource.currentRssFeed() == null) {
            return;
        }
        FeedContentDataSource.filterItems(i);
        refreshInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasHiddenItems() {
        return FeedContentDataSource.hasHiddenItems();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasReadItems() {
        return FeedContentDataSource.hasReadItems();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasUnReadItems() {
        return FeedContentDataSource.hasUnReadItems();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isLoadingData() {
        return this._IsLoadingData;
    }

    public void saveCurrentState(MasterViewState masterViewState) {
        FeedContentDataSource.saveCurrentState(masterViewState);
    }

    public void restoreCurrentState(MasterViewState masterViewState) {
        FeedContentDataSource.restoreCurrentState(masterViewState);
    }

    public void restoreItemsAfterConfigurationChange() {
        if (FeedContentDataSource.currentRssFeed() != null) {
            this._Owner.onAdapterDataLoadStarted();
            refreshInternal();
            if (FeedContentDataSource.isLoadingData()) {
                return;
            }
            this._Owner.onAdapterDataLoadCompleted(FeedContentDataSource.isDataLoaded());
            return;
        }
        if (FeedContentDataSource.currentFeed() != null) {
            FeedContentDataSource.loadItems(FeedContentDataSource.currentFeed(), true);
        }
    }

    public void clearItems() {
        FeedContentDataSource.clearItems();
        refreshInternal();
    }

    void refreshInternal() {
        notifyDataSetChanged();
        this._Owner.setFastScrollEnabled(FeedContentDataSource.items().size() > 250);
    }

    public List<Track> generatePlaylist(Track track) {
        Track trackByNameOrUrl;
        TrackList trackList = new TrackList();
        TrackList trackList2 = new TrackList();
        currentFeed().tracks().appendTo(trackList2);
        Iterator<RssFeedItem> it = FeedContentDataSource.items().iterator();
        boolean z = false;
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && (trackByNameOrUrl = trackList2.getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url)) != null) {
                if (track == null || track.equals(trackByNameOrUrl)) {
                    z = true;
                }
                if (z && !trackByNameOrUrl.isPlayed()) {
                    trackList.add(trackByNameOrUrl);
                }
            }
        }
        return trackList;
    }

    public ImageLoader getImageLoader() {
        return this._Owner.getImageLoader();
    }

    public void onItemSelected(View view, RssFeedItem rssFeedItem) {
        this._Owner.onItemSelected(view, rssFeedItem);
    }

    public void onAddRemovePlaylist(RssFeedItem rssFeedItem) {
        this._Owner.onAddRemovePlaylist(rssFeedItem);
    }

    public void onPlayPause(RssFeedItem rssFeedItem) {
        this._Owner.onPlayPause(rssFeedItem);
    }

    public void onDownload(RssFeedItem rssFeedItem) {
        this._Owner.onDownload(rssFeedItem);
    }

    public void onItemLongPressed(RssFeedItem rssFeedItem) {
        this._Owner.onItemLongPressed(rssFeedItem);
    }

    public boolean isItemSelected(RssFeedItem rssFeedItem) {
        return this._Owner.isItemSelected(rssFeedItem);
    }

    public void showCardMenu(View view, RssFeedItem rssFeedItem) {
        this._Owner.showCardMenu(view, rssFeedItem);
    }

    public boolean isMultiSelecting() {
        return this._Owner.isMultiSelecting();
    }

    public boolean canDownloadRemoteImages() {
        return this._Owner.canDownloadRemoteImages();
    }

    public boolean hasPlayedMyEpisodes() {
        return getAllPlayedMyEpisodes().size() > 0;
    }

    public TrackList getAllPlayedMyEpisodes() {
        Track trackByNameOrUrl;
        TrackList trackList = new TrackList();
        Iterator<RssFeedItem> it = FeedContentDataSource.items().iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && (trackByNameOrUrl = currentFeed().tracks().getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url)) != null && trackByNameOrUrl.isPlayed()) {
                trackList.add(trackByNameOrUrl);
            }
        }
        return trackList;
    }

    public boolean isInPreviewMode() {
        return this._IsPreviewMode;
    }

    public void onActivityDestroy() {
        SectionedListViewAdapter.ISectionedAdapter section = getSection(SectionAdAdapter.AdapterID);
        if (section != null) {
            ((SectionAdAdapter) section).onDestroy();
        }
    }

    private void pauseAds() {
        SectionedListViewAdapter.ISectionedAdapter section = getSection(SectionAdAdapter.AdapterID);
        if (section != null) {
            ((SectionAdAdapter) section).onPause();
        }
    }

    private void resumeAds() {
        SectionedListViewAdapter.ISectionedAdapter section = getSection(SectionAdAdapter.AdapterID);
        if (section != null) {
            ((SectionAdAdapter) section).onResume();
        }
    }
}
