package mobi.beyondpod.ui.views.myepisodesview;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.PopupMenu;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.FlashStorageLocation;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.MasterView;
import mobi.beyondpod.ui.views.base.TitleBar;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListView;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;
import mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter;
import mobi.beyondpod.ui.views.myepisodesview.SectionEmptyListAdapter;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class MyEpisodesListView extends SectionedListView implements AbsListView.OnScrollListener, SectionEmptyListAdapter.IEpmtyListAdapterOwner, EpisodeCardAdapter.ICardAdapterOwner, InfoCardManager.IInfoCardAdapterOwner {
    private static final int MENU_ADD_TO_PLAYLIST = 39;
    private static final int MENU_DELETE_PODCAST = 34;
    private static final int MENU_OPEN_EPISODE_FEED = 46;
    private static final int MENU_PLAY_IN_EXTERNAL_PLAYER = 43;
    private static final int MENU_PODCAST_INFO = 37;
    private static final int MENU_REMOVE_FROM_PLAYLIST = 40;
    private static final int MENU_RESUME_OR_STOP_DOWNLOAD = 38;
    private static final int MENU_SELECT_ALL = 45;
    private static final int MENU_SELECT_PLAYED = 44;
    private static final int MENU_SHARE_PODCAST_URL = 41;
    private static final int MENU_TOGGLE_LOCK_PODCAST = 42;
    private static final int MENU_TOGGLE_PLAYED = 35;
    private static final int MENU_TOGGLE_PLAYLIST = 36;
    public static final int MULTISELECT_ALL = 1;
    public static final int MULTISELECT_NONE = 2;
    public static final int MULTISELECT_PLAYED = 3;
    public static final int MULTISELECT_TOP_LARGEST = 5;
    public static final int MULTISELECT_TOP_OLDEST = 4;
    private static final int NUM_LARGEST_TO_GET = 3;
    private static final int NUM_OLDEST_TO_GET = 3;
    public static final int VIEW_MENU_GROUP = 32;
    public boolean ViewIsScrolling;
    ActionMode _ActionMode;
    private MyEpisodesListViewAdapter _Adapter;
    private TextView _Footer1;
    private TextView _Footer2;
    IMyEpisodesListviewOwner _Owner;
    public boolean _PauseRefresh;
    String _ScrollLocation;
    SectionedListViewAdapter.ItemLocation.IObjectMapper _ScrollLocationMapper;
    TrackList _SelectedEpisodes;
    private TitleBar.TitleInfo _Title;
    MultiChoiceModeListener _actionModeListener;
    private static final String BEYOND_POD_FAQ = CoreHelper.loadResourceString(R.string.podcast_list_view_beyondpod_faq);
    private static final String OF = CoreHelper.loadResourceString(R.string.feeds_status_of);
    private static final String EPISODES_SELECTED = CoreHelper.loadResourceString(R.string.multiselect_episodes_selected);
    private static final String FREE = CoreHelper.loadResourceString(R.string.podcasts_view_free);

    /* loaded from: classes.dex */
    public interface IMyEpisodesListviewOwner {
        void autoExpandPlayerOnNextPlay();

        void enableDisableActionBarScroll(boolean z);

        void enableDisablePullToRefresh(boolean z);

        FragmentActivity getOwnerActivity();

        void openFeed(Feed feed, boolean z, boolean z2);

        void openTrackPropertiesDialog(View view, Track track, TrackList trackList);

        void refreshActiveViewTitle();

        void runOnUiThread(Runnable runnable);
    }

    /* loaded from: classes.dex */
    public interface MultiChoiceModeListener extends ActionMode.Callback {
        void onItemCheckedStateChanged(ActionMode actionMode, Track track);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    public MyEpisodesListView(Context context) {
        super(context, null);
        this.ViewIsScrolling = false;
        this._PauseRefresh = false;
        this._SelectedEpisodes = new TrackList();
        this._actionModeListener = new MultiChoiceModeListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.1
            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                menu.clear();
                MyEpisodesListView.this.prepareActionModeOptionsMenu(menu);
                MyEpisodesListView.this._Owner.enableDisablePullToRefresh(false);
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                MyEpisodesListView.this._ActionMode = null;
                MyEpisodesListView.this._SelectedEpisodes.clear();
                MyEpisodesListView.this.setLongClickable(true);
                MyEpisodesListView.this._Adapter.notifyDataSetChanged();
                MyEpisodesListView.this._Owner.enableDisablePullToRefresh(true);
                MyEpisodesListView.this._Adapter.enableFastScrollIfNeeded();
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                MyEpisodesListView.this._ActionMode = actionMode;
                MyEpisodesListView.this.setLongClickable(false);
                MyEpisodesListView.this._SelectedEpisodes.clear();
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                if (!MyEpisodesListView.this.handleActionModeOptionsMenu(menuItem)) {
                    return true;
                }
                actionMode.finish();
                return true;
            }

            @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.MultiChoiceModeListener
            public void onItemCheckedStateChanged(ActionMode actionMode, @Nullable Track track) {
                actionMode.invalidate();
                CoreHelper.TrackSizeInfo checkedSizeOnDiskFor = MyEpisodesListView.this.getCheckedSizeOnDiskFor(MyEpisodesListView.this._SelectedEpisodes);
                CoreHelper.TrackSizeInfo currentTracksSizeOnDisk = MyEpisodesListView.this._Adapter.getCurrentTracksSizeOnDisk();
                Long valueOf = Long.valueOf(new FlashStorageLocation(FeedRepository.getRootPath()).freeSpace());
                if (MyEpisodesListView.this._SelectedEpisodes.size() > 0) {
                    actionMode.setTitle(String.format("%s %s %s %s", Integer.valueOf(MyEpisodesListView.this._SelectedEpisodes.size()), MyEpisodesListView.OF, Integer.valueOf(MyEpisodesListView.this.visibleListSize()), MyEpisodesListView.EPISODES_SELECTED));
                } else {
                    actionMode.setTitle("");
                }
                Object[] objArr = new Object[3];
                objArr[0] = checkedSizeOnDiskFor.sizeOnDisk > 0 ? String.format("%s %s %s •", CoreHelper.getFileLengthAsString(Long.valueOf(checkedSizeOnDiskFor.sizeOnDisk)), MyEpisodesListView.OF, CoreHelper.getFileLengthAsString(Long.valueOf(currentTracksSizeOnDisk.sizeOnDisk))) : "";
                objArr[1] = valueOf != null ? CoreHelper.getFileLengthAsString(valueOf) : "N/A";
                objArr[2] = MyEpisodesListView.FREE;
                actionMode.setSubtitle(String.format("%s %s %s", objArr));
            }
        };
        this._Title = new TitleBar.TitleInfo();
        this._ScrollLocationMapper = new SectionedListViewAdapter.ItemLocation.IObjectMapper() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.3
            @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ItemLocation.IObjectMapper
            public String mapToString(Object obj) {
                if (obj instanceof Track) {
                    return ((Track) obj).trackPath();
                }
                return null;
            }

            @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ItemLocation.IObjectMapper
            public Object mapFromString(String str) {
                return FeedRepository.getTrackByPath(str);
            }
        };
    }

    public MyEpisodesListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ViewIsScrolling = false;
        this._PauseRefresh = false;
        this._SelectedEpisodes = new TrackList();
        this._actionModeListener = new MultiChoiceModeListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.1
            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                menu.clear();
                MyEpisodesListView.this.prepareActionModeOptionsMenu(menu);
                MyEpisodesListView.this._Owner.enableDisablePullToRefresh(false);
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                MyEpisodesListView.this._ActionMode = null;
                MyEpisodesListView.this._SelectedEpisodes.clear();
                MyEpisodesListView.this.setLongClickable(true);
                MyEpisodesListView.this._Adapter.notifyDataSetChanged();
                MyEpisodesListView.this._Owner.enableDisablePullToRefresh(true);
                MyEpisodesListView.this._Adapter.enableFastScrollIfNeeded();
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                MyEpisodesListView.this._ActionMode = actionMode;
                MyEpisodesListView.this.setLongClickable(false);
                MyEpisodesListView.this._SelectedEpisodes.clear();
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                if (!MyEpisodesListView.this.handleActionModeOptionsMenu(menuItem)) {
                    return true;
                }
                actionMode.finish();
                return true;
            }

            @Override // mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.MultiChoiceModeListener
            public void onItemCheckedStateChanged(ActionMode actionMode, @Nullable Track track) {
                actionMode.invalidate();
                CoreHelper.TrackSizeInfo checkedSizeOnDiskFor = MyEpisodesListView.this.getCheckedSizeOnDiskFor(MyEpisodesListView.this._SelectedEpisodes);
                CoreHelper.TrackSizeInfo currentTracksSizeOnDisk = MyEpisodesListView.this._Adapter.getCurrentTracksSizeOnDisk();
                Long valueOf = Long.valueOf(new FlashStorageLocation(FeedRepository.getRootPath()).freeSpace());
                if (MyEpisodesListView.this._SelectedEpisodes.size() > 0) {
                    actionMode.setTitle(String.format("%s %s %s %s", Integer.valueOf(MyEpisodesListView.this._SelectedEpisodes.size()), MyEpisodesListView.OF, Integer.valueOf(MyEpisodesListView.this.visibleListSize()), MyEpisodesListView.EPISODES_SELECTED));
                } else {
                    actionMode.setTitle("");
                }
                Object[] objArr = new Object[3];
                objArr[0] = checkedSizeOnDiskFor.sizeOnDisk > 0 ? String.format("%s %s %s •", CoreHelper.getFileLengthAsString(Long.valueOf(checkedSizeOnDiskFor.sizeOnDisk)), MyEpisodesListView.OF, CoreHelper.getFileLengthAsString(Long.valueOf(currentTracksSizeOnDisk.sizeOnDisk))) : "";
                objArr[1] = valueOf != null ? CoreHelper.getFileLengthAsString(valueOf) : "N/A";
                objArr[2] = MyEpisodesListView.FREE;
                actionMode.setSubtitle(String.format("%s %s %s", objArr));
            }
        };
        this._Title = new TitleBar.TitleInfo();
        this._ScrollLocationMapper = new SectionedListViewAdapter.ItemLocation.IObjectMapper() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.3
            @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ItemLocation.IObjectMapper
            public String mapToString(Object obj) {
                if (obj instanceof Track) {
                    return ((Track) obj).trackPath();
                }
                return null;
            }

            @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ItemLocation.IObjectMapper
            public Object mapFromString(String str) {
                return FeedRepository.getTrackByPath(str);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initializeView(IMyEpisodesListviewOwner iMyEpisodesListviewOwner) {
        setHeaderDividersEnabled(false);
        setFooterDividersEnabled(false);
        setScrollBarStyle(33554432);
        if (MasterView.appBarScrollAllowed()) {
            ViewCompat.setNestedScrollingEnabled(this, true);
        }
        this._Owner = iMyEpisodesListviewOwner;
        this._Adapter = new MyEpisodesListViewAdapter(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.episode_footer_more, (ViewGroup) null);
        View findViewById = inflate.findViewById(R.id.footer_group);
        this._Footer1 = (TextView) inflate.findViewById(R.id.footer_text1);
        this._Footer2 = (TextView) inflate.findViewById(R.id.footer_text2);
        addFooterView(inflate, null, false);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MyEpisodesListView.this.visibleListSize() < MyEpisodesListView.this.totalListSize()) {
                    Configuration.setActiveMediaFilter(0);
                    MyEpisodesListView.this.reloadContent();
                } else {
                    MyEpisodesListView.this._Owner.openFeed(Configuration.getActiveFeedFilter(), true, false);
                }
            }
        });
        setAdapter((ListAdapter) this._Adapter);
        setTextFilterEnabled(false);
        setOnScrollListener(this);
    }

    private void addAsSelectedItem(Track track) {
        if (this._SelectedEpisodes.contains(track)) {
            return;
        }
        this._SelectedEpisodes.add(track);
    }

    private void removeAsSelectedItem(Track track) {
        if (this._SelectedEpisodes.contains(track)) {
            this._SelectedEpisodes.remove(track);
        }
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.ICardAdapterOwner
    public boolean isItemSelected(Track track) {
        return this._SelectedEpisodes.contains(track);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleActionModeOptionsMenu(MenuItem menuItem) {
        return handleOptionsMenu(menuItem, (TrackList) this._SelectedEpisodes.clone());
    }

    private boolean handleOptionsMenu(MenuItem menuItem, TrackList trackList) {
        switch (menuItem.getItemId()) {
            case 34:
                if (trackList.size() > 0) {
                    CommandManager.cmdDeletePodcasts(getContext(), trackList);
                }
                return true;
            case 35:
                boolean hasUnPlayed = trackList.hasUnPlayed();
                Iterator<Track> it = trackList.iterator();
                while (it.hasNext()) {
                    CommandManager.cmdSetPlayedState(it.next(), hasUnPlayed);
                }
                return false;
            case 36:
                if (trackList.size() > 0) {
                    onAddRemovePlaylist(trackList.get(0));
                }
                return true;
            case 37:
                if (trackList.size() > 0) {
                    this._Owner.openTrackPropertiesDialog(null, trackList.get(0), this._Adapter.getAllEpisodes());
                }
                return true;
            case 38:
                if (UpdateAndDownloadManager.isWorking()) {
                    CommandManager.cmdShowDownloadQueue();
                } else {
                    CommandManager.cmdDownloadTracksManually(getContext(), trackList);
                }
                return true;
            case 39:
                CommandManager.cmdAddToPlaylist(trackList);
                return true;
            case 40:
                CommandManager.cmdRemoveFromPlaylist(trackList);
                return true;
            case 41:
                if (trackList.size() > 0) {
                    CommandManager.cmdSharePodcast(getContext(), trackList.get(0));
                }
                return true;
            case 42:
                if (trackList.hasUnLocked()) {
                    CommandManager.cmdLockTracks(getContext(), trackList);
                } else {
                    CommandManager.cmdUnlockTracks(getContext(), trackList);
                }
                return false;
            case 43:
                if (trackList.size() > 0) {
                    CommandManager.cmdOpenExternalPlayer(getContext(), trackList.get(0));
                }
                return true;
            case 44:
                multiSelectTracks(3);
                return false;
            case 45:
                multiSelectTracks(1);
                return false;
            case 46:
                if (trackList.size() > 0) {
                    this._Owner.openFeed(trackList.get(0).getParentFeed(), false, false);
                }
                return true;
            default:
                return true;
        }
    }

    public void onAfterActivate() {
        if (this._Adapter != null) {
            this._Adapter.onAfterActivate();
        }
    }

    public void onAfterDeactivate() {
        if (this._ActionMode != null) {
            this._ActionMode.finish();
        }
        if (this._Adapter != null) {
            this._Adapter.onAfterDeactivate();
        }
    }

    public void onBeforeActivate() {
        this.ViewIsScrolling = false;
        reloadContent();
    }

    public void prepareActionModeOptionsMenu(Menu menu) {
        TrackList trackList = this._SelectedEpisodes;
        if (this._Adapter.hasPlayedEpisodes()) {
            menu.add(32, 44, 10, R.string.menu_multiselect_select_played).setShowAsAction(0);
        }
        menu.add(32, 45, 12, R.string.menu_multiselect_select_all).setShowAsAction(0);
        if (trackList.size() == 0) {
            return;
        }
        if (trackList.hasNotDownloaded() && !UpdateAndDownloadManager.isWorking()) {
            menu.add(32, 38, 0, R.string.MENU_start_download).setIcon(R.drawable.ic_action_download).setShowAsAction(2);
        }
        menu.add(32, 34, 1, R.string.MENU_delete_podcast_episodes).setIcon(R.drawable.ic_action_trash).setShowAsAction(2);
        if (trackList.hasNotInPlaylist()) {
            menu.add(32, 39, 1, R.string.MENU_add_to_playlist).setShowAsAction(4);
        } else {
            menu.add(32, 40, 1, R.string.MENU_remove_from_playlist).setShowAsAction(4);
        }
        menu.add(32, 35, 2, trackList.hasUnPlayed() ? R.string.MENU_mark_played : R.string.MENU_mark_unplayed).setIcon(R.drawable.ic_action_tick).setShowAsAction(0);
        if (trackList.size() != 1 || Configuration.playerIntegrationType() == 3) {
            return;
        }
        menu.add(32, 43, 5, R.string.MENU_play_in_external_player);
    }

    public TitleBar.TitleInfo getViewTitle() {
        String str;
        this._Title.subTitle = null;
        Feed activeFeedFilter = Configuration.getActiveFeedFilter();
        if (activeFeedFilter == null) {
            TitleBar.TitleInfo titleInfo = this._Title;
            if (Configuration.getActiveFeedCategory() != null) {
                str = Configuration.getActiveFeedCategory() == CategoryManager.AllFeeds ? getResources().getString(R.string.category_all_episodes) : Configuration.getActiveFeedCategory().name();
            } else {
                str = "";
            }
            titleInfo.primaryTitle = str;
            this._Title.selectorType = -1;
        } else {
            this._Title.primaryTitle = activeFeedFilter.getName();
            this._Title.selectorType = activeFeedFilter.hasUrl() ? 0 : -1;
        }
        return this._Title;
    }

    public void saveState(MasterViewState masterViewState) {
        SectionedListViewAdapter.ItemLocation itemIdForPosition = this._Adapter.getItemIdForPosition(getFirstVisiblePosition());
        masterViewState.podcastsFirstVisibleItem = itemIdForPosition.serialize(this._ScrollLocationMapper);
        CoreHelper.writeTraceEntry("QQQQ", "Saving=> " + itemIdForPosition.toString());
    }

    public void restoreState(MasterViewState masterViewState) {
        this._ScrollLocation = masterViewState.podcastsFirstVisibleItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int totalListSize() {
        return this._Adapter.getTotalEpisodeCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int visibleListSize() {
        return this._Adapter.getVisibleEpisodeCount();
    }

    public void notifyCardSizeChanged() {
        this._ScrollLocation = this._Adapter.getItemIdForPosition(getFirstVisiblePosition()).serialize(this._ScrollLocationMapper);
        setAdapter((ListAdapter) this._Adapter);
        reloadContent();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
    public void reloadContent() {
        this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.4
            @Override // java.lang.Runnable
            public void run() {
                if (MyEpisodesListView.this._ActionMode != null) {
                    MyEpisodesListView.this._ActionMode.finish();
                }
                if (MyEpisodesListView.this._Adapter != null) {
                    MyEpisodesListView.this._Adapter.reloadContent();
                    MyEpisodesListView.this._Owner.refreshActiveViewTitle();
                    if (MyEpisodesListView.this._ScrollLocation != null) {
                        MyEpisodesListView.this.setSelection(MyEpisodesListView.this._Adapter.getPositionForItemID(SectionedListViewAdapter.ItemLocation.deserialize(MyEpisodesListView.this._ScrollLocation, MyEpisodesListView.this._ScrollLocationMapper)));
                        MyEpisodesListView.this._ScrollLocation = null;
                    }
                }
                MyEpisodesListView.this._Owner.enableDisablePullToRefresh(true);
            }
        });
    }

    public void refreshContent() {
        if (this._PauseRefresh) {
            return;
        }
        this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.5
            @Override // java.lang.Runnable
            public void run() {
                if (MyEpisodesListView.this._Adapter != null) {
                    MyEpisodesListView.this._Adapter.refreshContent();
                }
            }
        });
    }

    public boolean isEmpty() {
        return visibleListSize() == 0;
    }

    public boolean hasPlayedEpisodes() {
        return this._Adapter.hasPlayedEpisodes();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        switch (i) {
            case 0:
                this.ViewIsScrolling = false;
                return;
            case 1:
                this.ViewIsScrolling = true;
                return;
            case 2:
                this.ViewIsScrolling = true;
                return;
            default:
                return;
        }
    }

    public CoreHelper.TrackSizeInfo getCheckedSizeOnDiskFor(TrackList trackList) {
        CoreHelper.TrackSizeInfo trackSizeInfo = new CoreHelper.TrackSizeInfo();
        Iterator<Track> it = trackList.iterator();
        while (it.hasNext()) {
            trackSizeInfo.sizeOnDisk += it.next().getSizeOnDisk();
        }
        return trackSizeInfo;
    }

    public void multiSelectTracks(int i) {
        switch (i) {
            case 1:
                this._SelectedEpisodes.clear();
                this._SelectedEpisodes.addAll(this._Adapter.getAllEpisodes());
                break;
            case 2:
                this._SelectedEpisodes.clear();
                break;
            case 3:
                this._SelectedEpisodes.clear();
                this._SelectedEpisodes.addAll(this._Adapter.getAllPlayedEpisodes());
                break;
            case 4:
                this._SelectedEpisodes.clear();
                List oldestEpisodes = this._Adapter.getOldestEpisodes();
                if (oldestEpisodes.size() > 3) {
                    oldestEpisodes = oldestEpisodes.subList(0, 3);
                }
                this._SelectedEpisodes.addAll(oldestEpisodes);
                break;
            case 5:
                this._SelectedEpisodes.clear();
                List largestPodcasts = this._Adapter.getLargestPodcasts();
                if (largestPodcasts.size() > 3) {
                    largestPodcasts = largestPodcasts.subList(0, 3);
                }
                this._SelectedEpisodes.addAll(largestPodcasts);
                break;
        }
        refreshContent();
        if (isMultiSelecting()) {
            this._actionModeListener.onItemCheckedStateChanged(this._ActionMode, null);
        }
    }

    private void openFeedContent(Feed feed) {
        if (!Configuration.allowHidingRead()) {
            Configuration.setItemFilter(0);
        }
        this._Owner.openFeed(feed, true, false);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
    public FragmentActivity getOwnerActivity() {
        return this._Owner.getOwnerActivity();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAdapterDataLoaded(int r8, int r9) {
        /*
            r7 = this;
            mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView$IMyEpisodesListviewOwner r0 = r7._Owner
            r0.refreshActiveViewTitle()
            r0 = 1
            r1 = 0
            r2 = 0
            if (r8 <= 0) goto L72
            if (r8 >= r9) goto L4b
            android.content.Context r8 = r7.getContext()
            r9 = 2130903077(0x7f030025, float:1.7412962E38)
            int r3 = mobi.beyondpod.rsscore.Configuration.getActiveMediaFilter()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            int r8 = mobi.beyondpod.rsscore.helpers.CoreHelper.findIndexInNumArray(r8, r9, r3)
            android.content.res.Resources r9 = r7.getResources()
            r3 = 2131755746(0x7f1002e2, float:1.914238E38)
            java.lang.Object[] r4 = new java.lang.Object[r0]
            android.content.res.Resources r5 = r7.getResources()
            r6 = 2130903076(0x7f030024, float:1.741296E38)
            java.lang.String[] r5 = r5.getStringArray(r6)
            if (r8 < 0) goto L36
            goto L37
        L36:
            r8 = r1
        L37:
            r8 = r5[r8]
            r4[r1] = r8
            java.lang.String r8 = r9.getString(r3, r4)
            android.content.res.Resources r9 = r7.getResources()
            r3 = 2131755748(0x7f1002e4, float:1.9142384E38)
            java.lang.String r9 = r9.getString(r3)
            goto L74
        L4b:
            mobi.beyondpod.rsscore.Feed r8 = mobi.beyondpod.rsscore.Configuration.getActiveFeedFilter()
            if (r8 == 0) goto L72
            mobi.beyondpod.rsscore.Feed r8 = mobi.beyondpod.rsscore.Configuration.getActiveFeedFilter()
            boolean r8 = r8.hasUrl()
            if (r8 == 0) goto L72
            android.content.res.Resources r8 = r7.getResources()
            r9 = 2131755750(0x7f1002e6, float:1.9142388E38)
            java.lang.String r8 = r8.getString(r9)
            android.content.res.Resources r9 = r7.getResources()
            r3 = 2131755747(0x7f1002e3, float:1.9142382E38)
            java.lang.String r9 = r9.getString(r3)
            goto L74
        L72:
            r8 = r2
            r9 = r8
        L74:
            boolean r3 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r8)
            if (r3 != 0) goto L8a
            android.widget.TextView r1 = r7._Footer1
            r1.setText(r8)
            android.widget.TextView r8 = r7._Footer2
            r8.setText(r9)
            android.widget.TextView r8 = r7._Footer2
            r8.setEnabled(r0)
            goto L99
        L8a:
            android.widget.TextView r8 = r7._Footer1
            r8.setText(r2)
            android.widget.TextView r8 = r7._Footer2
            r8.setText(r2)
            android.widget.TextView r8 = r7._Footer2
            r8.setEnabled(r1)
        L99:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.onAdapterDataLoaded(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageLoader getImageLoader() {
        if (getOwnerActivity() == null) {
            return null;
        }
        return ((ImageLoader.ImageLoaderProvider) getOwnerActivity()).getImageLoaderInstance();
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.SectionEmptyListAdapter.IEpmtyListAdapterOwner
    public void onEmptyViewSelected() {
        if (totalListSize() == 0) {
            Feed activeFeedFilter = Configuration.getActiveFeedFilter();
            if (activeFeedFilter == null) {
                CommandManager.cmdStartHtmlViewActivity(Configuration.updateAndDownloadHelpFileURL(), BEYOND_POD_FAQ, false);
                return;
            } else {
                openFeedContent(activeFeedFilter);
                return;
            }
        }
        Configuration.setActiveMediaFilter(0);
        reloadContent();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.ICardAdapterOwner
    public void onItemSelected(View view, Track track) {
        if (this._ActionMode != null) {
            boolean z = false;
            if (isItemSelected(track)) {
                removeAsSelectedItem(track);
            } else {
                addAsSelectedItem(track);
                z = true;
            }
            if (this._SelectedEpisodes.size() == 0) {
                this._ActionMode.finish();
                return;
            }
            if (view instanceof Checkable) {
                ((Checkable) view).setChecked(z);
            }
            this._actionModeListener.onItemCheckedStateChanged(this._ActionMode, track);
            return;
        }
        this._Owner.openTrackPropertiesDialog(view, track, this._Adapter.getAllEpisodes());
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.ICardAdapterOwner
    public boolean isMultiSelecting() {
        return this._ActionMode != null;
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.ICardAdapterOwner
    public void onItemLongPressed(Track track) {
        if (this._ActionMode == null) {
            startActionMode(this._actionModeListener);
            addAsSelectedItem(track);
            this._actionModeListener.onItemCheckedStateChanged(this._ActionMode, track);
        }
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.ICardAdapterOwner
    public void onPlayPause(Track track) {
        if (track != null) {
            if (track.isPlayed()) {
                CommandManager.cmdSetPlayedState(track, false);
            }
            if (Configuration.shouldAutoOpenPlayer(CommandManager.cmdPlayPauseTrack(getContext(), track, this._Adapter.generatePlaylist(track)))) {
                this._Owner.autoExpandPlayerOnNextPlay();
            }
        }
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.ICardAdapterOwner
    public void onDownload(final Track track) {
        if (track == null || !track.hasUrl()) {
            return;
        }
        if (EnclosureDownloadManager.isDownloading()) {
            CommandManager.cmdDownloadTrackManually(getContext(), track);
        } else {
            UserNotificationManager.warnAboutStartEpisodeDownload(getContext(), new UserNotificationManager.OnContinueListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.6
                @Override // mobi.beyondpod.ui.views.notifications.UserNotificationManager.OnContinueListener
                public void onContinue() {
                    CommandManager.cmdDownloadTrackManually(MyEpisodesListView.this.getContext(), track);
                }
            });
        }
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.ICardAdapterOwner
    public void onAddRemovePlaylist(Track track) {
        CommandManager.cmdAddRemoveToPlaylist(getContext(), track);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.ICardAdapterOwner
    public void showCardMenu(View view, final Track track) {
        PopupMenu popupMenu = new PopupMenu(getContext(), view);
        buildCardMenu(popupMenu.getMenu(), track);
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.7
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                MyEpisodesListView.this.handleCardMenu(track, menuItem);
                return true;
            }
        });
        popupMenu.setOnDismissListener(new PopupMenu.OnDismissListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.MyEpisodesListView.8
            @Override // android.widget.PopupMenu.OnDismissListener
            public void onDismiss(PopupMenu popupMenu2) {
                MyEpisodesListView.this._PauseRefresh = false;
                MyEpisodesListView.this.refreshContent();
            }
        });
        popupMenu.show();
        this._PauseRefresh = true;
    }

    private void buildCardMenu(Menu menu, Track track) {
        menu.add(32, 34, 1, R.string.MENU_delete_podcast_episodes);
        menu.add(32, 42, 4, track.allowAutoDelete() ? R.string.MENU_lock_episode : R.string.MENU_unlock_episode);
        menu.add(32, 35, 4, track.isPlayed() ? R.string.MENU_mark_unplayed : R.string.MENU_mark_played);
        if (track.hasUrl()) {
            menu.add(32, 41, 6, R.string.MENU_browser_share_podcast);
        }
        if (Configuration.episodeCardSize() == 3) {
            menu.add(32, 36, 2, BeyondPodApplication.getInstance().playList().hasTrack(track) ? R.string.MENU_remove_from_playlist : R.string.MENU_add_to_playlist);
            if (!StringUtils.isNullOrEmpty(track.getUrl())) {
                menu.add(0, 37, 3, R.string.MENU_podcast_info);
            }
        }
        if (Configuration.getActiveFeedFilter() == null && track.hasUrl()) {
            menu.add(32, 46, 7, R.string.MENU_open_episode_feed);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCardMenu(Track track, MenuItem menuItem) {
        TrackList trackList = new TrackList();
        trackList.add(track);
        handleOptionsMenu(menuItem, trackList);
    }

    public TrackList getAllPlayedEpisodes() {
        return this._Adapter.getAllPlayedEpisodes();
    }

    public void onActivityDestroy() {
        if (this._Adapter != null) {
            this._Adapter.onActivityDestroy();
        }
    }
}
