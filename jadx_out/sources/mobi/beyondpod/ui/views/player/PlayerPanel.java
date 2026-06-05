package mobi.beyondpod.ui.views.player;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.Toast;
import com.aocate.media.MediaPlayer;
import java.text.DecimalFormat;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.ConfigurationHD;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.services.player.IMediaPlaybackService;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.services.player.PlayerUtils;
import mobi.beyondpod.services.player.impl.MediaPlayerFactory;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.core.volley.ImageLoaderTrack;
import mobi.beyondpod.ui.dialogs.PurchaseSpeedUpLibraryDialog;
import mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;
import mobi.beyondpod.ui.views.player.PlayerFullScreen;
import mobi.beyondpod.ui.views.player.PlayerMini;

/* loaded from: classes.dex */
public class PlayerPanel extends FrameLayout implements PlayListEvents.PlayListEventListener, RepositoryEvents.RepositoryEventListener, SlidingUpPanelLayout.ISlidePanelDragTarget, PlayerMini.IMiniPlayerOwner, PlayerFullScreen.IFullScreenPlayerOwner {
    private static final int REFRESH = 1;
    private static final String TAG = "PlayerPanel";
    private boolean _AutoShowPlayerOnNextPlay;
    private long _Duration;
    private PlayerFullScreen _FullPlayer;
    private final Handler _Handler;
    protected long _LastSeekEventTime;
    protected boolean _ManualSeekInProgress;
    private PlayerMini _MiniPlayer;
    private ServiceConnection _Osc;
    private IPlayerPanelOwner _Owner;
    private DecimalFormat _PlaybackSpeedFormat;
    private IMediaPlaybackService _PlayerService;
    private long _PosOverride;
    private SeekBar.OnSeekBarChangeListener _SeekListener;
    private long _StartSeekPos;

    /* loaded from: classes.dex */
    public interface IPlayerPanelOwner {
        void collapsePlayer();

        void dismissPlayer();

        void driveViewVisibilityChanged(boolean z);

        void expandPlayer();

        ImageLoaderTrack getImageLoader();

        boolean isExpanded();

        void openTrackFeed(Track track);

        void openTrackPropertiesDialog(Track track, TrackList trackList);

        void runOnUiThread(Runnable runnable);

        void showPlayer(boolean z);

        void togglePlaylistDrawer();
    }

    public PlayerPanel(Context context) {
        this(context, null);
    }

    public PlayerPanel(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerPanel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._PlaybackSpeedFormat = new DecimalFormat("#.##x");
        this._AutoShowPlayerOnNextPlay = false;
        this._PlayerService = null;
        this._Osc = new ServiceConnection() { // from class: mobi.beyondpod.ui.views.player.PlayerPanel.1
            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                PlayerPanel.this._PlayerService = IMediaPlaybackService.Stub.asInterface(iBinder);
                if (PlayerUtils.sService == null) {
                    PlayerUtils.sService = PlayerPanel.this._PlayerService;
                }
                if (PlayerPanel.this._PlayerService == null) {
                    return;
                }
                PlayerPanel.this.queueNextRefresh(PlayerPanel.this.refreshNow());
                PlayerPanel.this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlayerPanel.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PlayerPanel.this.updateTrackInfo();
                        PlayerPanel.this.setPauseButtonImage();
                    }
                });
            }
        };
        this._StartSeekPos = 0L;
        this._PosOverride = -1L;
        this._SeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: mobi.beyondpod.ui.views.player.PlayerPanel.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                PlayerPanel.this._ManualSeekInProgress = true;
                PlayerPanel.this._LastSeekEventTime = 0L;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                String str;
                if (PlayerPanel.this._PlayerService != null && z) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    if (elapsedRealtime - PlayerPanel.this._LastSeekEventTime > 150) {
                        PlayerPanel.this._LastSeekEventTime = elapsedRealtime;
                        PlayerPanel.this._PosOverride = (PlayerPanel.this._Duration * i2) / 1000;
                        if (PlayerPanel.this._Duration == 0) {
                            str = "";
                        } else {
                            str = "-" + CoreHelper.formatTimeAsString((PlayerPanel.this._Duration - PlayerPanel.this._PosOverride) / 1000, true);
                        }
                        PlayerPanel.this._FullPlayer.updateCurrentPosition(-1, CoreHelper.formatTimeAsString(PlayerPanel.this._PosOverride / 1000, true), str);
                    }
                    if (PlayerPanel.this._ManualSeekInProgress) {
                        return;
                    }
                    onStopTrackingTouch(seekBar);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                try {
                    if (PlayerPanel.this._PlayerService != null) {
                        PlayerPanel.this._PlayerService.seek(PlayerPanel.this._PosOverride);
                    }
                } catch (RemoteException unused) {
                }
                PlayerPanel.this._PosOverride = -1L;
                PlayerPanel.this._ManualSeekInProgress = false;
                PlayerPanel.this._LastSeekEventTime = 0L;
            }
        };
        this._Handler = new Handler() { // from class: mobi.beyondpod.ui.views.player.PlayerPanel.3
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (PlayerPanel.this._Duration < 0) {
                    PlayerPanel.this.updateTrackInfo();
                }
                if (message.what == 1) {
                    PlayerPanel.this.queueNextRefresh(PlayerPanel.this.refreshNow());
                }
            }
        };
    }

    public void initialize(IPlayerPanelOwner iPlayerPanelOwner) {
        this._Owner = iPlayerPanelOwner;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ((Activity) getContext()).setVolumeControlStream(3);
        this._MiniPlayer = (PlayerMini) findViewById(R.id.mini_player);
        this._FullPlayer = (PlayerFullScreen) findViewById(R.id.full_player);
        this._MiniPlayer.setPlayerOwner(this);
        this._FullPlayer.setPlayerOwner(this);
    }

    public void onBeforeActivate() {
        this._FullPlayer.onBeforeActivate();
    }

    public void onActivated() {
        if (!PlayerUtils.bindToService(getContext(), this._Osc)) {
            Toast.makeText(getContext(), "Unable to bind to the player service!", 0).show();
        }
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, PlayListEvents.PlayListEvent.class);
        if (isPlayerVisible()) {
            postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlayerPanel.4
                @Override // java.lang.Runnable
                public void run() {
                    if (PlayerPanel.this.isPlayerExpanded()) {
                        PlayerPanel.this._FullPlayer.onActivated();
                    } else {
                        PlayerPanel.this._MiniPlayer.onActivated();
                    }
                }
            }, 500L);
        }
    }

    public void onDeActivated() {
        doCleanup();
    }

    private void doCleanup() {
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, PlayListEvents.PlayListEvent.class);
        this._Handler.removeMessages(1);
        PlayerUtils.unbindFromService(getContext());
        this._FullPlayer.doCleanup();
        this._MiniPlayer.doCleanup();
        this._PlayerService = null;
    }

    public void onActivityDestroy() {
        doCleanup();
    }

    @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
    public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
        this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlayerPanel.5
            @Override // java.lang.Runnable
            public void run() {
                PlayerPanel.this.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlayerPanel.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PlayerPanel.this.updateTrackInfo();
                    }
                }, 100L);
            }
        });
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type == 11 && repositoryEvent.Track == currentTrack()) {
            if (!isPlayerExpanded()) {
                refreshNow();
            }
            setPauseButtonImage();
            updateTrackInfo();
        }
        if (repositoryEvent.Type == 2) {
            CommandManager.cmdLoadCurrentTrack();
        }
    }

    private boolean isCurrentlyPlaying() {
        if (this._PlayerService == null) {
            return false;
        }
        try {
            return this._PlayerService.isPlaying();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public SeekBar.OnSeekBarChangeListener getSeekListener() {
        return this._SeekListener;
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void doSkipBack() {
        if (this._PlayerService == null) {
            return;
        }
        try {
            long position = this._PlayerService.position() - (Configuration.getBackwardSkipInterval() * 1000);
            if (position > 0) {
                this._PlayerService.seek(position);
            } else {
                this._PlayerService.seek(0L);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void doSkipForward() {
        try {
            if (this._PlayerService == null) {
                return;
            }
            long position = this._PlayerService.position() + (Configuration.getForwardSkipInterval() * 1000);
            long duration = this._PlayerService.duration();
            if (position > duration) {
                this._PlayerService.seek(duration - 1000);
            } else {
                this._PlayerService.seek(position);
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void scanBackward(int i, long j) {
        long j2;
        if (this._PlayerService == null) {
            return;
        }
        try {
            if (i == 0) {
                this._StartSeekPos = this._PlayerService.position();
                this._LastSeekEventTime = 0L;
                return;
            }
            long j3 = j < 5000 ? j * 10 : 50000 + ((j - 5000) * 40);
            long j4 = this._StartSeekPos - j3;
            if (j4 < 0) {
                this._StartSeekPos = 0L;
                j2 = j4 + this._StartSeekPos;
            } else {
                j2 = j4;
            }
            if (j3 - this._LastSeekEventTime > 250 || i < 0) {
                this._PlayerService.seek(j2);
                this._LastSeekEventTime = j3;
            }
            if (i >= 0) {
                this._PosOverride = j2;
            } else {
                this._PosOverride = -1L;
            }
            refreshNow();
        } catch (RemoteException unused) {
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void scanForward(int i, long j) {
        if (this._PlayerService == null) {
            return;
        }
        try {
            if (i == 0) {
                this._StartSeekPos = this._PlayerService.position();
                this._LastSeekEventTime = 0L;
                return;
            }
            long j2 = j < 5000 ? j * 10 : 50000 + ((j - 5000) * 40);
            long j3 = this._StartSeekPos + j2;
            long duration = this._PlayerService.duration();
            if (j3 >= duration) {
                this._StartSeekPos = duration - 1000;
                j3 = this._StartSeekPos;
            }
            if (j2 - this._LastSeekEventTime > 250 || i < 0) {
                this._PlayerService.seek(j3);
                this._LastSeekEventTime = j2;
            }
            if (i >= 0) {
                this._PosOverride = j3;
            } else {
                this._PosOverride = -1L;
            }
            refreshNow();
        } catch (RemoteException unused) {
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerMini.IMiniPlayerOwner, mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void togglePlayPause() {
        if (currentTrack() != null) {
            doPauseResume();
        }
    }

    private void doPauseResume() {
        try {
            if (this._PlayerService != null) {
                if (this._PlayerService.isPlaying()) {
                    this._PlayerService.pause();
                } else {
                    this._PlayerService.startAndFadeIn();
                }
                refreshNow();
                setPauseButtonImage();
            }
        } catch (RemoteException unused) {
        }
    }

    private Track currentTrack() {
        return BeyondPodApplication.getInstance().playList().currentTrack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPauseButtonImage() {
        boolean isCurrentlyPlaying = isCurrentlyPlaying();
        this._FullPlayer.setPlayPauseButtonImage(isCurrentlyPlaying);
        this._MiniPlayer.setPlayPauseButtonImage(isCurrentlyPlaying);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueNextRefresh(long j) {
        if (isPlayerExpanded() && isPlayerVisible()) {
            scheduleRefreshIn(j);
        }
    }

    private void scheduleRefreshIn(long j) {
        Message obtainMessage = this._Handler.obtainMessage(1);
        this._Handler.removeMessages(1);
        this._Handler.sendMessageDelayed(obtainMessage, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long refreshNow() {
        String str;
        if (this._PlayerService == null) {
            return 1000L;
        }
        try {
            this._FullPlayer.setSleepTime(getTimeToSleep());
            long position = this._PosOverride < 0 ? this._PlayerService.position() : this._PosOverride;
            if (position < 0 || this._Duration <= 0 || position >= 1500000000 || this._Duration >= 1500000000 || currentTrack() == null) {
                return 500L;
            }
            String str2 = null;
            if (Configuration.enableAudioPlugins()) {
                if (this._PlayerService.supportsSpeedAlteration()) {
                    str2 = this._PlaybackSpeedFormat.format(this._PlayerService.getCurrentPlaybackSpeed());
                } else {
                    str2 = this._PlaybackSpeedFormat.format(Configuration.playbackSpeedNormal());
                }
            }
            this._FullPlayer.updatePlaybackSpeed(str2);
            String formatTimeAsString = CoreHelper.formatTimeAsString(position / 1000, true);
            if (this._Duration == 0) {
                str = "";
            } else {
                str = "-" + CoreHelper.formatTimeAsString((this._Duration - position) / 1000, true);
            }
            int i = (int) ((1000 * position) / this._Duration);
            this._FullPlayer.updateCurrentPosition(i, formatTimeAsString, str);
            this._MiniPlayer.updateCurrentPosition(i, formatTimeAsString, str);
            if (this._PlayerService.isPlaying()) {
                return 1000 - (position % 1000);
            }
            return 1000L;
        } catch (RemoteException unused) {
            return 500L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTrackInfo() {
        if (this._PlayerService == null) {
            return;
        }
        try {
            String str = "";
            Track currentTrack = currentTrack();
            if (currentTrack != null) {
                autoShowPlayerIfNeeded();
                if (currentTrack.getCurrentPlayState() != 3 || !currentTrack.hasUrl()) {
                    this._Duration = this._PlayerService.duration();
                    long position = this._PosOverride < 0 ? this._PlayerService.position() : this._PosOverride;
                    if (this._Duration == 0) {
                        str = "";
                    } else {
                        str = "-" + CoreHelper.formatTimeAsString((this._Duration - position) / 1000, true);
                    }
                } else if (currentTrack.getTotalTime() > 0) {
                    this._Duration = currentTrack.getTotalTime() * 1000;
                    str = "-" + CoreHelper.formatTimeAsString((this._Duration - this._PlayerService.position()) / 1000, true);
                } else {
                    this._Duration = -1L;
                }
            } else {
                this._Duration = -1L;
                if (isPlayerVisible()) {
                    this._Owner.dismissPlayer();
                }
            }
            this._FullPlayer.updateTrackInfo(currentTrack, str);
            this._MiniPlayer.updateTrackInfo(currentTrack);
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to update TrackInfo!", e);
        }
    }

    private void autoShowPlayerIfNeeded() {
        if (PlayList.isCurrentlyPlaying()) {
            ConfigurationHD.setPlayerDismissedByUser(false);
        }
        if (ConfigurationHD.isPlayerDismissedByUser()) {
            return;
        }
        if (!isPlayerVisible()) {
            this._Owner.showPlayer(false);
        }
        if (isPlayerExpanded() || !PlayList.isCurrentlyPlaying()) {
            return;
        }
        if (UserNotificationManager.isNotificationEnabledFor(12)) {
            postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlayerPanel.6
                @Override // java.lang.Runnable
                public void run() {
                    UserNotificationManager.setNotificationPreferenceFor(12, false);
                    PlayerPanel.this.expandPlayer();
                }
            }, 1000L);
        } else if (this._AutoShowPlayerOnNextPlay) {
            postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlayerPanel.7
                @Override // java.lang.Runnable
                public void run() {
                    PlayerPanel.this._AutoShowPlayerOnNextPlay = false;
                    PlayerPanel.this.expandPlayer();
                }
            }, 1000L);
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void setSleepTo(int i) {
        if (this._PlayerService == null) {
            return;
        }
        try {
            this._PlayerService.gotosleepin(i);
        } catch (RemoteException unused) {
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public int getTimeToSleep() {
        if (this._PlayerService == null) {
            return 0;
        }
        try {
            return this._PlayerService.gettimetosleep();
        } catch (RemoteException unused) {
            return 0;
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void setPlaybackSpeed(float f, float f2) {
        try {
            Configuration.setDefaultPlaybackSpeed(f);
            if (this._PlayerService != null) {
                this._PlayerService.setPlaybackSpeed(f, f2);
            }
        } catch (RemoteException unused) {
        }
        refreshNow();
    }

    private float getCurrentPlaybackSpeed() {
        try {
            if (this._PlayerService != null) {
                return this._PlayerService.getCurrentPlaybackSpeed();
            }
            return 1.0f;
        } catch (RemoteException unused) {
            return 1.0f;
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void onCyclePlaybackSpeed() {
        if (!MediaPlayerFactory.isSpeedAlterationPlayerInstalled(getContext())) {
            showSpeedAlterationPromo();
            return;
        }
        if (!supportsSpeedAlteration()) {
            showSpeedAlterationNotSupported();
            return;
        }
        if (getCurrentPlaybackSpeed() == Configuration.playbackSpeedNormal()) {
            setPlaybackSpeed(Configuration.playbackSpeed1(), -1.0f);
        } else if (getCurrentPlaybackSpeed() == Configuration.playbackSpeed1()) {
            setPlaybackSpeed(Configuration.playbackSpeed2(), -1.0f);
        } else {
            setPlaybackSpeed(Configuration.playbackSpeedNormal(), -1.0f);
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void onSelectPlaybackSpeed() {
        if (!MediaPlayerFactory.isSpeedAlterationPlayerInstalled(getContext())) {
            showSpeedAlterationPromo();
        } else {
            if (!supportsSpeedAlteration()) {
                showSpeedAlterationNotSupported();
                return;
            }
            float f = 1.0f;
            try {
                f = this._PlayerService.getCurrentPlaybackSpeed();
            } catch (RemoteException unused) {
            }
            this._FullPlayer.showPlaybackSpeedCharm(f);
        }
    }

    private boolean supportsSpeedAlteration() {
        try {
            if (this._PlayerService != null) {
                return this._PlayerService.supportsSpeedAlteration();
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    private void showSpeedAlterationPromo() {
        if (Configuration.isSonicSpeedAlterationSupported() && PolicyManager.ifPlaybackSpeedRestricted()) {
            Toast.makeText(getContext(), R.string.dlg_playback_speed_not_available_in_lite_version, 1).show();
        } else {
            PurchaseSpeedUpLibraryDialog.showDialog(getContext());
        }
    }

    private void showSpeedAlterationNotSupported() {
        int i = (currentTrack() == null || currentTrack().exists()) ? R.string.dlg_speedup_not_supported : R.string.dlg_speedup_not_supported_for_streaming;
        if (PolicyManager.ifAutoRestricted() && !MediaPlayer.isPrestoLibraryInstalled(getContext())) {
            i = R.string.dlg_playback_speed_not_available_in_lite_version;
        }
        Toast.makeText(getContext(), i, 1).show();
    }

    @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.ISlidePanelDragTarget
    public View getSlideDragTarget(boolean z) {
        return z ? this._FullPlayer : this._MiniPlayer;
    }

    @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.ISlidePanelDragTarget
    public void onDrawWhenSliding(float f) {
        if (this._MiniPlayer == null || this._FullPlayer == null) {
            return;
        }
        float min = Math.min(1.0f, (1.0f - f) * 1.5f);
        float f2 = 1.0f - min;
        this._MiniPlayer.setAlpha(f2);
        this._FullPlayer.setAlpha(min);
        this._MiniPlayer.setVisibility(f2 > 0.0f ? 0 : 8);
        this._FullPlayer.setVisibility(min > 0.0f ? 0 : 8);
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerMini.IMiniPlayerOwner
    public void expandPlayer() {
        if (this._Owner != null) {
            this._Owner.expandPlayer();
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void collapsePlayer() {
        if (this._Owner != null) {
            this._Owner.collapsePlayer();
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerMini.IMiniPlayerOwner
    public void dismissPlayer() {
        if (this._Owner != null) {
            this._Owner.dismissPlayer();
        }
    }

    public void hide() {
        this._FullPlayer.onDeActivated();
        this._MiniPlayer.onDeActivated();
        setVisibility(8);
    }

    public void show() {
        setVisibility(0);
        if (isPlayerExpanded()) {
            this._FullPlayer.onActivated();
        } else {
            this._MiniPlayer.onActivated();
        }
        queueNextRefresh(refreshNow());
    }

    public boolean isPlayerVisible() {
        return getVisibility() == 0;
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public boolean isPlayerExpanded() {
        return this._Owner.isExpanded();
    }

    public void onPlayerExpanded() {
        this._FullPlayer.onActivated();
        this._MiniPlayer.onDeActivated();
        scheduleRefreshIn(refreshNow());
    }

    public void onPlayerCollapsed() {
        this._FullPlayer.onDeActivated();
        this._MiniPlayer.onActivated();
    }

    public void onPlayerSlide(float f) {
        this._FullPlayer.onPlayerSlide(f);
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void driveViewVisibilityChanged(boolean z) {
        this._Owner.driveViewVisibilityChanged(z);
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerMini.IMiniPlayerOwner
    public ImageLoaderTrack getImageLoader() {
        return this._Owner.getImageLoader();
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void runOnUiThread(Runnable runnable) {
        this._Owner.runOnUiThread(runnable);
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void openTrackPropertiesDialog(Track track, TrackList trackList) {
        this._Owner.openTrackPropertiesDialog(track, trackList);
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void skipToEnd() {
        CommandManagerBase.cmdSkipToEnd();
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void togglePlaylistDrawer() {
        this._Owner.togglePlaylistDrawer();
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerFullScreen.IFullScreenPlayerOwner
    public void openTrackFeed(Track track) {
        this._Owner.openTrackFeed(track);
    }

    public boolean turnOffPlaylistPagerIfNeeded() {
        if (this._FullPlayer == null) {
            return false;
        }
        return this._FullPlayer.turnOffPlaylistPagerIfNeeded();
    }

    /* loaded from: classes.dex */
    public static class Worker implements Runnable {
        private final Object mLock = new Object();
        private Looper mLooper;

        public Worker(String str) {
            Thread thread = new Thread(null, this, str);
            thread.setPriority(1);
            thread.start();
            synchronized (this.mLock) {
                while (this.mLooper == null) {
                    try {
                        this.mLock.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        public Looper getLooper() {
            return this.mLooper;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.mLock) {
                Looper.prepare();
                this.mLooper = Looper.myLooper();
                this.mLock.notifyAll();
            }
            Looper.loop();
        }

        public void quit() {
            this.mLooper.quit();
        }
    }

    public void setAutoShowPlayerOnNextPlay() {
        this._AutoShowPlayerOnNextPlay = true;
    }
}
