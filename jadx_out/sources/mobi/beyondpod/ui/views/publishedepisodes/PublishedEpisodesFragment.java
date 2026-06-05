package mobi.beyondpod.ui.views.publishedepisodes;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.SwipeRefreshLayout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.views.MasterView;
import mobi.beyondpod.ui.views.base.BPSwipeRefreshLayout;
import mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView;

/* loaded from: classes.dex */
public class PublishedEpisodesFragment extends Fragment implements PublishedEpisodesListView.FeedContentListViewOwner, SwipeRefreshLayout.OnRefreshListener {
    public static final String TAG = "PublishedEpisodesFragment";
    public PublishedEpisodesListView FeedContent;
    private BPSwipeRefreshLayout _PullToRefreshContainer;

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void subscribeToCurrentFeed(Feed feed) {
    }

    public void restoreState(MasterViewState masterViewState) {
        this.FeedContent.restoreState(masterViewState);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.master_view_published_episodes_fragment, viewGroup);
        this._PullToRefreshContainer = (BPSwipeRefreshLayout) inflate.findViewById(R.id.publishedepisodes_holder);
        this.FeedContent = (PublishedEpisodesListView) inflate.findViewById(R.id.publishedepisodeslist);
        this.FeedContent.initialize(this);
        this._PullToRefreshContainer.setOnRefreshListener(this);
        this._PullToRefreshContainer.setColorSchemeResources(R.color.bp_orange, android.R.color.holo_green_light, android.R.color.holo_orange_light, android.R.color.holo_blue_bright);
        return inflate;
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void refreshActiveViewTitle() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            ((MasterView) activity).refreshActionBarTitle();
        }
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public Feed getDefaultFeed() {
        return ((MasterView) getActivity()).Workspace.selectedFeed();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this._PullToRefreshContainer.setEnabled(Configuration.allowPullToRefresh());
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void onFeedUpdateStarted() {
        if (isDetached()) {
            return;
        }
        getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesFragment.1
            @Override // java.lang.Runnable
            public void run() {
                PublishedEpisodesFragment.this._PullToRefreshContainer.setRefreshing(true);
            }
        });
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void onFeedUpdateCompleted() {
        if (!isAdded() || isDetached() || getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesFragment.2
            @Override // java.lang.Runnable
            public void run() {
                PublishedEpisodesFragment.this._PullToRefreshContainer.setRefreshing(false);
            }
        });
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void enableDisablePullToRefresh(boolean z) {
        this._PullToRefreshContainer.setEnabled(z && Configuration.allowPullToRefresh());
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void enableDisableActionBarScroll(boolean z) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            ((MasterView) activity).enableAppBarAutoScroll(!z);
        }
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void onPlayPause(RssFeedItem rssFeedItem) {
        Track prepareEnclosureForPlayback = CommandManager.prepareEnclosureForPlayback(getActivity(), rssFeedItem, false, true);
        if (prepareEnclosureForPlayback == null) {
            return;
        }
        if (Configuration.shouldAutoOpenPlayer(CommandManager.cmdPlayPauseTrack(getActivity(), prepareEnclosureForPlayback, Configuration.autoPlaylistEnabled() ? this.FeedContent.generatePlaylist(prepareEnclosureForPlayback) : null))) {
            ((MasterView) getActivity()).Workspace.autoExpandPlayerOnNextPlay();
        }
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        if (this.FeedContent.refreshCurrentFeed(false, false)) {
            return;
        }
        this._PullToRefreshContainer.setRefreshing(false);
    }
}
