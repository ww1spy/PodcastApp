package mobi.beyondpod.ui.views.player;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupMenu;
import android.widget.RelativeLayout;
import android.widget.TextView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.CommandManager;

/* loaded from: classes.dex */
public class PlaylistHeaderActionbar extends RelativeLayout {
    private static final String ABOUT = CoreHelper.loadResourceString(R.string.podcast_list_view_about);
    private static final int MENU_CLEAR_PLAYLIST = 101;
    private static final int MENU_DELETE_PLAYED_FROM_PLAYLIST = 103;
    private static final int MENU_DOWNLOAD_PLAYLIST = 102;
    private static final int MENU_PLAY_VIDEO_AS_AUDIO = 104;
    private static final String TAG = "PlaylistHeaderActionbar";
    View _ABAddSmartPlay;
    View _Overflow;
    private View.OnClickListener _OverflowHandler;
    TextView _PlaylistInfo;
    TextView _PlaylistName;

    public PlaylistHeaderActionbar(Context context) {
        super(context);
        this._OverflowHandler = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistHeaderActionbar.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PopupMenu popupMenu = new PopupMenu(PlaylistHeaderActionbar.this.getContext(), view);
                if (!PlayList.isEmpty()) {
                    popupMenu.getMenu().add(0, 101, 1, R.string.playlist_editor_dialog_clear_playlist);
                }
                if (BeyondPodApplication.getInstance().playList().hasPlayed()) {
                    popupMenu.getMenu().add(0, 103, 2, R.string.MENU_delete_all_played_podcasts);
                }
                if (!PlayList.isEmpty() && BeyondPodApplication.getInstance().playList().hasEpisodesToDownload()) {
                    popupMenu.getMenu().add(0, 102, 3, UpdateAndDownloadManager.isWorking() ? R.string.MENU_stop_update : R.string.MENU_download_all_playlist);
                }
                popupMenu.getMenu().add(0, 104, 30, R.string.MENU_video_as_audio).setCheckable(true).setChecked(true ^ Configuration.allowVideosInPlaylist());
                popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistHeaderActionbar.2.1
                    @Override // android.widget.PopupMenu.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        switch (menuItem.getItemId()) {
                            case 101:
                                CommandManager.cmdEmptyPlaylist(false, !Configuration.keepCurrentEpisodeForClearPlaylist());
                                return true;
                            case 102:
                                if (UpdateAndDownloadManager.isWorking()) {
                                    CommandManager.cmdShowDownloadQueue();
                                } else {
                                    CommandManager.cmdDownloadAllInPlaylistManually(PlaylistHeaderActionbar.this.getContext());
                                }
                                return true;
                            case 103:
                                CommandManager.cmdDeletePodcasts(PlaylistHeaderActionbar.this.getContext(), BeyondPodApplication.getInstance().playList().getAllPlayed());
                                return true;
                            case 104:
                                Configuration.setAllowVideosInPlaylist(!Configuration.allowVideosInPlaylist());
                                CommandManager.cmdLoadCurrentTrack();
                                return true;
                            default:
                                return false;
                        }
                    }
                });
                popupMenu.show();
            }
        };
    }

    public PlaylistHeaderActionbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._OverflowHandler = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistHeaderActionbar.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PopupMenu popupMenu = new PopupMenu(PlaylistHeaderActionbar.this.getContext(), view);
                if (!PlayList.isEmpty()) {
                    popupMenu.getMenu().add(0, 101, 1, R.string.playlist_editor_dialog_clear_playlist);
                }
                if (BeyondPodApplication.getInstance().playList().hasPlayed()) {
                    popupMenu.getMenu().add(0, 103, 2, R.string.MENU_delete_all_played_podcasts);
                }
                if (!PlayList.isEmpty() && BeyondPodApplication.getInstance().playList().hasEpisodesToDownload()) {
                    popupMenu.getMenu().add(0, 102, 3, UpdateAndDownloadManager.isWorking() ? R.string.MENU_stop_update : R.string.MENU_download_all_playlist);
                }
                popupMenu.getMenu().add(0, 104, 30, R.string.MENU_video_as_audio).setCheckable(true).setChecked(true ^ Configuration.allowVideosInPlaylist());
                popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistHeaderActionbar.2.1
                    @Override // android.widget.PopupMenu.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        switch (menuItem.getItemId()) {
                            case 101:
                                CommandManager.cmdEmptyPlaylist(false, !Configuration.keepCurrentEpisodeForClearPlaylist());
                                return true;
                            case 102:
                                if (UpdateAndDownloadManager.isWorking()) {
                                    CommandManager.cmdShowDownloadQueue();
                                } else {
                                    CommandManager.cmdDownloadAllInPlaylistManually(PlaylistHeaderActionbar.this.getContext());
                                }
                                return true;
                            case 103:
                                CommandManager.cmdDeletePodcasts(PlaylistHeaderActionbar.this.getContext(), BeyondPodApplication.getInstance().playList().getAllPlayed());
                                return true;
                            case 104:
                                Configuration.setAllowVideosInPlaylist(!Configuration.allowVideosInPlaylist());
                                CommandManager.cmdLoadCurrentTrack();
                                return true;
                            default:
                                return false;
                        }
                    }
                });
                popupMenu.show();
            }
        };
    }

    public PlaylistHeaderActionbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._OverflowHandler = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistHeaderActionbar.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PopupMenu popupMenu = new PopupMenu(PlaylistHeaderActionbar.this.getContext(), view);
                if (!PlayList.isEmpty()) {
                    popupMenu.getMenu().add(0, 101, 1, R.string.playlist_editor_dialog_clear_playlist);
                }
                if (BeyondPodApplication.getInstance().playList().hasPlayed()) {
                    popupMenu.getMenu().add(0, 103, 2, R.string.MENU_delete_all_played_podcasts);
                }
                if (!PlayList.isEmpty() && BeyondPodApplication.getInstance().playList().hasEpisodesToDownload()) {
                    popupMenu.getMenu().add(0, 102, 3, UpdateAndDownloadManager.isWorking() ? R.string.MENU_stop_update : R.string.MENU_download_all_playlist);
                }
                popupMenu.getMenu().add(0, 104, 30, R.string.MENU_video_as_audio).setCheckable(true).setChecked(true ^ Configuration.allowVideosInPlaylist());
                popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistHeaderActionbar.2.1
                    @Override // android.widget.PopupMenu.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        switch (menuItem.getItemId()) {
                            case 101:
                                CommandManager.cmdEmptyPlaylist(false, !Configuration.keepCurrentEpisodeForClearPlaylist());
                                return true;
                            case 102:
                                if (UpdateAndDownloadManager.isWorking()) {
                                    CommandManager.cmdShowDownloadQueue();
                                } else {
                                    CommandManager.cmdDownloadAllInPlaylistManually(PlaylistHeaderActionbar.this.getContext());
                                }
                                return true;
                            case 103:
                                CommandManager.cmdDeletePodcasts(PlaylistHeaderActionbar.this.getContext(), BeyondPodApplication.getInstance().playList().getAllPlayed());
                                return true;
                            case 104:
                                Configuration.setAllowVideosInPlaylist(!Configuration.allowVideosInPlaylist());
                                CommandManager.cmdLoadCurrentTrack();
                                return true;
                            default:
                                return false;
                        }
                    }
                });
                popupMenu.show();
            }
        };
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this._PlaylistInfo = (TextView) findViewById(R.id.header_subtitle);
        this._PlaylistName = (TextView) findViewById(R.id.header_title);
        this._ABAddSmartPlay = findViewById(R.id.smartPlayAdd);
        this._ABAddSmartPlay.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistHeaderActionbar.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdEditSmartPlayList(-1);
            }
        });
        this._Overflow = findViewById(R.id.overflow);
        this._Overflow.setOnClickListener(this._OverflowHandler);
    }

    public void refreshHeader() {
        this._ABAddSmartPlay.setVisibility(SmartPlaylistManager.lastUsedSmartplay() == null ? 0 : 8);
    }

    public void updatePlaylistInfo() {
        String str;
        if (PlayList.isEmpty()) {
            this._PlaylistName.setText((CharSequence) null);
            this._PlaylistInfo.setVisibility(8);
            return;
        }
        CoreHelper.TrackSizeInfo playlistTotalTime = BeyondPodApplication.getInstance().playList().playlistTotalTime();
        if (!playlistTotalTime.totalTimeIsApproximate || playlistTotalTime.totalTime > 200) {
            TextView textView = this._PlaylistInfo;
            Object[] objArr = new Object[2];
            if (playlistTotalTime.totalTimeIsApproximate) {
                str = ABOUT + " ";
            } else {
                str = "";
            }
            objArr[0] = str;
            objArr[1] = CoreHelper.getApproximateTimeDurationAsString(playlistTotalTime.totalTime * 1000, false);
            textView.setText(String.format("%s%s", objArr));
            this._PlaylistInfo.setVisibility(0);
        } else {
            this._PlaylistInfo.setVisibility(8);
        }
        this._PlaylistName.setText(R.string.playlist_divider_text);
    }
}
