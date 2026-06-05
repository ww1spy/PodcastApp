package mobi.beyondpod.ui.views.myepisodesview;

import android.content.Context;
import android.os.Handler;
import android.support.v4.content.ContextCompat;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.FeedSorter;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.TimeBands;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.ui.core.AdManager;
import mobi.beyondpod.ui.views.base.columnlistview.MultiItemRowListAdapter;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;
import mobi.beyondpod.ui.views.myepisodesview.HomeScreenContentBuilder;
import mobi.beyondpod.ui.views.myepisodesview.SectionMyEpisodesHeaderAdapter;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardGuidedTour;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip;

/* loaded from: classes.dex */
public class MyEpisodesListViewAdapter extends SectionedListViewAdapter implements SectionMyEpisodesHeaderAdapter.IMyEpisodesHeaderAdapterOwner {
    public static final int SCOPE_CURRENT_CATEGORY = 1;
    private static int _DefaultDividerColor;
    private FeedCategory _CategoryFilter;
    private Feed _FeedFilter;
    private Handler _Handler;
    private MyEpisodesListView _Owner;
    private int _TotalEpisodeCount;
    private int _VisibleEpisodeCount;
    ImageLoader.ImageListener _prefetchImageListener;
    private static final String THIS = CoreHelper.loadResourceString(R.string.podcasts_view_adapter_this);
    private static final String ALL_EPISODES = CoreHelper.loadResourceString(R.string.category_all_episodes);

    public void enableFastScrollIfNeeded() {
    }

    public MyEpisodesListViewAdapter(MyEpisodesListView myEpisodesListView) {
        super(new UUID[]{InfoCardTip.AdapterID, InfoCardGuidedTour.AdapterID, SectionHeaderAdapter.AdapterID, EpisodeCardAdapter.AdapterID, SectionEmptyListAdapter.AdapterID, SectionMyEpisodesHeaderAdapter.AdapterID, SectionAdAdapter.AdapterID});
        this._Handler = new Handler();
        this._prefetchImageListener = new ImageLoader.ImageListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListViewAdapter.1
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
            }

            @Override // com.android.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            }
        };
        this._CategoryFilter = null;
        this._FeedFilter = null;
        this._Owner = myEpisodesListView;
        _DefaultDividerColor = ContextCompat.getColor(myEpisodesListView.getContext(), R.color.bp_orange);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void reloadContent() {
        /*
            r5 = this;
            mobi.beyondpod.rsscore.categories.FeedCategory r0 = mobi.beyondpod.rsscore.Configuration.getActiveFeedCategory()
            mobi.beyondpod.rsscore.Feed r1 = mobi.beyondpod.rsscore.Configuration.getActiveFeedFilter()
            mobi.beyondpod.rsscore.Feed r2 = r5._FeedFilter
            r3 = 0
            if (r2 != 0) goto L13
            mobi.beyondpod.rsscore.categories.FeedCategory r2 = r5._CategoryFilter
            if (r2 != 0) goto L13
        L11:
            r2 = r3
            goto L23
        L13:
            r2 = 1
            if (r1 == 0) goto L1b
            mobi.beyondpod.rsscore.Feed r4 = r5._FeedFilter
            if (r4 == r1) goto L11
            goto L23
        L1b:
            mobi.beyondpod.rsscore.categories.FeedCategory r4 = r5._CategoryFilter
            if (r4 != r0) goto L23
            mobi.beyondpod.rsscore.Feed r4 = r5._FeedFilter
            if (r4 == r1) goto L11
        L23:
            r5._FeedFilter = r1
            mobi.beyondpod.rsscore.Feed r1 = r5._FeedFilter
            if (r1 != 0) goto L2c
            r5._CategoryFilter = r0
            goto L30
        L2c:
            mobi.beyondpod.rsscore.categories.FeedCategory r0 = mobi.beyondpod.rsscore.categories.CategoryManager.CategoryNull
            r5._CategoryFilter = r0
        L30:
            android.os.Handler r0 = r5._Handler
            r1 = 0
            r0.removeCallbacksAndMessages(r1)
            r5._TotalEpisodeCount = r3
            r5._VisibleEpisodeCount = r3
            r5.setSections(r1)
            if (r2 != 0) goto L43
            r5.reloadContentInternal()
            goto L52
        L43:
            r5.refreshContent()
            android.os.Handler r0 = r5._Handler
            mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListViewAdapter$2 r1 = new mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListViewAdapter$2
            r1.<init>()
            r2 = 100
            r0.postDelayed(r1, r2)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListViewAdapter.reloadContent():void");
    }

    public void refreshContent() {
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadContentInternal() {
        ArrayList arrayList = new ArrayList();
        generateInfoCards(arrayList);
        if (this._CategoryFilter.equals(CategoryManager.CategoryHome) && this._FeedFilter == null) {
            generateHomeScreenItems(arrayList);
        } else {
            generateMyEpisodeItems(arrayList);
        }
        setSections(arrayList);
        notifyDataSetChanged();
        this._Owner.onAdapterDataLoaded(this._VisibleEpisodeCount, this._TotalEpisodeCount);
        enableFastScrollIfNeeded();
    }

    private void generateInfoCards(List<SectionedListViewAdapter.ISectionedAdapter> list) {
        SectionedListViewAdapter.ISectionedAdapter generateInfoCardIfNeeded = InfoCardManager.generateInfoCardIfNeeded(this._Owner.getContext(), this._Owner);
        if (generateInfoCardIfNeeded != null) {
            list.add(generateInfoCardIfNeeded);
        }
    }

    private void generateAdCard(List<SectionedListViewAdapter.ISectionedAdapter> list) {
        if (AdManager.areAdsEnabled()) {
            list.add(new SectionAdAdapter(this._Owner.getContext()));
        }
    }

    private void generateMyEpisodeItems(List<SectionedListViewAdapter.ISectionedAdapter> list) {
        FeedRepository.EpisodeQuery episodeQuery = new FeedRepository.EpisodeQuery(this._FeedFilter, Configuration.getActiveMediaFilter(), this._CategoryFilter);
        FeedRepository.queryEpisodes(episodeQuery);
        this._TotalEpisodeCount = episodeQuery.totalCount;
        this._VisibleEpisodeCount = episodeQuery.visibleCount;
        if (this._VisibleEpisodeCount == 0) {
            addListEmptySection(list);
            return;
        }
        list.add(new SectionMyEpisodesHeaderAdapter(this._Owner.getContext(), this));
        generateAdCard(list);
        int localOrInheritedTrackSortOrder = this._FeedFilter != null ? this._FeedFilter.getLocalOrInheritedTrackSortOrder() : Configuration.getPodcastsSortOrder();
        if (Configuration.getGroupByFeedIfShowingCategoryTracks() && this._FeedFilter == null) {
            generateItemsGroupedByFeedUsingFeedSort(episodeQuery.resultList, list);
        } else {
            generateItemsUsingDefaultSortSettings(episodeQuery.resultList, localOrInheritedTrackSortOrder, list);
        }
    }

    private void generateHomeScreenItems(List<SectionedListViewAdapter.ISectionedAdapter> list) {
        HomeScreenContentBuilder.HomeScreenSections build = new HomeScreenContentBuilder(this._Owner.getContext()).build();
        int numEpisodes = build.numEpisodes();
        this._TotalEpisodeCount = numEpisodes;
        this._VisibleEpisodeCount = numEpisodes;
        if (this._VisibleEpisodeCount == 0) {
            addListEmptySection(list);
            return;
        }
        Iterator<HomeScreenContentBuilder.SectionInfo> it = build.iterator();
        while (it.hasNext()) {
            HomeScreenContentBuilder.SectionInfo next = it.next();
            if (!build.isEmpty()) {
                list.add(new SectionHeaderAdapter(this._Owner.getContext(), next.SectionName));
                addEpisodeSection(next.EpisodeBucket, list);
            }
        }
    }

    private void generateItemsUsingDefaultSortSettings(TrackList trackList, int i, List<SectionedListViewAdapter.ISectionedAdapter> list) {
        Collections.sort(trackList, new TrackSorter(i));
        addEpisodeSection(trackList, list);
    }

    private void generateItemsGroupedByFeedUsingFeedSort(TrackList trackList, List<SectionedListViewAdapter.ISectionedAdapter> list) {
        FeedList feedList = new FeedList();
        Collections.sort(trackList, new TrackSorter(Configuration.getPodcastsSortOrder()));
        Iterator<Track> it = trackList.iterator();
        while (it.hasNext()) {
            Track next = it.next();
            if (!feedList.contains(next.getParentFeed())) {
                feedList.add(next.getParentFeed());
            }
        }
        Collections.sort(feedList, new FeedSorter(Configuration.getFeedsSortOrder()));
        TrackSorter trackSorter = new TrackSorter();
        Iterator<Feed> it2 = feedList.iterator();
        while (it2.hasNext()) {
            Feed next2 = it2.next();
            TrackList trackList2 = new TrackList();
            list.add(new SectionHeaderAdapter(this._Owner.getContext(), next2.getName()));
            Iterator<Track> it3 = trackList.iterator();
            while (it3.hasNext()) {
                Track next3 = it3.next();
                if (next3.getParentFeed().equals(next2)) {
                    trackList2.add(next3);
                }
            }
            trackSorter.SortOrder = next2.getLocalOrInheritedTrackSortOrder();
            Collections.sort(trackList2, trackSorter);
            addEpisodeSection(trackList2, list);
        }
    }

    private void generateItemsGroupedByDate(TrackList trackList, int i, List<SectionedListViewAdapter.ISectionedAdapter> list) {
        int i2;
        Collections.sort(trackList, new TrackSorter(i));
        Calendar calendar = Calendar.getInstance();
        TimeBands timeBands = new TimeBands();
        TrackList trackList2 = new TrackList();
        Iterator<Track> it = trackList.iterator();
        int i3 = -1;
        while (it.hasNext()) {
            Track next = it.next();
            calendar.setTime(next.getLastModifiedDate());
            int dateBand = timeBands.getDateBand(calendar);
            if (i3 != dateBand) {
                addEpisodeSection(trackList2, list);
                switch (dateBand) {
                    case 0:
                        i2 = R.string.date_time_today;
                        break;
                    case 1:
                        if (i3 != -1) {
                            i2 = R.string.date_time_also_this_week;
                            break;
                        } else {
                            i2 = R.string.date_time_this_week;
                            break;
                        }
                    case 2:
                        if (i3 != -1) {
                            i2 = R.string.date_time_also_this_month;
                            break;
                        } else {
                            i2 = R.string.date_time_this_month;
                            break;
                        }
                    case 3:
                        if (i3 != -1) {
                            i2 = R.string.date_time_also_this_year;
                            break;
                        } else {
                            i2 = R.string.date_time_this_year;
                            break;
                        }
                    case 4:
                        i2 = R.string.date_time_last_week;
                        break;
                    case 5:
                        i2 = R.string.date_time_last_month;
                        break;
                    default:
                        i2 = R.string.date_time_older;
                        break;
                }
                list.add(new SectionHeaderAdapter(this._Owner.getContext(), this._Owner.getResources().getString(i2)));
                trackList2.clear();
                i3 = dateBand;
            }
            trackList2.add(next);
        }
        addEpisodeSection(trackList2, list);
    }

    private void addEpisodeSection(TrackList trackList, List<SectionedListViewAdapter.ISectionedAdapter> list) {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int dimensionPixelSize3;
        if (trackList == null || trackList.size() == 0) {
            return;
        }
        int dimensionPixelSize4 = this._Owner.getContext().getResources().getDimensionPixelSize(R.dimen.card_view_item_h_margin);
        int dimensionPixelSize5 = this._Owner.getContext().getResources().getDimensionPixelSize(R.dimen.card_view_item_top_margin);
        switch (Configuration.episodeCardSize()) {
            case 2:
                dimensionPixelSize = this._Owner.getContext().getResources().getDimensionPixelSize(R.dimen.card_view_cell_height_med);
                dimensionPixelSize3 = dimensionPixelSize5;
                dimensionPixelSize2 = dimensionPixelSize;
                break;
            case 3:
                dimensionPixelSize2 = this._Owner.getContext().getResources().getDimensionPixelSize(R.dimen.card_view_cell_height_small);
                dimensionPixelSize3 = this._Owner.getContext().getResources().getDimensionPixelSize(R.dimen.card_view_item_top_margin_small);
                break;
            default:
                dimensionPixelSize = this._Owner.getContext().getResources().getDimensionPixelSize(R.dimen.card_view_cell_height_large);
                dimensionPixelSize3 = dimensionPixelSize5;
                dimensionPixelSize2 = dimensionPixelSize;
                break;
        }
        list.add(new MultiItemRowListAdapter(this._Owner.getContext(), new EpisodeCardAdapter(this._Owner.getContext(), this._Owner, trackList), this._Owner.getContext().getResources().getInteger(R.integer.content_grid_columns), dimensionPixelSize4, dimensionPixelSize3, dimensionPixelSize2));
    }

    private void addListEmptySection(List<SectionedListViewAdapter.ISectionedAdapter> list) {
        if (this._TotalEpisodeCount == 0) {
            Feed activeFeedFilter = Configuration.getActiveFeedFilter();
            if (UpdateAndDownloadManager.isWorking() && activeFeedFilter == null) {
                list.add(new SectionEmptyListAdapter(this._Owner.getContext(), this._Owner, this._Owner.getContext().getString(R.string.podcast_list_empty_all_feeds_working), null));
                return;
            }
            if (activeFeedFilter == null) {
                Context context = this._Owner.getContext();
                MyEpisodesListView myEpisodesListView = this._Owner;
                Context context2 = this._Owner.getContext();
                Object[] objArr = new Object[1];
                objArr[0] = this._CategoryFilter == null ? THIS : this._CategoryFilter.name();
                list.add(new SectionEmptyListAdapter(context, myEpisodesListView, context2.getString(R.string.podcast_list_empty_category, objArr), null));
                return;
            }
            list.add(new SectionEmptyListAdapter(this._Owner.getContext(), this._Owner, this._Owner.getContext().getString(R.string.podcast_list_empty_feed, activeFeedFilter.getName()), activeFeedFilter.hasUrl() ? this._Owner.getContext().getString(R.string.podcast_list_open_all_published) : ""));
            return;
        }
        list.add(new SectionEmptyListAdapter(this._Owner.getContext(), this._Owner, this._Owner.getContext().getString(R.string.podcast_list_empty_filter, this._Owner.getResources().getStringArray(R.array.settings_myepisodesFilter_text)[CoreHelper.findIndexInNumArray(this._Owner.getContext(), R.array.settings_myepisodesFilter_values, Integer.valueOf(Configuration.getActiveMediaFilter()))]), this._Owner.getResources().getString(R.string.podcast_list_show_all_episodes)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTotalEpisodeCount() {
        return this._TotalEpisodeCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVisibleEpisodeCount() {
        return this._VisibleEpisodeCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackList generatePlaylist(Track track) {
        TrackList trackList = new TrackList();
        boolean z = false;
        for (Object obj : getAllSectionItems()) {
            if (obj instanceof Track) {
                if (track == null || track.equals(obj)) {
                    z = true;
                }
                if (z) {
                    Track track2 = (Track) obj;
                    if (!track2.isPlayed()) {
                        trackList.add(track2);
                    }
                }
            }
        }
        return trackList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasPlayedEpisodes() {
        for (Object obj : getAllSectionItems()) {
            if ((obj instanceof Track) && ((Track) obj).isPlayed()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackList getAllPlayedEpisodes() {
        TrackList trackList = new TrackList();
        for (Object obj : getAllSectionItems()) {
            if (obj instanceof Track) {
                Track track = (Track) obj;
                if (track.isPlayed()) {
                    trackList.add(track);
                }
            }
        }
        return trackList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackList getOldestEpisodes() {
        TrackList trackList = new TrackList();
        for (Object obj : getAllSectionItems()) {
            if (obj instanceof Track) {
                trackList.add((Track) obj);
            }
        }
        Collections.sort(trackList, new TrackSorter(2));
        return trackList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackList getLargestPodcasts() {
        TrackList trackList = new TrackList();
        for (Object obj : getAllSectionItems()) {
            if (obj instanceof Track) {
                trackList.add((Track) obj);
            }
        }
        Collections.sort(trackList, new TrackSorter(10));
        return trackList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackList getAllEpisodes() {
        TrackList trackList = new TrackList();
        for (Object obj : getAllSectionItems()) {
            if (obj instanceof Track) {
                trackList.add((Track) obj);
            }
        }
        return trackList;
    }

    public CoreHelper.TrackSizeInfo getCurrentTracksSizeOnDisk() {
        CoreHelper.TrackSizeInfo trackSizeInfo = new CoreHelper.TrackSizeInfo();
        for (Object obj : getAllSectionItems()) {
            if (obj instanceof Track) {
                Track track = (Track) obj;
                trackSizeInfo.sizeOnDisk += track.getSizeOnDisk();
                if (track.contentType() != 3) {
                    trackSizeInfo.totalTime += track.getTotalTime();
                    if (track.getTotalTime() == 0) {
                        trackSizeInfo.totalTimeIsApproximate = true;
                    }
                }
            }
        }
        return trackSizeInfo;
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.SectionMyEpisodesHeaderAdapter.IMyEpisodesHeaderAdapterOwner
    public String getHeaderTitle() {
        return this._FeedFilter != null ? this._FeedFilter.getName() : CategoryManager.AllFeeds.equals(this._CategoryFilter) ? ALL_EPISODES : this._CategoryFilter.name();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.SectionMyEpisodesHeaderAdapter.IMyEpisodesHeaderAdapterOwner
    public CoreHelper.TrackSizeInfo getTotalSize() {
        return getCurrentTracksSizeOnDisk();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.SectionMyEpisodesHeaderAdapter.IMyEpisodesHeaderAdapterOwner
    public int getNumEpisodes() {
        return getAllSectionItems().size();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.SectionMyEpisodesHeaderAdapter.IMyEpisodesHeaderAdapterOwner
    public int getDividerColor() {
        if (this._FeedFilter != null || this._CategoryFilter == null) {
            return _DefaultDividerColor;
        }
        int color = this._CategoryFilter.color();
        return color == 0 ? _DefaultDividerColor : color;
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

    public void onActivityDestroy() {
        SectionedListViewAdapter.ISectionedAdapter section = getSection(SectionAdAdapter.AdapterID);
        if (section != null) {
            ((SectionAdAdapter) section).onDestroy();
        }
    }

    public void onAfterActivate() {
        resumeAds();
    }

    public void onAfterDeactivate() {
        pauseAds();
    }
}
