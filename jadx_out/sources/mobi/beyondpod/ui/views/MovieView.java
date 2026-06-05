package mobi.beyondpod.ui.views;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.app.MediaRouteActionProvider;
import android.support.v7.widget.ShareActionProvider;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.MovieViewCounter;
import mobi.beyondpod.ui.core.mediarouter.BPMediaRouteDialogFactory;
import mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment;
import mobi.beyondpod.ui.views.base.BPMediaController;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public class MovieView extends AppCompatActivity implements BPMediaController.IViewOwner, MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner {
    private static final String TAG = "MovieView";
    private boolean _FinishOnCompletion;
    private boolean _IsCommandResume = false;
    private int _LastSystemUiVis;
    private BPMediaController _MediaController;
    private MovieViewControl _MovieViewControl;
    private Track _Track;

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onCastDeviceDetected() {
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onDisconnectFromDevice() {
    }

    private static PlayList playList() {
        return BeyondPodApplication.getInstance().playList();
    }

    private static void playTrackInternal(Track track) {
        CommandManager.cmdPlayTrack(BeyondPodApplication.getInstance().getApplicationContext(), track);
    }

    private static void executeActionDeleteCurrentTrackIfAllowed(Track track) {
        if (track.allowAutoDelete()) {
            FeedRepository.deleteTrackAsync(track);
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    @TargetApi(27)
    public void onCreate(Bundle bundle) {
        int intExtra;
        if (CoreHelper.apiLevel() < 27) {
            getWindow().addFlags(CoreHelper.apiLevel() < 26 ? 4718592 : 524288);
        } else {
            setShowWhenLocked(true);
        }
        MovieViewCounter.addInstance();
        supportRequestWindowFeature(9);
        super.onCreate(bundle);
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Closing view because the repository is not Loaded");
            finish();
            return;
        }
        Intent intent = getIntent();
        setContentView(R.layout.movie_view);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.findFragmentByTag(MediaRouteDiscoveryFragment.DISCOVERY_FRAGMENT_TAG) == null) {
            MediaRouteDiscoveryFragment mediaRouteDiscoveryFragment = new MediaRouteDiscoveryFragment();
            mediaRouteDiscoveryFragment.setOwner(this);
            mediaRouteDiscoveryFragment.setRouteSelector(BeyondPodApplication.getInstance().chromecastDevice().getRouteSelector());
            supportFragmentManager.beginTransaction().add(mediaRouteDiscoveryFragment, MediaRouteDiscoveryFragment.DISCOVERY_FRAGMENT_TAG).commit();
        }
        this._MediaController = (BPMediaController) findViewById(R.id.root);
        this._MediaController.initialize(this);
        this._MediaController.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: mobi.beyondpod.ui.views.MovieView.1
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                int i2 = MovieView.this._LastSystemUiVis ^ i;
                MovieView.this._LastSystemUiVis = i;
                if ((i2 & 2) == 0 || (i & 2) != 0) {
                    return;
                }
                MovieView.this._MediaController.show(BPMediaController.TOOLBAR_TIMEOUT_SHORT);
            }
        });
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(15);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(this, R.color.movie_view_action_bar_bg)));
        }
        UIUtils.setStatusBarColor(this, ContextCompat.getColor(this, R.color.movie_view_status_bar_bg));
        if (!loadCurrentTrackFromIntent(intent)) {
            finish();
            return;
        }
        this._MovieViewControl = new MovieViewControl(this._MediaController, this) { // from class: mobi.beyondpod.ui.views.MovieView.2
            @Override // mobi.beyondpod.ui.views.MovieViewControl
            public void onCompletion(boolean z) {
                if (MovieView.this._FinishOnCompletion && z && !playbackFailed()) {
                    this._CurrentTrack.markPlayed();
                    MovieView.this.handleEndOfPlaybackFor(this._CurrentTrack);
                }
            }

            @Override // mobi.beyondpod.ui.views.MovieViewControl, android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                super.onError(mediaPlayer, i, i2);
                boolean z = i2 == -1004;
                AlertDialog.Builder builder = new AlertDialog.Builder(MovieView.this);
                builder.setMessage(z ? R.string.dlg_user_warning_stream_failed_msg : R.string.dlg_user_warning_stream_format_problem_msg);
                builder.setTitle(z ? R.string.dlg_user_warning_stream_failed_title : R.string.dlg_user_warning_stream_format_problem_title);
                builder.setPositiveButton(R.string.alert_dialog_ok, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.MovieView.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        MovieView.this.finish();
                    }
                });
                if (!z) {
                    builder.setNegativeButton(R.string.alert_dialog_external_player_help, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.MovieView.2.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i3) {
                            CommandManager.cmdStartHtmlViewActivity(Configuration.faqVideoPlayerHelpURL(), "BeyondPod FAQ", false);
                            MovieView.this.finish();
                        }
                    });
                    if (CoreHelper.getExternalPlayersFor(MovieView.this._Track.trackPath(), "video/*").size() > 1) {
                        builder.setNeutralButton(R.string.alert_dialog_try_external_player, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.MovieView.2.3
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i3) {
                                CommandManager.cmdOpenExternalPlayer(MovieView.this, MovieView.this._Track);
                                MovieView.this.finish();
                            }
                        });
                    }
                }
                builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: mobi.beyondpod.ui.views.MovieView.2.4
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        MovieView.this.finish();
                    }
                });
                builder.show();
                return true;
            }

            @Override // mobi.beyondpod.ui.views.MovieViewControl, android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                super.onPrepared(mediaPlayer);
                CoreHelper.writeTraceEntry(MovieView.TAG, "Movie Prepared!");
            }
        };
        if (intent.hasExtra("android.intent.extra.screenOrientation") && (intExtra = intent.getIntExtra("android.intent.extra.screenOrientation", -1)) != getRequestedOrientation()) {
            setRequestedOrientation(intExtra);
        }
        this._FinishOnCompletion = intent.getBooleanExtra("android.intent.extra.finishOnCompletion", true);
        getWindow().setVolumeControlStream(3);
        this._MediaController.hideNavigationDelayed(BPMediaController.TOOLBAR_TIMEOUT_SHORT);
        this._MovieViewControl.playTrack(this._Track);
        AnalyticsTracker.onVideoPlaybackStarted(!this._Track.isFullyDownloaded());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        CoreHelper.writeTraceEntry(TAG, "===#####==== MovieView - New Intent Received! " + intent);
        if (MediaPlaybackService.SERVICECMD.equals(intent.getAction())) {
            if (MediaPlaybackService.CMD_CLOSE_VIDEO_PLAYER.equals(intent.getStringExtra(MediaPlaybackService.CMDNAME))) {
                requestCloseView();
                return;
            }
            HandleServiceCommand(intent);
        } else if (!loadCurrentTrackFromIntent(intent)) {
            finish();
            return;
        } else if (this._MovieViewControl != null) {
            this._MovieViewControl.playTrack(this._Track);
        }
        super.onNewIntent(intent);
    }

    private boolean loadCurrentTrackFromIntent(Intent intent) {
        String str;
        this._Track = FeedRepository.getTrackByPath(intent.getAction());
        if (this._Track == null) {
            return false;
        }
        String formatDateTime = this._Track.getParentFeed().hasUrl() ? DateTime.formatDateTime(this._Track.getLastModifiedDate()) : null;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this._Track.displayName());
        if (StringUtils.isNullOrEmpty(formatDateTime)) {
            str = "";
        } else {
            str = " • " + formatDateTime;
        }
        sb.append(str);
        supportActionBar.setTitle(sb.toString());
        supportActionBar.setSubtitle(this._Track.getParentFeed().getName());
        return true;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        CoreHelper.writeTraceEntry(TAG, "===#####==== OnPause called");
        this._MovieViewControl.onPause();
        BeyondPodApplication.getInstance().onMainWindowHidden();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        CoreHelper.writeTraceEntry(TAG, "===#####==== OnStop=== called");
        if (this._MovieViewControl != null) {
            this._MovieViewControl.onVideoWindowHidden(true);
        }
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        CoreHelper.writeTraceEntry(TAG, "===#####==== OnDestroy called");
        if (this._MovieViewControl != null) {
            this._MovieViewControl.stop();
        }
        MovieViewCounter.removeInstance();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this._MediaController.show(BPMediaController.TOOLBAR_TIMEOUT_SHORT);
        BeyondPodApplication.getInstance().onMainWindowVisible();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (z) {
            this._MovieViewControl.onResume(this._IsCommandResume);
        }
        this._IsCommandResume = false;
    }

    public void handleEndOfPlaybackFor(Track track) {
        if (track == null) {
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "===#####==== Completed the playback of video: " + track.displayName());
        playList().onTrackPlaybackComplete(false);
        finish();
    }

    private void executeActionDoNothing() {
        BeyondPodApplication.messageBus.publishEvent(new PlayListEvents.PlayListEvent(playList(), 3));
        finish();
    }

    private void executeActionPlayNextPosition(Track track) {
        CommandManager.cmdPlayNextTrack();
        finish();
    }

    private void executeActionPlayPreviousPosition(Track track) {
        CommandManager.cmdPlayPreviousTrack();
        finish();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        requestCloseView();
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        Intent buildShareEpisodeIntent;
        menu.clear();
        MenuItem add = menu.add(R.string.MENU_media_route);
        MediaRouteActionProvider mediaRouteActionProvider = new MediaRouteActionProvider(this);
        mediaRouteActionProvider.setRouteSelector(BeyondPodApplication.getInstance().chromecastDevice().getRouteSelector());
        mediaRouteActionProvider.setDialogFactory(new BPMediaRouteDialogFactory());
        MenuItemCompat.setActionProvider(add, mediaRouteActionProvider);
        add.setShowAsAction(2);
        Track currentTrack = playList().currentTrack();
        if (currentTrack == null || (buildShareEpisodeIntent = CommandManager.buildShareEpisodeIntent(this, currentTrack)) == null) {
            return true;
        }
        ShareActionProvider shareActionProvider = new ShareActionProvider(this);
        shareActionProvider.setShareHistoryFileName(ShareActionProvider.DEFAULT_SHARE_HISTORY_FILE_NAME);
        shareActionProvider.setShareIntent(buildShareEpisodeIntent);
        MenuItem add2 = menu.add(R.string.MENU_browser_share_podcast);
        add2.setShowAsAction(2);
        MenuItemCompat.setActionProvider(add2, shareActionProvider);
        return true;
    }

    @Override // mobi.beyondpod.ui.views.base.BPMediaController.IViewOwner
    public void showNavigation() {
        setNavVisibility(true);
    }

    @Override // mobi.beyondpod.ui.views.base.BPMediaController.IViewOwner
    public void hideNavigation() {
        setNavVisibility(false);
    }

    void setNavVisibility(boolean z) {
        this._MediaController.setSystemUiVisibility(!z ? 1799 : 1792);
    }

    @Override // mobi.beyondpod.ui.views.base.BPMediaController.IViewOwner
    public void requestCloseView() {
        finish();
    }

    @Override // mobi.beyondpod.ui.views.base.BPMediaController.IViewOwner
    public void skipToEnd() {
        this._MovieViewControl.skipToEnd();
        handleEndOfPlaybackFor(this._Track);
    }

    @Override // mobi.beyondpod.ui.views.base.BPMediaController.IViewOwner
    public void goToNextTrack() {
        this._MovieViewControl.stop();
        executeActionPlayNextPosition(this._Track);
    }

    @Override // mobi.beyondpod.ui.views.base.BPMediaController.IViewOwner
    public void goToPreviousTrack() {
        this._MovieViewControl.stop();
        executeActionPlayPreviousPosition(this._Track);
    }

    @Override // mobi.beyondpod.ui.views.base.BPMediaController.IViewOwner
    public void doPause() {
        this._MovieViewControl.pause();
    }

    @Override // mobi.beyondpod.ui.views.base.BPMediaController.IViewOwner
    public void doStart() {
        this._MovieViewControl.play();
    }

    private void HandleServiceCommand(Intent intent) {
        this._IsCommandResume = true;
        String stringExtra = intent.getStringExtra(MediaPlaybackService.CMDNAME);
        CoreHelper.writeTraceEntry(TAG, "===#####==== Received MediaButtonEvent! Command: " + stringExtra + " intent: " + intent);
        if (this._MovieViewControl == null) {
            CoreHelper.writeTraceEntry(TAG, " Command: " + stringExtra + " ignored because MovieControl is not initialized!");
            return;
        }
        if (MediaPlaybackService.CMDRESUME.equals(stringExtra)) {
            this._MovieViewControl.play();
            return;
        }
        if (MediaPlaybackService.CMDTOGGLEPAUSE.equals(stringExtra)) {
            this._MediaController.doPlayPause();
            return;
        }
        if (MediaPlaybackService.CMDPAUSE.equals(stringExtra)) {
            this._MovieViewControl.pause();
            return;
        }
        if (MediaPlaybackService.CMDSTOP.equals(stringExtra)) {
            this._MovieViewControl.stop();
            return;
        }
        if (MediaPlaybackService.CMD_SKIP_TO_END.equals(stringExtra)) {
            this._MediaController.doSkipToEnd();
            return;
        }
        if (MediaPlaybackService.CMD_SKIP_FORWARD.equals(stringExtra)) {
            this._MediaController.doSkipForward();
            return;
        }
        if (MediaPlaybackService.CMD_SKIP_BACKWARD.equals(stringExtra)) {
            this._MediaController.doSkipBack();
        } else if (MediaPlaybackService.CMD_PLAY_NEXT.equals(stringExtra)) {
            goToNextTrack();
        } else if (MediaPlaybackService.CMD_PLAY_PREVIOUS.equals(stringExtra)) {
            goToPreviousTrack();
        }
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onConnectedToDevice(String str) {
        Toast.makeText(this, getResources().getString(R.string.player_view_playback_cast_connected, str), 1).show();
        finish();
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onConnectionRefused() {
        Toast.makeText(this, R.string.remote_playback_not_available_in_lite_version, 1).show();
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onIncompatiblePlayServices() {
        ChromecastDevice.checkGooglePlayServices(this, true);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4 && this._MovieViewControl.isPlaying() && this._MediaController.isVisible()) {
            this._MediaController.hideNavigationDelayed(100L);
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && (!this._MovieViewControl.isPlaying() || !this._MediaController.isVisible())) {
            finish();
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }
}
