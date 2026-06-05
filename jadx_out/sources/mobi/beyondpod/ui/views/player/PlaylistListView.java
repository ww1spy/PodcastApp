package mobi.beyondpod.ui.views.player;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupMenu;
import android.widget.TextView;
import com.mobeta.android.dslv.DragSortListView;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.MasterView;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip;
import mobi.beyondpod.ui.views.notifications.Message;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class PlaylistListView extends DragSortListView implements RepositoryEvents.RepositoryEventListener, PlayListEvents.PlayListEventListener, AdapterView.OnItemClickListener {
    private static final int FL_MENU_FIRST = 30;
    private static final int MENU_DELETE_PODCAST = 32;
    private static final int MENU_MOVE_BOTTOM = 41;
    private static final int MENU_MOVE_TOP = 40;
    private static final int MENU_OPEN_FEED = 42;
    private static final int MENU_PLAY_IN_EXTERNAL_PLAYER = 39;
    private static final int MENU_PODCAST_INFO = 37;
    private static final int MENU_REMOVE_FROM_PLAYLIST = 35;
    private static final int MENU_RESUME_OR_STOP_DOWNLOAD = 34;
    private static final int MENU_SHARE_PODCAST_URL = 36;
    private static final int MENU_TOGGLE_LOCK_PODCAST = 38;
    private static final int MENU_TOGGLE_PLAYED = 33;
    private static final String OF = CoreHelper.loadResourceString(R.string.feeds_status_of);
    ActionMode _ActionMode;
    private PlaylistViewAdapter _Adapter;
    private View _InfoCardHeaderView;
    long _LastTouchTime;
    private IPlayListOwner _Owner;
    boolean _PauseRefresh;
    private PlaylistHeaderActionbar _PlaylistHeader;
    private View _SmartPlayHeader;
    private TextView _SmartPlayShortcut;
    private DragSortListView.DropListener mDropListener;

    /* loaded from: classes.dex */
    public interface IPlayListOwner {
        FragmentActivity getOwnerActivity();

        void onPlaylistSelected(SmartPlaylist smartPlaylist);

        void openTrackFeed(Track track);

        void openTrackPropertiesDialog(Track track, TrackList trackList);

        void runOnUiThread(Runnable runnable);

        void switchToSmartPlay();
    }

    public PlaylistListView(Context context) {
        super(context, null);
        this._PauseRefresh = false;
        this.mDropListener = new DragSortListView.DropListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.1
            @Override // com.mobeta.android.dslv.DragSortListView.DropListener
            public void drop(int i, int i2) {
                BeyondPodApplication.getInstance().playList().moveTrack(i, i2);
            }
        };
    }

    public PlaylistListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._PauseRefresh = false;
        this.mDropListener = new DragSortListView.DropListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.1
            @Override // com.mobeta.android.dslv.DragSortListView.DropListener
            public void drop(int i, int i2) {
                BeyondPodApplication.getInstance().playList().moveTrack(i, i2);
            }
        };
    }

    public void initializeView(IPlayListOwner iPlayListOwner) {
        this._Owner = iPlayListOwner;
        this._Adapter = new PlaylistViewAdapter(getContext(), this);
        setTextFilterEnabled(false);
        setDropListener(this.mDropListener);
        setOnItemClickListener(this);
        setChoiceMode(3);
        setMultiChoiceModeListener(new AbsListView.MultiChoiceModeListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.2
            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                refreshActionModeTitle(actionMode);
                menu.clear();
                PlaylistListView.this.prepareActionModeOptionsMenu(menu);
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                PlaylistListView.this._ActionMode = null;
                PlaylistListView.this.setDragEnabled(true);
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                PlaylistListView.this._ActionMode = actionMode;
                PlaylistListView.this.clearChoices();
                PlaylistListView.this.setDragEnabled(false);
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                if (!PlaylistListView.this.handleActionModeOptionsMenu(menuItem, PlaylistListView.this.getCheckedItems())) {
                    return true;
                }
                actionMode.finish();
                return true;
            }

            @Override // android.widget.AbsListView.MultiChoiceModeListener
            public void onItemCheckedStateChanged(ActionMode actionMode, int i, long j, boolean z) {
                actionMode.invalidate();
            }

            private void refreshActionModeTitle(ActionMode actionMode) {
                TrackList checkedItems = PlaylistListView.this.getCheckedItems();
                if (checkedItems.size() > 0) {
                    actionMode.setTitle(String.format("%s %s %s", Integer.valueOf(checkedItems.size()), PlaylistListView.OF, Integer.valueOf(PlaylistListView.this._Adapter.getCount())));
                } else {
                    actionMode.setTitle("");
                }
            }
        });
        LayoutInflater from = LayoutInflater.from(getContext());
        showHowToUseDragDropCard();
        View inflate = from.inflate(R.layout.playlist_header, (ViewGroup) null);
        this._SmartPlayHeader = inflate.findViewById(R.id.shortcut_content);
        this._SmartPlayShortcut = (TextView) this._SmartPlayHeader.findViewById(R.id.shortcut_name);
        this._PlaylistHeader = (PlaylistHeaderActionbar) inflate.findViewById(R.id.playlist_header);
        this._SmartPlayHeader.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlaylistListView.this._Owner.onPlaylistSelected(SmartPlaylistManager.lastUsedSmartplay());
            }
        });
        this._SmartPlayHeader.findViewById(R.id.ps_shortcut_expander).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlaylistListView.this.openShopercutOverflow(view);
            }
        });
        this._SmartPlayHeader.setVisibility(8);
        this._PlaylistHeader.refreshHeader();
        addHeaderView(inflate, null, false);
        setAdapter((ListAdapter) this._Adapter);
        reloadList();
    }

    private void showHowToUseDragDropCard() {
        if (!UserNotificationManager.isNotificationEnabledFor(6) || BeyondPodApplication.getInstance().playList().playlistSize() < 2) {
            return;
        }
        Message message = new Message();
        message.MessageText = getContext().getResources().getString(R.string.tip_notification_drag_drop_playlist_info);
        message.MessageTitle = getContext().getResources().getString(R.string.tip_notification);
        message.ImageResourceId = R.drawable.ic_tip_notify_dragdrop;
        InfoCardTip infoCardTip = new InfoCardTip(getContext(), message, 6, 2, new InfoCardManager.IInfoCardAdapterOwner() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.5
            @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
            public FragmentActivity getOwnerActivity() {
                return null;
            }

            @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
            public void reloadContent() {
                if (PlaylistListView.this._InfoCardHeaderView != null) {
                    PlaylistListView.this.removeHeaderView(PlaylistListView.this._InfoCardHeaderView);
                }
            }
        });
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.info_card_tip_navigator_padding);
        this._InfoCardHeaderView = infoCardTip.getView(0, null, null);
        this._InfoCardHeaderView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        addHeaderView(this._InfoCardHeaderView);
    }

    private boolean isInitialized() {
        return (this._Owner == null || this._Adapter == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleActionModeOptionsMenu(MenuItem menuItem, TrackList trackList) {
        if (trackList.size() == 0) {
            return true;
        }
        switch (menuItem.getItemId()) {
            case 32:
                if (trackList.size() > 0) {
                    CommandManager.cmdDeletePodcasts(getContext(), trackList);
                }
                return true;
            case 33:
                boolean hasUnPlayed = trackList.hasUnPlayed();
                Iterator<Track> it = trackList.iterator();
                while (it.hasNext()) {
                    CommandManager.cmdSetPlayedState(it.next(), hasUnPlayed);
                }
                return false;
            case 34:
                if (trackList.size() == 1) {
                    onDownload(trackList.get(0));
                } else if (UpdateAndDownloadManager.isWorking()) {
                    CommandManager.cmdShowDownloadQueue();
                } else {
                    CommandManager.cmdDownloadTracksManually(getContext(), trackList);
                }
                return true;
            case 35:
                CommandManager.cmdRemoveFromPlaylist(trackList);
                return true;
            case 36:
                if (trackList.size() > 0) {
                    CommandManager.cmdSharePodcast(getContext(), trackList.get(0));
                }
                return true;
            case 37:
                if (trackList.size() > 0) {
                    TrackList trackList2 = new TrackList();
                    trackList2.addAll(BeyondPodApplication.getInstance().playList().getTracks());
                    this._Owner.openTrackPropertiesDialog(trackList.get(0), trackList2);
                }
                return true;
            case 38:
                if (trackList.hasUnLocked()) {
                    CommandManager.cmdLockTracks(getContext(), trackList);
                } else {
                    CommandManager.cmdUnlockTracks(getContext(), trackList);
                }
                return false;
            case 39:
                if (trackList.size() > 0) {
                    CommandManager.cmdOpenExternalPlayer(getContext(), trackList.get(0));
                }
                return true;
            case 40:
                BeyondPodApplication.getInstance().playList().moveTracks(trackList, 1);
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
                for (int i = 0; i != trackList.size(); i++) {
                    sparseBooleanArray.append(getHeaderViewsCount() + i, true);
                }
                batchSelect(sparseBooleanArray);
                setSelection(0);
                return false;
            case 41:
                BeyondPodApplication.getInstance().playList().moveTracks(trackList, 2);
                int trackPosition = BeyondPodApplication.getInstance().playList().getTrackPosition(trackList.get(0));
                SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray();
                for (int i2 = trackPosition; i2 != BeyondPodApplication.getInstance().playList().playlistSize(); i2++) {
                    sparseBooleanArray2.append(getHeaderViewsCount() + i2, true);
                }
                batchSelect(sparseBooleanArray2);
                setSelection(trackPosition);
                return false;
            case 42:
                this._Owner.openTrackFeed(trackList.get(0));
                return false;
            default:
                return true;
        }
    }

    public void onDownload(final Track track) {
        if (track == null || !track.hasUrl()) {
            return;
        }
        if (EnclosureDownloadManager.isDownloading()) {
            CommandManager.cmdDownloadTrackManually(getContext(), track);
        } else {
            UserNotificationManager.warnAboutStartEpisodeDownload(getContext(), new UserNotificationManager.OnContinueListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.6
                @Override // mobi.beyondpod.ui.views.notifications.UserNotificationManager.OnContinueListener
                public void onContinue() {
                    CommandManager.cmdDownloadTrackManually(PlaylistListView.this.getContext(), track);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareActionModeOptionsMenu(Menu menu) {
        TrackList checkedItems = getCheckedItems();
        if (checkedItems.size() == 0) {
            return;
        }
        menu.add(0, 35, 1, R.string.MENU_remove_from_playlist).setShowAsAction(1);
        menu.add(0, 32, 2, R.string.MENU_delete_podcast_episodes).setShowAsAction(0);
        menu.add(0, 33, 3, checkedItems.hasUnPlayed() ? R.string.MENU_mark_played : R.string.MENU_mark_unplayed).setShowAsAction(0);
        menu.add(0, 38, 4, checkedItems.hasUnLocked() ? R.string.MENU_lock_episode : R.string.MENU_unlock_episode).setShowAsAction(0);
        menu.add(0, 40, 5, R.string.MENU_move_to_top).setShowAsAction(0);
        menu.add(0, 41, 6, R.string.MENU_move_to_bottom).setShowAsAction(0);
        if (checkedItems.size() == 1 && Configuration.playerIntegrationType() != 3) {
            menu.add(0, 39, 7, R.string.MENU_play_in_external_player).setShowAsAction(0);
        }
        if (!checkedItems.hasNotDownloaded() || UpdateAndDownloadManager.isWorking()) {
            return;
        }
        menu.add(0, 34, 8, R.string.MENU_start_download).setShowAsAction(0);
    }

    public TrackList getCheckedItems() {
        Track trackAt;
        TrackList trackList = new TrackList();
        SparseBooleanArray checkedItemPositions = getCheckedItemPositions();
        for (int i = 0; i != this._Adapter.getCount() + getHeaderViewsCount(); i++) {
            if (checkedItemPositions.get(i) && (trackAt = this._Adapter.getTrackAt(i - getHeaderViewsCount())) != null) {
                trackList.add(trackAt);
            }
        }
        return trackList;
    }

    public void batchSelect(SparseBooleanArray sparseBooleanArray) {
        clearChoices();
        for (int i = 0; i < sparseBooleanArray.size(); i++) {
            setItemChecked(sparseBooleanArray.keyAt(i), true);
        }
        refreshList();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        MasterView masterView;
        int headerViewsCount = i - getHeaderViewsCount();
        Track trackAt = this._Adapter.getTrackAt(headerViewsCount);
        if (trackAt != null) {
            if (trackAt.getCurrentPlayState() == 0) {
                CommandManager.cmdResumePlayback();
            } else if (trackAt.getCurrentPlayState() == 1) {
                CommandManager.cmdPauseAudioPlayback();
            } else {
                CommandManager.cmdPlayPosition(headerViewsCount);
            }
            if (!Configuration.shouldAutoOpenPlayer(false) || (masterView = (MasterView) getOwnerActivity()) == null || masterView.Workspace == null) {
                return;
            }
            masterView.Workspace.autoExpandPlayerOnNextPlay();
        }
    }

    public void onAfterDeactivate() {
        BeyondPodApplication.messageBus.unsubscribe(this, PlayListEvents.PlayListEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
        CoreHelper.writeTraceEntry("ZZZZZZ", "Playlist Deactivated");
    }

    public void onBeforeActivate() {
        CoreHelper.writeTraceEntry("ZZZZZZ", "Playlist Activated");
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, PlayListEvents.PlayListEvent.class);
    }

    public void reloadList() {
        if (isInitialized()) {
            this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.7
                @Override // java.lang.Runnable
                public void run() {
                    if (PlaylistListView.this._Adapter != null) {
                        PlaylistListView.this._Adapter.reloadTracks();
                    }
                    PlaylistListView.this.updatePlaylistInfo();
                }
            });
        }
    }

    public void refreshList() {
        if (isInitialized() && !this._PauseRefresh) {
            this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.8
                @Override // java.lang.Runnable
                public void run() {
                    if (PlaylistListView.this._Adapter == null || !PlaylistListView.this.isDragIdle()) {
                        return;
                    }
                    PlaylistListView.this._Adapter.refresh();
                    if (System.currentTimeMillis() - PlaylistListView.this._LastTouchTime > 20000) {
                        PlaylistListView.this.selectCurrentEpisode();
                    }
                }
            });
        }
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type == 11 && repositoryEvent.Track != null) {
            refreshList();
        }
        if (repositoryEvent.Type == 8 || repositoryEvent.Type == 10) {
            reloadList();
        }
    }

    @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
    public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
        if (playListEvent.Type == 0) {
            reloadList();
        }
    }

    @Override // com.mobeta.android.dslv.DragSortListView, android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    @Override // com.mobeta.android.dslv.DragSortListView, android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this._LastTouchTime = System.currentTimeMillis();
        return super.onTouchEvent(motionEvent);
    }

    public void dismissActionMode() {
        if (this._ActionMode != null) {
            this._ActionMode.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isMultiSelecting() {
        return this._ActionMode != null;
    }

    public void selectCurrentEpisode() {
        int trackIndex;
        Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
        if (currentTrack == null || (trackIndex = this._Adapter.getTrackIndex(currentTrack)) < 0) {
            return;
        }
        setSelection(trackIndex);
    }

    public FragmentActivity getOwnerActivity() {
        return this._Owner.getOwnerActivity();
    }

    public ImageLoader getImageLoader() {
        if (getOwnerActivity() == null) {
            return null;
        }
        return ((ImageLoader.ImageLoaderProvider) getOwnerActivity()).getImageLoaderInstance();
    }

    public void openTrackOverflow(View view, final Track track) {
        PopupMenu popupMenu = new PopupMenu(getContext(), view);
        popupMenu.getMenu().add(0, 32, 1, R.string.MENU_delete_podcast_episodes);
        popupMenu.getMenu().add(0, 35, 2, R.string.MENU_remove_from_playlist);
        popupMenu.getMenu().add(0, 37, 3, R.string.MENU_podcast_info);
        popupMenu.getMenu().add(0, 38, 4, track.canSetAsFavorite() ? R.string.MENU_lock_episode : R.string.MENU_unlock_episode);
        popupMenu.getMenu().add(0, 33, 5, track.isPlayed() ? R.string.MENU_mark_unplayed : R.string.MENU_mark_played);
        if (track.hasUrl()) {
            popupMenu.getMenu().add(0, 36, 6, R.string.MENU_browser_share_podcast);
        }
        popupMenu.getMenu().add(0, 42, 7, R.string.MENU_open_episode_feed);
        if (track.hasUrl() && !track.isFullyDownloaded()) {
            popupMenu.getMenu().add(0, 34, 8, R.string.MENU_start_download);
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.9
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                TrackList trackList = new TrackList();
                trackList.add(track);
                return PlaylistListView.this.handleActionModeOptionsMenu(menuItem, trackList);
            }
        });
        popupMenu.setOnDismissListener(new PopupMenu.OnDismissListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistListView.10
            @Override // android.widget.PopupMenu.OnDismissListener
            public void onDismiss(PopupMenu popupMenu2) {
                PlaylistListView.this._PauseRefresh = false;
                PlaylistListView.this.refreshList();
            }
        });
        popupMenu.show();
        this._PauseRefresh = true;
    }

    public void openShopercutOverflow(View view) {
        this._Owner.switchToSmartPlay();
    }

    public void cancelActionMode() {
        if (this._ActionMode != null) {
            this._ActionMode.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlaylistInfo() {
        this._PlaylistHeader.updatePlaylistInfo();
        updateSmartPlayShortcut();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateSmartPlayShortcut() {
        SmartPlaylist lastUsedSmartplay = SmartPlaylistManager.lastUsedSmartplay();
        if (lastUsedSmartplay != null) {
            this._SmartPlayShortcut.setText(lastUsedSmartplay.name());
            this._SmartPlayHeader.setVisibility(0);
        } else {
            this._SmartPlayHeader.setVisibility(8);
        }
        this._PlaylistHeader.refreshHeader();
    }
}
