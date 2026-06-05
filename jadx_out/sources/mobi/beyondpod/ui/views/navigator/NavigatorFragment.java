package mobi.beyondpod.ui.views.navigator;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v7.view.ActionMode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.views.navigator.FeedsListView;
import mobi.beyondpod.ui.views.navigator.ReorderCategoriesListView;

/* loaded from: classes.dex */
public class NavigatorFragment extends Fragment implements ReorderCategoriesListView.IReorderCategoriesListViewOwner, FeedsListView.IFeedsListViewOwner {
    public static final String TAG = "NavigatorFragment";
    public FeedsListView FeedsList;
    private ReorderCategoriesListView _ReorderCategories;

    /* loaded from: classes.dex */
    public interface INavigatorFragmentOwner {
        void autoExpandPlayerOnNextPlay();

        void openFeed(Feed feed, boolean z, boolean z2);

        void requestDrawersClose();

        void selectCategory(FeedCategory feedCategory);

        void startActionMode(ActionMode.Callback callback);
    }

    public void restoreState(MasterViewState masterViewState) {
        Feed rootFeed;
        if (masterViewState.feedsViewRootFeed != null) {
            rootFeed = masterViewState.feedsViewRootFeed;
        } else {
            rootFeed = FeedRepository.getRootFeed();
        }
        registerForContextMenu(this.FeedsList);
        this.FeedsList.initialize(rootFeed, this);
        this._ReorderCategories.initialize(this);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.navigator_fragment, viewGroup);
        this.FeedsList = (FeedsListView) inflate.findViewById(R.id.feedsList);
        this._ReorderCategories = (ReorderCategoriesListView) inflate.findViewById(R.id.reorderCategories);
        return inflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        this.FeedsList.onAfterDeactivate();
        super.onPause();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        this.FeedsList.onBeforeActivate();
        this.FeedsList.onAfterActivate();
        switchToReorderCategoriesMode(isReorderingCategories());
        super.onResume();
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            return;
        }
        this.FeedsList.ensureSelection();
    }

    public void notifyDrawerClosed() {
        doneReordering();
        this.FeedsList.refreshHeader(false);
    }

    public void notifyDrawerOpened() {
        this.FeedsList.refreshFeeds();
        this.FeedsList.refreshHeader(UpdateAndDownloadManager.isWorking());
    }

    @Override // mobi.beyondpod.ui.views.navigator.ReorderCategoriesListView.IReorderCategoriesListViewOwner
    public void doneReordering() {
        this.FeedsList.cancelActionMode();
        switchToReorderCategoriesMode(false);
    }

    @Override // mobi.beyondpod.ui.views.navigator.FeedsListView.IFeedsListViewOwner
    public void requestNavigatorClose() {
        if (getActivity() instanceof INavigatorFragmentOwner) {
            ((INavigatorFragmentOwner) getActivity()).requestDrawersClose();
        }
    }

    @Override // mobi.beyondpod.ui.views.navigator.FeedsListView.IFeedsListViewOwner
    public void switchToReorderCategoriesMode(boolean z) {
        if (z) {
            this.FeedsList.setVisibility(8);
            this._ReorderCategories.onBeforeActivate();
            this._ReorderCategories.setVisibility(0);
        } else {
            this._ReorderCategories.setVisibility(8);
            this.FeedsList.setVisibility(0);
            this._ReorderCategories.onAfterDeactivate();
        }
    }

    @Override // mobi.beyondpod.ui.views.navigator.FeedsListView.IFeedsListViewOwner
    public void selectCategory(FeedCategory feedCategory) {
        if (getActivity() instanceof INavigatorFragmentOwner) {
            ((INavigatorFragmentOwner) getActivity()).selectCategory(feedCategory);
        }
    }

    @Override // mobi.beyondpod.ui.views.navigator.FeedsListView.IFeedsListViewOwner
    public void autoExpandPlayerOnNextPlay() {
        if (getActivity() instanceof INavigatorFragmentOwner) {
            ((INavigatorFragmentOwner) getActivity()).autoExpandPlayerOnNextPlay();
        }
    }

    @Override // mobi.beyondpod.ui.views.navigator.FeedsListView.IFeedsListViewOwner
    public void openFeed(Feed feed, boolean z, boolean z2) {
        if (getActivity() instanceof INavigatorFragmentOwner) {
            ((INavigatorFragmentOwner) getActivity()).openFeed(feed, z, z2);
        }
    }

    @Override // mobi.beyondpod.ui.views.navigator.FeedsListView.IFeedsListViewOwner
    public void startActionMode(ActionMode.Callback callback) {
        ((INavigatorFragmentOwner) getActivity()).startActionMode(callback);
    }

    public boolean isReorderingCategories() {
        return this._ReorderCategories.getVisibility() == 0;
    }
}
