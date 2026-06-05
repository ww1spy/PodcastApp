package mobi.beyondpod.ui.views.myepisodesview;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.views.MasterView;
import mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder;

/* loaded from: classes.dex */
public class MyEpisodesFragment extends Fragment implements MyEpisodesHolder.IPodcastsViewOwner {
    public static final String TAG = "MyEpisodesFragment";
    public MyEpisodesHolder Podcasts;

    public void restoreState(MasterViewState masterViewState) {
        this.Podcasts.initializeView();
        this.Podcasts.PodcastList.restoreState(masterViewState);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.Podcasts = new MyEpisodesHolder(getActivity(), this);
        this.Podcasts.setVisibility(8);
        return this.Podcasts;
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder.IPodcastsViewOwner
    public void openTrackPropertiesDialog(View view, Track track, TrackList trackList) {
        CommandManager.cmdOpenEpisodeNotes(track, trackList, view, getActivity());
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder.IPodcastsViewOwner
    public void runOnUiThread(Runnable runnable) {
        FragmentActivity ownerActivity = getOwnerActivity();
        if (ownerActivity != null) {
            ownerActivity.runOnUiThread(runnable);
        }
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder.IPodcastsViewOwner
    public void refreshActiveViewTitle() {
        if (isDetached() || !isAdded() || getActivity() == null) {
            return;
        }
        ((MasterView) getActivity()).refreshActionBarTitle();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder.IPodcastsViewOwner
    public FragmentActivity getOwnerActivity() {
        return getActivity();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder.IPodcastsViewOwner
    public void autoExpandPlayerOnNextPlay() {
        ((MasterView) getActivity()).Workspace.autoExpandPlayerOnNextPlay();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder.IPodcastsViewOwner
    public void openFeed(Feed feed, boolean z, boolean z2) {
        ((MasterView) getActivity()).openFeed(feed, z, z2);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder.IPodcastsViewOwner
    public void enableDisableActionBarScroll(boolean z) {
        ((MasterView) getActivity()).enableAppBarAutoScroll(!z);
    }
}
