package mobi.beyondpod.ui.views.navigator;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.mobeta.android.dslv.DragSortListView;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.categories.CategoryList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip;
import mobi.beyondpod.ui.views.notifications.Message;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class ReorderCategoriesListView extends DragSortListView implements RepositoryEvents.RepositoryEventListener {
    private ReorderCategoriesViewAdapter _Adapter;
    private DragSortListView.DropListener _DropListener;
    private View _InfoCardHeaderView;
    Fragment _Owner;

    /* loaded from: classes.dex */
    public interface IReorderCategoriesListViewOwner {
        void doneReordering();
    }

    public ReorderCategoriesListView(Context context) {
        super(context, null);
        this._DropListener = new DragSortListView.DropListener() { // from class: mobi.beyondpod.ui.views.navigator.ReorderCategoriesListView.1
            @Override // com.mobeta.android.dslv.DragSortListView.DropListener
            public void drop(int i, int i2) {
                FeedCategory categoryAtPosition = ReorderCategoriesListView.this._Adapter.getCategoryAtPosition(i);
                FeedCategory categoryAtPosition2 = ReorderCategoriesListView.this._Adapter.getCategoryAtPosition(i2);
                CoreHelper.writeTraceEntry("View", "**** Drag category " + categoryAtPosition.name() + " (item " + i + "), to:" + categoryAtPosition2.name() + " (item:" + i2 + ")");
                CategoryManager.moveCategory(categoryAtPosition, categoryAtPosition2);
            }
        };
        setTextFilterEnabled(false);
    }

    public void initialize(Fragment fragment) {
        this._Owner = fragment;
        this._Adapter = new ReorderCategoriesViewAdapter(getContext());
        setDropListener(this._DropListener);
        addHeaderView(LayoutInflater.from(getContext()).inflate(R.layout.navigator_header, (ViewGroup) this, false), null, false);
        showHowToUseDragDropCard();
        setAdapter((ListAdapter) this._Adapter);
    }

    public ReorderCategoriesListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._DropListener = new DragSortListView.DropListener() { // from class: mobi.beyondpod.ui.views.navigator.ReorderCategoriesListView.1
            @Override // com.mobeta.android.dslv.DragSortListView.DropListener
            public void drop(int i, int i2) {
                FeedCategory categoryAtPosition = ReorderCategoriesListView.this._Adapter.getCategoryAtPosition(i);
                FeedCategory categoryAtPosition2 = ReorderCategoriesListView.this._Adapter.getCategoryAtPosition(i2);
                CoreHelper.writeTraceEntry("View", "**** Drag category " + categoryAtPosition.name() + " (item " + i + "), to:" + categoryAtPosition2.name() + " (item:" + i2 + ")");
                CategoryManager.moveCategory(categoryAtPosition, categoryAtPosition2);
            }
        };
    }

    private void setCategories(CategoryList categoryList) {
        if (this._Adapter != null) {
            this._Adapter.setCategories(categoryList);
        }
    }

    public void onAfterDeactivate() {
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
        if (this._Adapter != null) {
            this._Adapter.clearContent();
        }
    }

    public void onBeforeActivate() {
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        refreshContent();
    }

    private void refreshContent() {
        boolean z;
        CategoryList categoriesForFilterNoUncategorized;
        Iterator<Feed> it = FeedRepository.getRootFeed().subFeeds().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Feed next = it.next();
            if (next.getCategories().getPrimary().equals(CategoryManager.Unassigned) && next.getCategories().getSecondary().equals(CategoryManager.Unassigned)) {
                z = true;
                break;
            }
        }
        CategoryList categoryList = new CategoryList();
        if (z) {
            categoriesForFilterNoUncategorized = CategoryManager.getCategoriesForFilter();
        } else {
            categoriesForFilterNoUncategorized = CategoryManager.getCategoriesForFilterNoUncategorized();
        }
        categoryList.addAll(categoriesForFilterNoUncategorized);
        setCategories(categoryList);
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type == 13 || repositoryEvent.Type == 12 || repositoryEvent.Type == 14) {
            refreshContent();
        }
    }

    private void showHowToUseDragDropCard() {
        if (UserNotificationManager.isNotificationEnabledFor(8)) {
            Message message = new Message();
            message.MessageText = getContext().getResources().getString(R.string.tip_notification_categories_msg);
            message.MessageTitle = getContext().getResources().getString(R.string.tip_notification);
            message.ImageResourceId = R.drawable.ic_tip_notify_dragdrop;
            InfoCardTip infoCardTip = new InfoCardTip(getContext(), message, 8, 2, new InfoCardManager.IInfoCardAdapterOwner() { // from class: mobi.beyondpod.ui.views.navigator.ReorderCategoriesListView.2
                @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
                public FragmentActivity getOwnerActivity() {
                    return null;
                }

                @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
                public void reloadContent() {
                    if (ReorderCategoriesListView.this._InfoCardHeaderView != null) {
                        ReorderCategoriesListView.this.removeHeaderView(ReorderCategoriesListView.this._InfoCardHeaderView);
                    }
                }
            });
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.info_card_tip_navigator_padding);
            this._InfoCardHeaderView = infoCardTip.getView(0, null, null);
            this._InfoCardHeaderView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
            addHeaderView(this._InfoCardHeaderView);
        }
    }
}
