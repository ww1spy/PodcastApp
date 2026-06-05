package mobi.beyondpod.ui.views.navigator;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Typeface;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.view.ActionMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.TextView;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.core.volley.ImageLoaderFeed;
import mobi.beyondpod.ui.views.base.IView;
import mobi.beyondpod.ui.views.base.TitleBar;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip;
import mobi.beyondpod.ui.views.navigator.NavigatorExtras;
import mobi.beyondpod.ui.views.navigator.NavigatorHeader;
import mobi.beyondpod.ui.views.notifications.Message;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class FeedsListView extends ListView implements IView, View.OnClickListener, NavigatorExtras.IExtrasOwner, RepositoryEvents.RepositoryEventListener, UpdateAndDownloadEvents.UpdateAndDownloadEventListener, AbsListView.OnScrollListener, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, NavigatorHeader.INavigatorHeaderOwner {
    private static final int MENU_ADD_CATEGORY = 5;
    private static final int MENU_DELETE_CATEGORY = 1;
    private static final int MENU_DELETE_FEED = 27;
    private static final int MENU_EDIT_CATEGORY = 2;
    private static final int MENU_EDIT_FEED = 26;
    private static final int MENU_PLAY_EPISODES = 7;
    private static final int MENU_REORDER_CATEGORIES = 4;
    private static final int MENU_SET_UPDATE_SCHEDULE = 3;
    private static final int MENU_UPDATE_FEED = 6;
    private static final String TAG = "FeedsListView";
    public static final int VIEW_MENU_GROUP = 25;
    public volatile boolean ViewIsScrolling;
    ActionMode _ActionMode;
    private FeedsViewAdapter _Adapter;
    NavigatorExtras _Extras;
    View _Home;
    private Typeface _HomeNormalTypeface;
    private TextView _HomeText;
    ImageLoaderFeed _ImageLoader;
    private View _InfoCardHeaderView;
    private NavigatorHeader _NavigatorHeader;
    Fragment _Owner;
    ActionMode.Callback _multiChoiceListener;

    /* loaded from: classes.dex */
    public interface IFeedsListViewOwner {
        void autoExpandPlayerOnNextPlay();

        void openFeed(Feed feed, boolean z, boolean z2);

        void requestNavigatorClose();

        void selectCategory(FeedCategory feedCategory);

        void startActionMode(ActionMode.Callback callback);

        void switchToReorderCategoriesMode(boolean z);
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public TitleBar.TitleInfo getViewTitle() {
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public boolean handleOptionsMenu(int i, MenuItem menuItem) {
        return false;
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public void onAfterActivate() {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public boolean prepareOptionsMenu(Menu menu) {
        return true;
    }

    public FeedsListView(Context context) {
        super(context);
        this.ViewIsScrolling = false;
        this._multiChoiceListener = new ActionMode.Callback() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.1
            @Override // android.support.v7.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return true;
            }

            @Override // android.support.v7.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                FeedsListView.this._ActionMode = null;
                if (FeedsListView.this._Owner != null && (FeedsListView.this._Owner instanceof IFeedsListViewOwner)) {
                    ((IFeedsListViewOwner) FeedsListView.this._Owner).switchToReorderCategoriesMode(false);
                }
                FeedsListView.this._Extras.switchToNonEditMode();
                FeedsListView.this._Home.setEnabled(true);
                FeedsListView.this.reloadFeeds();
            }

            @Override // android.support.v7.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                FeedsListView.this._ActionMode = actionMode;
                FeedsListView.this.refreshFeeds();
                FeedsListView.this._Extras.switchToEditMode();
                FeedsListView.this._Home.setEnabled(false);
                FeedsListView.this._ActionMode.setTitle(R.string.navigator_edit_content);
                FeedsListView.this._ActionMode.setSubtitle("");
                return true;
            }

            @Override // android.support.v7.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                if (menuItem.getItemId() != 5) {
                    return true;
                }
                CommandManager.cmdAddNewCategory(FeedsListView.this.getContext());
                return true;
            }
        };
    }

    public FeedsListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ViewIsScrolling = false;
        this._multiChoiceListener = new ActionMode.Callback() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.1
            @Override // android.support.v7.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return true;
            }

            @Override // android.support.v7.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                FeedsListView.this._ActionMode = null;
                if (FeedsListView.this._Owner != null && (FeedsListView.this._Owner instanceof IFeedsListViewOwner)) {
                    ((IFeedsListViewOwner) FeedsListView.this._Owner).switchToReorderCategoriesMode(false);
                }
                FeedsListView.this._Extras.switchToNonEditMode();
                FeedsListView.this._Home.setEnabled(true);
                FeedsListView.this.reloadFeeds();
            }

            @Override // android.support.v7.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                FeedsListView.this._ActionMode = actionMode;
                FeedsListView.this.refreshFeeds();
                FeedsListView.this._Extras.switchToEditMode();
                FeedsListView.this._Home.setEnabled(false);
                FeedsListView.this._ActionMode.setTitle(R.string.navigator_edit_content);
                FeedsListView.this._ActionMode.setSubtitle("");
                return true;
            }

            @Override // android.support.v7.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                if (menuItem.getItemId() != 5) {
                    return true;
                }
                CommandManager.cmdAddNewCategory(FeedsListView.this.getContext());
                return true;
            }
        };
    }

    public FeedsListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ViewIsScrolling = false;
        this._multiChoiceListener = new ActionMode.Callback() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.1
            @Override // android.support.v7.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return true;
            }

            @Override // android.support.v7.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                FeedsListView.this._ActionMode = null;
                if (FeedsListView.this._Owner != null && (FeedsListView.this._Owner instanceof IFeedsListViewOwner)) {
                    ((IFeedsListViewOwner) FeedsListView.this._Owner).switchToReorderCategoriesMode(false);
                }
                FeedsListView.this._Extras.switchToNonEditMode();
                FeedsListView.this._Home.setEnabled(true);
                FeedsListView.this.reloadFeeds();
            }

            @Override // android.support.v7.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                FeedsListView.this._ActionMode = actionMode;
                FeedsListView.this.refreshFeeds();
                FeedsListView.this._Extras.switchToEditMode();
                FeedsListView.this._Home.setEnabled(false);
                FeedsListView.this._ActionMode.setTitle(R.string.navigator_edit_content);
                FeedsListView.this._ActionMode.setSubtitle("");
                return true;
            }

            @Override // android.support.v7.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                if (menuItem.getItemId() != 5) {
                    return true;
                }
                CommandManager.cmdAddNewCategory(FeedsListView.this.getContext());
                return true;
            }
        };
    }

    public void initialize(Feed feed, Fragment fragment) {
        this._Owner = fragment;
        this._ImageLoader = new ImageLoaderFeed(getActivity());
        loadHeaderAndFooter();
        this._Adapter = new FeedsViewAdapter(getContext(), this);
        setAdapter((ListAdapter) this._Adapter);
        setRootFeed(feed);
        setTextFilterEnabled(false);
        setChoiceMode(1);
        this._Adapter.setIfEmptyText(getContext().getString(R.string.feed_list_no_feeds_in_this_category));
        setOnScrollListener(this);
        setOnItemClickListener(this);
        setOnItemLongClickListener(this);
        refreshHeader(UpdateAndDownloadManager.isWorking());
    }

    private boolean isInitialized() {
        return (this._Owner == null || this._Adapter == null) ? false : true;
    }

    private void loadHeaderAndFooter() {
        setFooterDividersEnabled(false);
        setHeaderDividersEnabled(false);
        this._NavigatorHeader = (NavigatorHeader) LayoutInflater.from(getContext()).inflate(R.layout.navigator_header, (ViewGroup) null);
        this._NavigatorHeader.setOwner(this);
        addHeaderView(this._NavigatorHeader, null, false);
        showHowToExpandCategory();
        this._Home = LayoutInflater.from(getContext()).inflate(R.layout.navigator_shortcut, (ViewGroup) null);
        this._Home.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FeedsListView.this.handleItemSelected(view, null, CategoryManager.CategoryHome);
            }
        });
        this._HomeText = (TextView) this._Home.findViewById(R.id.shortcut_name);
        this._HomeNormalTypeface = this._HomeText.getTypeface();
        updateHomeSelectionState();
        addHeaderView(this._Home, null, false);
        this._Extras = (NavigatorExtras) LayoutInflater.from(getContext()).inflate(R.layout.navigator_extras, (ViewGroup) null);
        this._Extras.initialize(this);
        addFooterView(this._Extras, null, false);
    }

    @Override // mobi.beyondpod.ui.views.navigator.NavigatorExtras.IExtrasOwner
    public boolean isEditingFeeds() {
        return this._ActionMode != null;
    }

    @Override // mobi.beyondpod.ui.views.navigator.NavigatorExtras.IExtrasOwner
    public FragmentActivity getActivity() {
        return this._Owner.getActivity();
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        Feed feedAtPosition = this._Adapter.getFeedAtPosition(i - getHeaderViewsCount());
        FeedCategory categoryAtPosition = this._Adapter.getCategoryAtPosition(i - getHeaderViewsCount());
        if (feedAtPosition != null && !feedAtPosition.isSubFeed()) {
            editFeed(view.findViewById(R.id.feed_title), feedAtPosition);
            return true;
        }
        if (categoryAtPosition == null) {
            return false;
        }
        editCategory(view.findViewById(R.id.category_name), categoryAtPosition);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        handleItemSelected(view, this._Adapter.getFeedAtPosition(i - getHeaderViewsCount()), this._Adapter.getCategoryAtPosition(i - getHeaderViewsCount()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleItemSelected(View view, Feed feed, FeedCategory feedCategory) {
        if (feed != null) {
            if (isEditingFeeds()) {
                View findViewById = view.findViewById(R.id.feed_overflow);
                if (findViewById != null) {
                    view = findViewById;
                }
                editFeed(view, feed);
            } else {
                Feed rootFeed = this._Adapter.getRootFeed();
                if (rootFeed.canNavigateUp() && feed.equals(FeedRepository.getGoUpPlaceholder())) {
                    openDefaultFeedView(rootFeed.parentFeed());
                } else {
                    openDefaultFeedView(feed);
                }
            }
        } else if (feedCategory != null) {
            if (isEditingFeeds()) {
                editCategory(view.findViewById(R.id.category_overflow), feedCategory);
            } else {
                if (this._Owner != null && (this._Owner instanceof IFeedsListViewOwner)) {
                    ((IFeedsListViewOwner) this._Owner).selectCategory(feedCategory);
                }
                requestNavigatorClose();
            }
        } else {
            this._Adapter.toggleReadFeeds(this._Adapter.hasHiddenFeeds());
        }
        updateHomeSelectionState();
    }

    private void requestNavigatorClose() {
        if (this._Owner != null && (this._Owner instanceof IFeedsListViewOwner)) {
            ((IFeedsListViewOwner) this._Owner).requestNavigatorClose();
        }
        refreshFeeds();
    }

    public void syncSelection() {
        int categoryIndex;
        Feed activeFeedFilter = Configuration.getActiveFeedFilter();
        if (activeFeedFilter != null) {
            categoryIndex = this._Adapter.getFeedIndex(activeFeedFilter);
        } else {
            categoryIndex = this._Adapter.getCategoryIndex(Configuration.getActiveFeedCategory());
        }
        if (categoryIndex != -1) {
            setItemChecked(categoryIndex, true);
            int firstVisiblePosition = categoryIndex - getFirstVisiblePosition();
            if (firstVisiblePosition < 0 || firstVisiblePosition > getChildCount()) {
                setSelection(categoryIndex);
            }
        }
    }

    private void openDefaultFeedView(Feed feed) {
        if (feed == null || this._Owner == null || !(this._Owner instanceof IFeedsListViewOwner)) {
            return;
        }
        if (feed.subFeeds().size() != 0) {
            setRootFeed(feed);
            IFeedsListViewOwner iFeedsListViewOwner = (IFeedsListViewOwner) this._Owner;
            if (feed == FeedRepository.getRootFeed()) {
                feed = null;
            }
            iFeedsListViewOwner.openFeed(feed, false, true);
            return;
        }
        ((IFeedsListViewOwner) this._Owner).openFeed(feed, false, false);
        requestNavigatorClose();
    }

    public void setRootFeed(Feed feed) {
        if (feed.canNavigateUp()) {
            removeFooterView(this._Extras);
            removeHeaderView(this._Home);
        } else {
            if (getFooterViewsCount() == 0) {
                addFooterView(this._Extras, null, false);
            }
            if (getHeaderViewsCount() == 0) {
                addHeaderView(this._Home, null, false);
            }
        }
        this._Adapter.setRootFeed(feed);
        ensureSelection();
    }

    public void ensureSelection() {
        postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.3
            @Override // java.lang.Runnable
            public void run() {
                FeedsListView.this.syncSelection();
            }
        }, 100L);
    }

    public Feed rootFeed() {
        if (this._Adapter != null) {
            return this._Adapter.getRootFeed();
        }
        return null;
    }

    @Override // mobi.beyondpod.ui.views.navigator.NavigatorHeader.INavigatorHeaderOwner
    public void showHideNewFeeds(boolean z) {
        this._Adapter.toggleReadFeeds(z);
    }

    @Override // mobi.beyondpod.ui.views.navigator.NavigatorHeader.INavigatorHeaderOwner
    public void startStopUpdate() {
        CommandManager.cmdUpdateFeedOrCategory(getContext(), null, CategoryManager.AllFeeds);
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public void onAfterDeactivate() {
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public void onBeforeActivate() {
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        if (this._Extras != null) {
            this._Extras.refreshContent();
        }
        reloadFeeds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadFeeds() {
        if (this._Adapter != null) {
            this._Adapter.reloadFeeds();
        }
    }

    public void refreshFeeds() {
        if (this._Adapter == null || getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.4
            @Override // java.lang.Runnable
            public void run() {
                FeedsListView.this._Adapter.notifyDataSetChanged();
            }
        });
    }

    private void updateHomeSelectionState() {
        this._HomeText.setTypeface(this._HomeNormalTypeface, CategoryManager.CategoryHome.equals(Configuration.getActiveFeedCategory()) ? 1 : 0);
        this._NavigatorHeader.refreshHeaderImage();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag != null) {
            Feed feedById = FeedRepository.getFeedById((UUID) tag);
            if (this._Owner == null || !(this._Owner instanceof IFeedsListViewOwner)) {
                return;
            }
            ((IFeedsListViewOwner) this._Owner).openFeed(feedById, false, true);
        }
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (isInitialized()) {
            if (repositoryEvent.Type == 7 || repositoryEvent.Type == 6 || repositoryEvent.Type == 12 || repositoryEvent.Type == 13 || repositoryEvent.Type == 16 || repositoryEvent.Type == 5) {
                reloadFeeds();
            }
            if (repositoryEvent.Type == 8 || repositoryEvent.Type == 10 || repositoryEvent.Type == 15 || repositoryEvent.Type == 14) {
                refreshFeeds();
            }
            if (repositoryEvent.Type == 7 || repositoryEvent.Type == 13) {
                syncSelection();
            }
        }
    }

    public Feed nextUnreadFeed(Feed feed) {
        if (this._Adapter == null) {
            return null;
        }
        return this._Adapter.nextUnreadFeed(feed);
    }

    public Feed nextFeed(Feed feed) {
        if (this._Adapter == null) {
            return null;
        }
        return this._Adapter.nextFeed(feed);
    }

    public Feed previousFeed(Feed feed) {
        if (this._Adapter == null) {
            return null;
        }
        return this._Adapter.previousFeed(feed);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        switch (i) {
            case 0:
                this.ViewIsScrolling = false;
                int firstVisiblePosition = absListView.getFirstVisiblePosition() - getHeaderViewsCount();
                int childCount = absListView.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = absListView.getChildAt(i2);
                    if (childAt != this._Extras && childAt != this._Home && childAt != this._InfoCardHeaderView) {
                        this._Adapter.getView(firstVisiblePosition + i2, absListView.getChildAt(i2), absListView);
                    }
                }
                this._Adapter.prefetchItemImages();
                return;
            case 1:
                this.ViewIsScrolling = false;
                return;
            case 2:
                this.ViewIsScrolling = true;
                return;
            default:
                return;
        }
    }

    public void onActivityDestroy() {
        this._ImageLoader.release();
        if (this._NavigatorHeader != null) {
            this._NavigatorHeader.toggleUpdateAnimation(false);
        }
    }

    public int feedCount() {
        return this._Adapter.feedCount();
    }

    public boolean hasHiddenFeeds() {
        return this._Adapter.hasHiddenFeeds();
    }

    public boolean hasReadFeeds() {
        return this._Adapter.hasReadFeeds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageLoader getImageLoader() {
        return this._ImageLoader;
    }

    public void editCategory(View view, final FeedCategory feedCategory) {
        PopupMenu popupMenu = new PopupMenu(getContext(), view);
        boolean z = (feedCategory == CategoryManager.AllFeeds || feedCategory == CategoryManager.Unassigned) ? false : true;
        if (!isEditingFeeds()) {
            popupMenu.getMenu().add(0, 6, 1, getResources().getString(R.string.MENU_update_my_episodes, "'" + feedCategory.name() + "'"));
        }
        popupMenu.getMenu().add(0, 2, 2, R.string.MENU_edit_category).setEnabled(z);
        popupMenu.getMenu().add(0, 1, 3, R.string.MENU_delete_category).setEnabled(z);
        popupMenu.getMenu().add(0, 4, 4, R.string.MENU_reorder_categories).setEnabled(CategoryManager.getCategoriesForFilter().size() > 2);
        popupMenu.getMenu().add(0, 3, 5, R.string.MENU_set_update_schedule);
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.5
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                int itemId = menuItem.getItemId();
                if (itemId == 6) {
                    CommandManager.cmdUpdateFeedOrCategory(FeedsListView.this.getContext(), null, feedCategory);
                    return true;
                }
                switch (itemId) {
                    case 1:
                        CommandManager.cmdDeleteCategory(FeedsListView.this.getContext(), feedCategory);
                        return true;
                    case 2:
                        CommandManager.cmdEditCategory(FeedsListView.this.getContext(), feedCategory);
                        return true;
                    case 3:
                        CommandManager.cmdSetUpdateSchedule(feedCategory, FeedsListView.this.getActivity(), false);
                        return true;
                    case 4:
                        if (FeedsListView.this._ActionMode == null) {
                            FeedsListView.this.startActionMode(FeedsListView.this._multiChoiceListener);
                        }
                        if (FeedsListView.this._Owner != null && (FeedsListView.this._Owner instanceof IFeedsListViewOwner)) {
                            ((IFeedsListViewOwner) FeedsListView.this._Owner).switchToReorderCategoriesMode(true);
                        }
                        return true;
                    default:
                        return false;
                }
            }
        });
        popupMenu.show();
    }

    public void editFeed(View view, final Feed feed) {
        PopupMenu popupMenu = new PopupMenu(getContext(), view);
        if (!isEditingFeeds()) {
            popupMenu.getMenu().add(25, 6, 1, getResources().getString(R.string.MENU_update_my_episodes, getResources().getString(R.string.MENU_feed)));
            popupMenu.getMenu().add(25, 7, 4, R.string.MENU_play_episodes);
        }
        popupMenu.getMenu().add(25, 26, 2, R.string.MENU_edit_feed);
        popupMenu.getMenu().add(25, 27, 3, R.string.MENU_delete_feed);
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.6
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                switch (menuItem.getItemId()) {
                    case 6:
                        CommandManager.cmdUpdateFeedOrCategory(FeedsListView.this.getContext(), feed, null);
                        return true;
                    case 7:
                        if (Configuration.shouldAutoOpenPlayer(CommandManager.cmdPlayFeedEpisodes(FeedsListView.this.getContext(), feed, feed.getLocalOrInheritedTrackSortOrder()))) {
                            if (FeedsListView.this._Owner != null && (FeedsListView.this._Owner instanceof IFeedsListViewOwner)) {
                                ((IFeedsListViewOwner) FeedsListView.this._Owner).autoExpandPlayerOnNextPlay();
                            }
                            ((IFeedsListViewOwner) FeedsListView.this._Owner).requestNavigatorClose();
                        }
                        return true;
                    case 26:
                        CommandManager.cmdEditFeed(feed, -1);
                        return true;
                    case 27:
                        CommandManager.cmdDeleteFeed(FeedsListView.this.getContext(), feed);
                        return true;
                    default:
                        return true;
                }
            }
        });
        popupMenu.show();
    }

    public void cancelActionMode() {
        if (this._ActionMode != null) {
            this._ActionMode.finish();
        }
    }

    public void expandFirstCategory() {
        if (this._Adapter != null) {
            this._Adapter.expandFirstCategory();
        }
    }

    @Override // mobi.beyondpod.ui.views.navigator.NavigatorExtras.IExtrasOwner
    public void startEditMode() {
        if (!isEditingFeeds()) {
            this._Home.animate().alpha(0.0f).setDuration(150L).setListener(new Animator.AnimatorListener() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.7
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    FeedsListView.this._Home.setAlpha(1.0f);
                    FeedsListView.this.startActionMode(FeedsListView.this._multiChoiceListener);
                }
            }).start();
        } else {
            this._ActionMode.finish();
        }
    }

    private void showHowToExpandCategory() {
        if (UserNotificationManager.isNotificationEnabledFor(16)) {
            Message message = new Message();
            message.MessageText = getContext().getResources().getString(R.string.tip_notification_expand_categories_msg);
            message.MessageTitle = getContext().getResources().getString(R.string.tip_notification);
            message.ImageResourceId = R.drawable.ic_tip_category_expand;
            InfoCardTip infoCardTip = new InfoCardTip(getContext(), message, 16, 2, new InfoCardManager.IInfoCardAdapterOwner() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.8
                @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
                public FragmentActivity getOwnerActivity() {
                    return null;
                }

                @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
                public void reloadContent() {
                    if (FeedsListView.this._InfoCardHeaderView != null) {
                        FeedsListView.this.removeHeaderView(FeedsListView.this._InfoCardHeaderView);
                    }
                }
            });
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.info_card_tip_navigator_padding);
            this._InfoCardHeaderView = infoCardTip.getView(0, null, null);
            this._InfoCardHeaderView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
            addHeaderView(this._InfoCardHeaderView, null, false);
        }
    }

    void startActionMode(ActionMode.Callback callback) {
        ((IFeedsListViewOwner) this._Owner).startActionMode(callback);
    }

    @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadEvents.UpdateAndDownloadEventListener
    public void onUpdateAndDownloadEvent(final UpdateAndDownloadEvents.UpdateAndDownloadEvent updateAndDownloadEvent) {
        if (isInitialized() && getActivity() != null) {
            getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.navigator.FeedsListView.9
                @Override // java.lang.Runnable
                public void run() {
                    if (updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.UPDATE_AND_DOWNLOAD_COMPLETED) {
                        FeedsListView.this.reloadFeeds();
                        FeedsListView.this.refreshHeader(false);
                    } else {
                        FeedsListView.this.refreshHeader(true);
                    }
                }
            });
        }
    }

    public void refreshHeader(boolean z) {
        if (this._NavigatorHeader != null) {
            this._NavigatorHeader.toggleUpdateAnimation(z);
            this._NavigatorHeader.updateFeedFilter();
        }
    }

    public void onTrimMemory() {
        if (this._ImageLoader != null) {
            this._ImageLoader.evictAll();
        }
    }
}
