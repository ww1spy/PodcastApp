package mobi.beyondpod.ui.views.player;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.IntEvaluator;
import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.views.MasterView;
import mobi.beyondpod.ui.views.player.PlaylistListView;
import mobi.beyondpod.ui.views.player.SmartPlayListView;

/* loaded from: classes.dex */
public class PlaylistFragment extends Fragment implements PlaylistListView.IPlayListOwner, SmartPlayListView.IPlayListOwner {
    public static final String TAG = "PlaylistFragment";
    ImageView _Expander;
    private boolean _IsInitialized = false;
    PlaylistListView _PlayList;
    SmartPlayListView _SmartPlayList;
    private int _SmartPlayOffset;
    View _SmartPlayPanel;
    private TextView _SmartPlayShortcut;
    View _SplBottom;
    View _SplTop;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this._SmartPlayOffset = getResources().getDimensionPixelSize(R.dimen.playlist_header_height) + getResources().getDimensionPixelSize(R.dimen.playlist_header_smartplay_extras_height);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.playlist_editor_view, viewGroup, false);
        this._PlayList = (PlaylistListView) inflate.findViewById(R.id.playlistList);
        registerForContextMenu(this._PlayList);
        this._SmartPlayPanel = inflate.findViewById(R.id.smartPlayPanel);
        this._SmartPlayList = (SmartPlayListView) this._SmartPlayPanel.findViewById(R.id.smartPlay);
        this._SmartPlayPanel.findViewById(R.id.separator_color_h).setBackgroundColor(ContextCompat.getColor(getContext(), R.color.smart_playlist_shortcut_separator_hi));
        this._SplBottom = inflate.findViewById(R.id.smartPlayExtras);
        this._SplTop = inflate.findViewById(R.id.spl_shortcut);
        View findViewById = inflate.findViewById(R.id.shortcut_content);
        this._SmartPlayShortcut = (TextView) findViewById.findViewById(R.id.shortcut_name);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlaylistFragment.this.onPlaylistSelected(SmartPlaylistManager.lastUsedSmartplay());
            }
        });
        this._Expander = (ImageView) findViewById.findViewById(R.id.ps_shortcut_expander);
        this._Expander.setImageResource(R.drawable.ic_caret_down_light);
        this._Expander.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlaylistFragment.this.switchToPlaylist(true);
            }
        });
        inflate.findViewById(R.id.add_smart_play).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdEditSmartPlayList(-1);
            }
        });
        return inflate;
    }

    void updateSmartPlayShortcut() {
        SmartPlaylist lastUsedSmartplay = SmartPlaylistManager.lastUsedSmartplay();
        this._SmartPlayShortcut.setText(lastUsedSmartplay == null ? null : lastUsedSmartplay.name());
    }

    public void restoreState(MasterViewState masterViewState) {
        this._PlayList.initializeView(this);
        this._SmartPlayList.initializeView(this);
        this._PlayList.selectCurrentEpisode();
        updateSmartPlayShortcut();
        this._IsInitialized = true;
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        this._PlayList.dismissActionMode();
        super.onStop();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        this._PlayList.onBeforeActivate();
        if (this._IsInitialized) {
            this._PlayList.reloadList();
            this._SmartPlayList.reloadList();
            refreshSmartPlays();
        }
        super.onResume();
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        this._PlayList.onAfterDeactivate();
        super.onPause();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // mobi.beyondpod.ui.views.player.PlaylistListView.IPlayListOwner
    public void openTrackPropertiesDialog(Track track, TrackList trackList) {
        CommandManager.cmdOpenEpisodeNotes(track, trackList, null, getActivity());
    }

    @Override // mobi.beyondpod.ui.views.player.PlaylistListView.IPlayListOwner, mobi.beyondpod.ui.views.player.SmartPlayListView.IPlayListOwner
    public void runOnUiThread(Runnable runnable) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(runnable);
        } else {
            CoreHelper.writeTraceEntry(TAG, "Activity is null. Cannot run on UI thread.");
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlaylistListView.IPlayListOwner
    public FragmentActivity getOwnerActivity() {
        return getActivity();
    }

    @Override // mobi.beyondpod.ui.views.player.PlaylistListView.IPlayListOwner, mobi.beyondpod.ui.views.player.SmartPlayListView.IPlayListOwner
    public void onPlaylistSelected(SmartPlaylist smartPlaylist) {
        if (Configuration.autoPlaySmartPlaylists()) {
            CommandManager.cmdPlaySmartPlayList(smartPlaylist.id(), getActivity());
            FragmentActivity activity = getActivity();
            if (activity != null) {
                ((MasterView) activity).Workspace.autoExpandPlayerOnNextPlay();
            }
        } else {
            CommandManager.cmdLoadSmartPlayList(smartPlaylist.id(), getActivity());
        }
        updateSmartPlayShortcut();
        switchToPlaylist(true);
    }

    @Override // mobi.beyondpod.ui.views.player.PlaylistListView.IPlayListOwner
    public void openTrackFeed(Track track) {
        FragmentActivity activity;
        if (track == null || (activity = getActivity()) == null) {
            return;
        }
        MasterView masterView = (MasterView) activity;
        masterView.requestDrawersClose();
        masterView.openFeed(track.getParentFeed(), false, false);
    }

    @Override // mobi.beyondpod.ui.views.player.SmartPlayListView.IPlayListOwner
    public void onSmartPlaylistDeleted() {
        refreshSmartPlays();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshSmartPlays() {
        updateSmartPlayShortcut();
        this._PlayList.updateSmartPlayShortcut();
        if (SmartPlaylistManager.numVisiblePlaylists() == 0) {
            switchToPlaylist(false);
        }
    }

    int getSmartPlayHeight() {
        return this._PlayList.getHeight() - this._SmartPlayOffset;
    }

    @Override // mobi.beyondpod.ui.views.player.PlaylistListView.IPlayListOwner
    public void switchToSmartPlay() {
        if (this._PlayList.getVisibility() == 8 && this._SmartPlayPanel.getVisibility() == 0) {
            return;
        }
        int integer = getActivity().getResources().getInteger(android.R.integer.config_shortAnimTime);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofObject(new HeightEvaluator(this._SmartPlayList), 0, Integer.valueOf(getSmartPlayHeight())), ObjectAnimator.ofFloat(this._Expander, (Property<ImageView, Float>) View.ROTATION, 0.0f, 180.0f));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: mobi.beyondpod.ui.views.player.PlaylistFragment.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                PlaylistFragment.this.refreshSmartPlays();
                PlaylistFragment.this._SmartPlayList.reloadList();
                PlaylistFragment.this._Expander.setImageResource(R.drawable.ic_caret_down_light);
                PlaylistFragment.this._SmartPlayPanel.setVisibility(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PlaylistFragment.this._PlayList.setVisibility(8);
                PlaylistFragment.this._Expander.setRotation(0.0f);
                PlaylistFragment.this._Expander.setImageResource(R.drawable.ic_caret_up_light);
            }
        });
        animatorSet.setDuration(integer);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToPlaylist(boolean z) {
        if (this._PlayList.getVisibility() == 0 && this._SmartPlayPanel.getVisibility() == 8) {
            return;
        }
        if (!z) {
            this._PlayList.setVisibility(0);
            this._SmartPlayPanel.setVisibility(8);
            ViewGroup.LayoutParams layoutParams = this._SmartPlayList.getLayoutParams();
            layoutParams.height = 0;
            this._SmartPlayList.setLayoutParams(layoutParams);
            return;
        }
        int integer = getActivity().getResources().getInteger(android.R.integer.config_shortAnimTime);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofObject(new HeightEvaluator(this._SmartPlayList), Integer.valueOf(getSmartPlayHeight()), 0), ObjectAnimator.ofFloat(this._Expander, (Property<ImageView, Float>) View.ROTATION, 0.0f, -180.0f));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: mobi.beyondpod.ui.views.player.PlaylistFragment.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                PlaylistFragment.this._PlayList.setVisibility(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PlaylistFragment.this._SmartPlayPanel.setVisibility(8);
            }
        });
        animatorSet.setDuration(integer);
        animatorSet.start();
        this._PlayList.updateSmartPlayShortcut();
    }

    public void notifyDrawerClosed() {
        this._PlayList.cancelActionMode();
        switchToPlaylist(false);
    }

    public boolean closeSmartPlayListIfNeeded() {
        if (this._SmartPlayPanel.getVisibility() != 0) {
            return false;
        }
        switchToPlaylist(true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class HeightEvaluator extends IntEvaluator {
        private View v;

        public HeightEvaluator(View view) {
            this.v = view;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.animation.TypeEvaluator
        @NonNull
        public Integer evaluate(float f, Integer num, Integer num2) {
            int intValue = super.evaluate(f, num, num2).intValue();
            ViewGroup.LayoutParams layoutParams = this.v.getLayoutParams();
            layoutParams.height = intValue;
            this.v.setLayoutParams(layoutParams);
            return Integer.valueOf(intValue);
        }
    }
}
