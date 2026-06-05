package mobi.beyondpod.ui.views.myepisodesview;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.SwipeRefreshLayout;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.base.BPSwipeRefreshLayout;
import mobi.beyondpod.ui.views.base.IView;
import mobi.beyondpod.ui.views.base.TitleBar;
import mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView;

/* loaded from: classes.dex */
public class MyEpisodesHolder extends BPSwipeRefreshLayout implements IView, RepositoryEvents.RepositoryEventListener, UpdateAndDownloadEvents.UpdateAndDownloadEventListener, PlayListEvents.PlayListEventListener, MyEpisodesListView.IMyEpisodesListviewOwner, SwipeRefreshLayout.OnRefreshListener {
    public static final int FILTER_MENU_GROUP = 55;
    public static final int MENU_CARD_LAYOUT_GROUP = 66;
    public static final int MENU_DELETE_PALYED = 33;
    public static final int SORT_MENU_GROUP = 44;
    public MyEpisodesListView PodcastList;
    IPodcastsViewOwner _Owner;

    /* loaded from: classes.dex */
    public interface IPodcastsViewOwner {
        void autoExpandPlayerOnNextPlay();

        void enableDisableActionBarScroll(boolean z);

        FragmentActivity getOwnerActivity();

        void openFeed(Feed feed, boolean z, boolean z2);

        void openTrackPropertiesDialog(View view, Track track, TrackList trackList);

        void refreshActiveViewTitle();

        void runOnUiThread(Runnable runnable);
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        if (updateActionUpdatesAllFeeds()) {
            CommandManager.cmdUpdateFeedOrCategory(getContext(), null, CategoryManager.AllFeeds);
        } else {
            CommandManager.cmdUpdateCurrentFeedOrCategory(getContext());
        }
        setRefreshing(false);
    }

    public void onActivityDestroy() {
        this.PodcastList.onActivityDestroy();
    }

    public MyEpisodesHolder(Context context, IPodcastsViewOwner iPodcastsViewOwner) {
        super(context);
        this._Owner = iPodcastsViewOwner;
        this.PodcastList = new MyEpisodesListView(context);
        addView(this.PodcastList, new FrameLayout.LayoutParams(-1, -1));
        setOnRefreshListener(this);
        setColorSchemeResources(R.color.bp_orange, android.R.color.holo_green_light, android.R.color.holo_orange_light, android.R.color.holo_blue_bright);
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public void onAfterActivate() {
        this.PodcastList.onAfterActivate();
        enablePullToRefreshIfAllowed();
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public void onAfterDeactivate() {
        BeyondPodApplication.messageBus.unsubscribe(this, PlayListEvents.PlayListEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
        this.PodcastList.onAfterDeactivate();
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public void onBeforeActivate() {
        this.PodcastList.onBeforeActivate();
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, PlayListEvents.PlayListEvent.class);
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type == 11 && repositoryEvent.Track != null) {
            this.PodcastList.refreshContent();
        }
        if (repositoryEvent.Type == 8 || repositoryEvent.Type == 10) {
            this.PodcastList.reloadContent();
        }
        if (repositoryEvent.Type == 7 || repositoryEvent.Type == 16) {
            this.PodcastList.reloadContent();
        }
        if (repositoryEvent.Type == 2) {
            this.PodcastList.reloadContent();
        }
    }

    @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadEvents.UpdateAndDownloadEventListener
    public void onUpdateAndDownloadEvent(UpdateAndDownloadEvents.UpdateAndDownloadEvent updateAndDownloadEvent) {
        if (updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_STARTED || updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_COMPLETED || updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_QUEUE_CHANGED) {
            this.PodcastList.refreshContent();
        }
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public boolean prepareOptionsMenu(Menu menu) {
        int localOrInheritedTrackSortOrder;
        String[] stringArray;
        String[] stringArray2;
        Feed activeFeedFilter = Configuration.getActiveFeedFilter();
        if (!CategoryManager.CategoryHome.equals(Configuration.getActiveFeedCategory())) {
            if (!this.PodcastList.isEmpty()) {
                SubMenu icon = menu.addSubMenu(0, -1, 1, R.string.MENU_sort_podcasts).setIcon(R.drawable.ic_action_sort_2);
                icon.getItem().setShowAsAction(0);
                if (activeFeedFilter == null) {
                    localOrInheritedTrackSortOrder = Configuration.getGroupByFeedIfShowingCategoryTracks() ? -1 : Configuration.getPodcastsSortOrder();
                    stringArray = getResources().getStringArray(R.array.settings_myepisodesSortOrder_text);
                    stringArray2 = getResources().getStringArray(R.array.settings_myepisodesSortOrder_values);
                } else {
                    localOrInheritedTrackSortOrder = activeFeedFilter.getLocalOrInheritedTrackSortOrder();
                    stringArray = getResources().getStringArray(R.array.settings_trackSortOrder_text);
                    stringArray2 = getResources().getStringArray(R.array.settings_trackSortOrder_values);
                }
                for (int i = 0; i != stringArray.length; i++) {
                    int intValue = StringUtils.tryParseIntFromString(stringArray2[i], 0).intValue();
                    MenuItem add = icon.add(44, intValue, i, stringArray[i]);
                    if (localOrInheritedTrackSortOrder == intValue) {
                        add.setCheckable(true).setChecked(true);
                    }
                }
            }
            SubMenu icon2 = menu.addSubMenu(0, -1, 5, R.string.MENU_filter_episodes).setIcon(R.drawable.ic_action_filter);
            icon2.getItem().setShowAsAction(0);
            int activeMediaFilter = Configuration.getActiveMediaFilter();
            String[] stringArray3 = getResources().getStringArray(R.array.settings_myepisodesFilter_text);
            String[] stringArray4 = getResources().getStringArray(R.array.settings_myepisodesFilter_values);
            for (int i2 = 0; i2 != stringArray3.length; i2++) {
                int intValue2 = StringUtils.tryParseIntFromString(stringArray4[i2], 0).intValue();
                MenuItem add2 = icon2.add(55, intValue2, i2, stringArray3[i2]);
                if (activeMediaFilter == intValue2) {
                    add2.setCheckable(true).setChecked(true);
                }
            }
        }
        if (this.PodcastList.hasPlayedEpisodes()) {
            menu.add(0, 33, 22, R.string.MENU_delete_all_played_podcasts);
        }
        menu.add(0, 66, 25, R.string.MENU_card_size_small).setCheckable(true).setChecked(Configuration.episodeCardSize() == 3).setShowAsAction(0);
        return true;
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public TitleBar.TitleInfo getViewTitle() {
        return this.PodcastList.getViewTitle();
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public boolean handleOptionsMenu(int i, MenuItem menuItem) {
        if (menuItem.getGroupId() == 44) {
            Feed activeFeedFilter = Configuration.getActiveFeedFilter();
            if (activeFeedFilter == null) {
                if (menuItem.getItemId() < 0) {
                    Configuration.setGroupByFeedIfShowingCategoryTracks(true);
                } else {
                    Configuration.setGroupByFeedIfShowingCategoryTracks(false);
                    Configuration.setPodcastsSortOrder(menuItem.getItemId());
                }
            } else {
                while (activeFeedFilter.isSubFeed()) {
                    activeFeedFilter = activeFeedFilter.parentFeed();
                }
                activeFeedFilter.setTrackSortOrder(menuItem.getItemId());
            }
            this.PodcastList.reloadContent();
            return true;
        }
        if (menuItem.getGroupId() == 55) {
            Configuration.setActiveMediaFilter(menuItem.getItemId());
            this.PodcastList.reloadContent();
            return true;
        }
        if (menuItem.getItemId() == 66) {
            Configuration.setEpisodeCardSize(Configuration.episodeCardSize() == 3 ? 1 : 3);
            this.PodcastList.notifyCardSizeChanged();
            return true;
        }
        if (menuItem.getItemId() != 33) {
            return false;
        }
        CommandManager.cmdDeletePodcasts(getContext(), this.PodcastList.getAllPlayedEpisodes());
        refreshActiveViewTitle();
        return true;
    }

    public void initializeView() {
        this.PodcastList.initializeView(this);
    }

    private void enablePullToRefreshIfAllowed() {
        if (!Configuration.allowPullToRefresh()) {
            setEnabled(false);
            return;
        }
        if (Configuration.getActiveFeedFilter() != null) {
            setEnabled(!r0.isSubFeed());
        } else if (updateActionUpdatesAllFeeds()) {
            setEnabled(true);
        } else {
            setEnabled(CommandManager.hasUpdatableFeedsInCategory(Configuration.getActiveFeedCategory()));
        }
    }

    private boolean updateActionUpdatesAllFeeds() {
        return Configuration.getActiveFeedFilter() == null && CategoryManager.CategoryHome.equals(Configuration.getActiveFeedCategory());
    }

    @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
    public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
        if (playListEvent.Type == 0) {
            this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder.1
                @Override // java.lang.Runnable
                public void run() {
                    MyEpisodesHolder.this.PodcastList.refreshContent();
                }
            });
        }
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.IMyEpisodesListviewOwner
    public void openTrackPropertiesDialog(View view, Track track, TrackList trackList) {
        this._Owner.openTrackPropertiesDialog(view, track, trackList);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.IMyEpisodesListviewOwner
    public void refreshActiveViewTitle() {
        this._Owner.refreshActiveViewTitle();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.IMyEpisodesListviewOwner
    public void runOnUiThread(Runnable runnable) {
        this._Owner.runOnUiThread(runnable);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.IMyEpisodesListviewOwner
    public FragmentActivity getOwnerActivity() {
        return this._Owner.getOwnerActivity();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.IMyEpisodesListviewOwner
    public void enableDisablePullToRefresh(boolean z) {
        if (!z) {
            setEnabled(false);
        } else {
            enablePullToRefreshIfAllowed();
        }
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.IMyEpisodesListviewOwner
    public void enableDisableActionBarScroll(boolean z) {
        this._Owner.enableDisableActionBarScroll(z);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.IMyEpisodesListviewOwner
    public void autoExpandPlayerOnNextPlay() {
        this._Owner.autoExpandPlayerOnNextPlay();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.IMyEpisodesListviewOwner
    public void openFeed(Feed feed, boolean z, boolean z2) {
        this._Owner.openFeed(feed, z, z2);
    }
}
