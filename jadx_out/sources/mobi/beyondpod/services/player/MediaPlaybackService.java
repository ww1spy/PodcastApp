package mobi.beyondpod.services.player;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.events.ApplicationEvents;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.IMediaPlaybackService;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.services.player.impl.IMediaPlayerImpl;
import mobi.beyondpod.services.player.impl.MediaPlayerFactory;
import mobi.beyondpod.services.player.impl.MediaPlayerTrackBacked;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.services.scheduler.CommandReceiver;
import mobi.beyondpod.ui.commands.CommandManagerBase;

/* loaded from: classes.dex */
public class MediaPlaybackService extends Service {
    public static final String CMDDUCK = "duck";
    public static final String CMDNAME = "command";
    public static final String CMDOPEN_AND_PLAY = "open";
    public static final String CMDOPTION = "commandOption";
    public static final String CMDOPTIONPLAY = "play";
    public static final String CMDPAUSE = "pause";
    public static final String CMDRESUME = "resume";
    public static final String CMDSTOP = "stop";
    public static final String CMDTOGGLEPAUSE = "togglepause";
    public static final String CMD_CLOSE_VIDEO_PLAYER = "closeVideoPlayer";
    public static final String CMD_FORCE_LOAD_ON_LOAD = "forceLoadOnLoad";
    public static final String CMD_LOAD_CURRENT_TRACK = "loadcurrenttrack";
    public static final String CMD_PLAY_NEXT = "playnext";
    public static final String CMD_PLAY_PREVIOUS = "playprevious";
    public static final String CMD_SEEK_TO_LOCATION = "seekToLocation";
    public static final String CMD_SET_PLAYBACK_SPEED_1 = "setPlaybackSpeedSpeed1";
    public static final String CMD_SET_PLAYBACK_SPEED_2 = "setPlaybackSpeedSpeed2";
    public static final String CMD_SET_PLAYBACK_SPEED_NORMAL = "setPlaybackSpeedNormal";
    public static final String CMD_SKIP_BACKWARD = "skipbackword";
    public static final String CMD_SKIP_FORWARD = "skipforward";
    public static final String CMD_SKIP_TO_END = "skiptoend";
    public static final String CMD_START_PLAYBACK_ON_LOAD = "startPlaybackOnLoad";
    public static final String CMD_STOP_SERVICE = "stopService";
    private static final int FADEIN = 6;
    private static int FADE_IN_TICK = 100;
    private static final int IDLE_DELAY = 60000;
    public static final int PLAYBACKSERVICE_STATUS = 1;
    private static final int PLAYBACK_ERROR_OCCURED = 7;
    private static final int PLAY_POSITION_CHANGED = 4;
    private static final int RELEASE_WAKELOCK = 2;
    private static final int SERVER_DIED = 3;
    public static final String SERVICECMD = "mobi.beyondpod.services.musicservicecommand";
    public static final String SERVICE_NOTIFICATION_CMD_PLAY_PAUSE = "mobi.beyondpod.services.musicservicewidgetcommand.playpause.notification";
    public static final int SERVICE_STATUS = 1;
    public static final String SERVICE_WIDGET_CMD_NEXT_TRACK = "mobi.beyondpod.services.musicservicewidgetcommand.nexttrack";
    public static final String SERVICE_WIDGET_CMD_PLAY_PAUSE = "mobi.beyondpod.services.musicservicewidgetcommand.playpause";
    public static final String SERVICE_WIDGET_CMD_SKIP_BACK = "mobi.beyondpod.services.musicservicewidgetcommand.skipback";
    public static final String SERVICE_WIDGET_CMD_SKIP_FORWARD = "mobi.beyondpod.services.musicservicewidgetcommand.skipforward";
    public static final String SERVICE_WIDGET_CMD_SKIP_TO_END = "mobi.beyondpod.services.musicservicewidgetcommand.skiptoend";
    public static final String SERVICE_WIDGET_CMD_START_SMARTPLAY = "mobi.beyondpod.services.musicservicewidgetcommand.startsmartplay";
    public static final String SERVICE_WIDGET_CMD_STOP = "mobi.beyondpod.services.musicservicewidgetcommand.stop";
    private static final int SLEEP_TIMEOUT_TICK = 5;
    public static boolean ServiceIsRunning = false;
    private static String TAG = "MediaPlaybackService";
    public static final String TRACKPOS = "trackPos";
    private static final int TRACK_ENDED = 1;
    private static int _LastBufferPercent = -1;
    private static Handler _wakeHandler;
    private Intent _CloseVideoPlayerIntent;
    long _IdleStateStartTime;
    private long _LoadDataStartTime;
    private TrackMetadataPublisher _MetadataPublisher;
    private MultiPlayer _Player;
    protected boolean _StartPlaybackAfterSeek;
    private int _TimeToSleep;
    private PowerManager.WakeLock _WakeLock;
    private int _ServiceStartId = -1;
    private boolean _ServiceInUse = false;
    private boolean _ResumeAfterCall = false;
    private boolean _StartPlaybackAfterPrepare = false;
    private boolean _IsPreparing = false;
    private boolean _IsSeeking = false;
    private volatile boolean _started = false;
    private BroadcastReceiver _BatteryStateReceiver = new BroadcastReceiver() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action != null && action.equals("android.intent.action.BATTERY_CHANGED")) {
                if (MediaPlaybackService.this._Player != null) {
                    int intExtra = intent.getIntExtra("plugged", -1);
                    MediaPlaybackService.this._Player.updatePlayerWakeMode(intExtra == 1 || intExtra == 2 || (intExtra == 4));
                    return;
                }
                return;
            }
            if (action != null && action.equals("android.intent.action.ACTION_POWER_DISCONNECTED") && Configuration.pauseOnPowerDisconnect() && MediaPlaybackService.this._Player != null && MediaPlaybackService.this._Player.isPlaying()) {
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "Detected power disconnect! Pausing...");
                MediaPlaybackService.this.pause(false);
            }
        }
    };
    private BroadcastReceiver _IntentReceiver = new BroadcastReceiver() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra(MediaPlaybackService.CMDNAME);
            String stringExtra2 = intent.getStringExtra(MediaPlaybackService.CMDOPTION);
            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "*** MediaPlaybackService received Command: " + stringExtra + ", Option: " + stringExtra2);
            if (MediaPlaybackService.CMDOPEN_AND_PLAY.equals(stringExtra)) {
                int intExtra = intent.getIntExtra(MediaPlaybackService.TRACKPOS, -1);
                if (intExtra >= 0) {
                    MediaPlaybackService.this.openAndPlay(intExtra);
                    return;
                }
                return;
            }
            if (MediaPlaybackService.CMDRESUME.equals(stringExtra)) {
                MediaPlaybackService.this.startAndFadeIn();
                return;
            }
            if (MediaPlaybackService.CMDTOGGLEPAUSE.equals(stringExtra)) {
                if (MediaPlaybackService.this.isPlaying()) {
                    MediaPlaybackService.this.pause(MediaPlaybackService.SERVICE_NOTIFICATION_CMD_PLAY_PAUSE.equals(stringExtra2));
                    return;
                } else {
                    MediaPlaybackService.this.startAndFadeIn();
                    return;
                }
            }
            if (MediaPlaybackService.CMDPAUSE.equals(stringExtra)) {
                MediaPlaybackService.this.pause(false);
                return;
            }
            if (MediaPlaybackService.CMDDUCK.equals(stringExtra)) {
                MediaPlaybackService.this.duck();
                return;
            }
            if (MediaPlaybackService.CMDSTOP.equals(stringExtra)) {
                MediaPlaybackService.this.stop();
                return;
            }
            if (MediaPlaybackService.CMD_SKIP_TO_END.equals(stringExtra)) {
                if (MediaPlaybackService.this.isMultiPlayerInitialized()) {
                    if (MediaPlaybackService.this._Player.isPlaying()) {
                        MediaPlaybackService.this.pause(false);
                    }
                    MediaPlaybackService.this._MediaplayerHandler.sendEmptyMessage(1);
                    return;
                }
                return;
            }
            if (MediaPlaybackService.CMD_SKIP_FORWARD.equals(stringExtra)) {
                if (MediaPlaybackService.this.isMultiPlayerInitialized()) {
                    long position = MediaPlaybackService.this._Player.position() + (Configuration.getForwardSkipInterval() * 1000);
                    long duration = MediaPlaybackService.this._Player.duration();
                    if (position >= duration) {
                        position = duration - 1000;
                    }
                    MediaPlaybackService.this._Player.seek(position);
                    if (stringExtra2 != null) {
                        MediaPlaybackService.this.startAndFadeIn();
                        return;
                    }
                    return;
                }
                return;
            }
            if (MediaPlaybackService.CMD_SKIP_BACKWARD.equals(stringExtra)) {
                if (MediaPlaybackService.this.isMultiPlayerInitialized()) {
                    long position2 = MediaPlaybackService.this._Player.position() - (Configuration.getBackwardSkipInterval() * 1000);
                    MediaPlaybackService.this._Player.seek(position2 >= 0 ? position2 : 0L);
                    if (stringExtra2 != null) {
                        MediaPlaybackService.this.startAndFadeIn();
                        return;
                    }
                    return;
                }
                return;
            }
            if (MediaPlaybackService.CMD_SEEK_TO_LOCATION.equals(stringExtra)) {
                if (MediaPlaybackService.this.isMultiPlayerInitialized()) {
                    long longExtra = intent.getLongExtra(MediaPlaybackService.CMD_SEEK_TO_LOCATION, 0L);
                    if (longExtra < 0) {
                        longExtra = 0;
                    }
                    MediaPlaybackService.this._Player.seek(longExtra);
                    if (stringExtra2 != null) {
                        MediaPlaybackService.this.startAndFadeIn();
                        return;
                    }
                    return;
                }
                return;
            }
            if (MediaPlaybackService.CMD_PLAY_NEXT.equals(stringExtra)) {
                if (MediaPlaybackService.this.playList().getCurrentPlayingTrackPosition() != MediaPlaybackService.this.playList().playlistSize() - 1 || Configuration.playlistEndAction() != 2) {
                    int nextTrackPosition = MediaPlaybackService.this.playList().getNextTrackPosition();
                    if (nextTrackPosition < 0) {
                        nextTrackPosition = 0;
                    }
                    MediaPlaybackService.this.openAndPlay(nextTrackPosition);
                    return;
                }
                MediaPlaybackService.this.playList().executeActionPlayNextPosition(Configuration.playlistEndAction());
                return;
            }
            if (MediaPlaybackService.CMD_PLAY_PREVIOUS.equals(stringExtra)) {
                MediaPlaybackService.this.openAndPlay(MediaPlaybackService.this.playList().getPreviousTrackPosition());
                return;
            }
            if (MediaPlaybackService.CMD_LOAD_CURRENT_TRACK.equals(stringExtra)) {
                MediaPlaybackService.this.loadCurrentTrack(intent.getBooleanExtra(MediaPlaybackService.CMD_START_PLAYBACK_ON_LOAD, false), intent.getBooleanExtra(MediaPlaybackService.CMD_FORCE_LOAD_ON_LOAD, true));
                return;
            }
            if (MediaPlaybackService.CMD_STOP_SERVICE.equals(stringExtra)) {
                MediaPlaybackService.this._DelayedStopHandler.sendEmptyMessage(MediaPlaybackService.IDLE_DELAY);
                return;
            }
            if (MediaPlaybackService.CMD_SET_PLAYBACK_SPEED_NORMAL.equals(stringExtra)) {
                MediaPlaybackService.this.setPlaybackSpeed(Configuration.playbackSpeedNormal(), -1.0f);
            } else if (MediaPlaybackService.CMD_SET_PLAYBACK_SPEED_1.equals(stringExtra)) {
                MediaPlaybackService.this.setPlaybackSpeed(Configuration.playbackSpeed1(), -1.0f);
            } else if (MediaPlaybackService.CMD_SET_PLAYBACK_SPEED_2.equals(stringExtra)) {
                MediaPlaybackService.this.setPlaybackSpeed(Configuration.playbackSpeed2(), -1.0f);
            }
        }
    };

    @SuppressLint({"HandlerLeak"})
    private Handler _MediaplayerHandler = new Handler() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.3
        float _CurrentVolume = 1.0f;

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Track currentPlayingTrack = MediaPlaybackService.this.currentPlayingTrack();
                    if (currentPlayingTrack != null) {
                        if (currentPlayingTrack.getTotalTime() > currentPlayingTrack.getPlayedTime()) {
                            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "Episode '" + currentPlayingTrack.displayName() + "' has incorrect duration. Reported: " + currentPlayingTrack.totalTimeAsString() + ", Actual: " + currentPlayingTrack.playedTimeAsString());
                        }
                        currentPlayingTrack.markPlayed();
                        currentPlayingTrack.setCurrentPlayState(2);
                        MediaPlaybackService.this._MetadataPublisher.publishTrackInformation(currentPlayingTrack, false);
                    }
                    if (MediaPlaybackService.this._TimeToSleep == Integer.MIN_VALUE) {
                        MediaPlaybackService.this._TimeToSleep = 0;
                        if (currentPlayingTrack != null) {
                            ItemStateHistory.markTracksItemAsRead(currentPlayingTrack);
                        }
                    } else {
                        MediaPlaybackService.this.playList().onTrackPlaybackComplete(MediaPlaybackService.this._TimeToSleep > 0);
                    }
                    if (currentPlayingTrack != null) {
                        FeedRepository.saveRepositoryAsync();
                    }
                    MediaPlaybackService.this.gotoIdleState(true);
                    return;
                case 2:
                    MediaPlaybackService.this._WakeLock.release();
                    return;
                case 3:
                    CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "******** Media Player has died! Preparing Playback Again...");
                    if (MediaPlaybackService.this.playList().currentTrack() != null) {
                        MediaPlaybackService.this.preparePlaybackSource(MediaPlaybackService.this.playList().currentTrack());
                        return;
                    }
                    return;
                case 4:
                    Track currentPlayingTrack2 = MediaPlaybackService.this.currentPlayingTrack();
                    if (currentPlayingTrack2 != null) {
                        if (MediaPlaybackService.this.verifyCurrentTrack(MediaPlaybackService.this._Player, currentPlayingTrack2, 1)) {
                            long position = MediaPlaybackService.this._Player.position() / 1000;
                            if (currentPlayingTrack2.getPlayedTime() != position) {
                                currentPlayingTrack2.setPlayedTime(position);
                                MediaPlaybackService.this._MetadataPublisher.publishPlayPositionChanged(currentPlayingTrack2);
                            }
                        }
                        if (!PlayList.allowStreaming(currentPlayingTrack2)) {
                            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  Playback monitor found a streaming track when streaming is not allowed! Stopping playback...");
                            MediaPlaybackService.this.stop(true);
                            return;
                        }
                    }
                    if (message.arg1 == 0) {
                        MediaPlaybackService.this._Player.queueNextRefresh(5000L);
                        return;
                    }
                    return;
                case 5:
                    MediaPlaybackService.access$1310(MediaPlaybackService.this);
                    if (MediaPlaybackService.this._TimeToSleep > 0) {
                        MediaPlaybackService.this.scheduleSleepTick();
                        return;
                    } else {
                        MediaPlaybackService.this.pause(false);
                        return;
                    }
                case 6:
                    if (!MediaPlaybackService.this.isPlaying()) {
                        this._CurrentVolume = 0.0f;
                        MediaPlaybackService.this._Player.setVolume(this._CurrentVolume);
                        if (MediaPlaybackService.this.play() && MediaPlaybackService.this._Player.isInitialized()) {
                            MediaPlaybackService.this._MediaplayerHandler.sendEmptyMessageDelayed(6, MediaPlaybackService.FADE_IN_TICK);
                            return;
                        }
                        return;
                    }
                    this._CurrentVolume += 0.1f;
                    if (this._CurrentVolume < 1.0f) {
                        MediaPlaybackService.this._MediaplayerHandler.sendEmptyMessageDelayed(6, MediaPlaybackService.FADE_IN_TICK);
                    } else {
                        this._CurrentVolume = 1.0f;
                    }
                    MediaPlaybackService.this._Player.setVolume(this._CurrentVolume);
                    return;
                case 7:
                    Track currentPlayingTrack3 = MediaPlaybackService.this.currentPlayingTrack();
                    if (currentPlayingTrack3 != null) {
                        currentPlayingTrack3.setCurrentPlayState(7);
                        MediaPlaybackService.this._MetadataPublisher.publishTrackInformation(currentPlayingTrack3, false);
                    }
                    MediaPlaybackService.this._StartPlaybackAfterSeek = false;
                    MediaPlaybackService.this._StartPlaybackAfterPrepare = false;
                    MediaPlaybackService.this.gotoIdleState(true);
                    return;
                default:
                    return;
            }
        }
    };

    @SuppressLint({"HandlerLeak"})
    private Handler _DelayedStopHandler = new Handler() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.4
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (MediaPlaybackService.this.isPlaying() || MediaPlaybackService.this._IsPreparing || MediaPlaybackService.this._ResumeAfterCall || MediaPlaybackService.this._ServiceInUse || MediaPlaybackService.this._MediaplayerHandler.hasMessages(1)) {
                if (MediaPlaybackService.this._IsPreparing) {
                    CoreHelper.writeLogEntryInDebug(MediaPlaybackService.TAG, "Player service autoshutdown found that track is still preparing. Ignoring shutdown...");
                }
            } else {
                if (PlayerUtils.isPlayerServiceLocked()) {
                    CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "Playback Service idle timeout reached, but the service is currently locked! Starting another timeout...");
                    MediaPlaybackService.this._DelayedStopHandler.removeCallbacksAndMessages(null);
                    MediaPlaybackService.this._DelayedStopHandler.sendMessageDelayed(MediaPlaybackService.this._DelayedStopHandler.obtainMessage(), 60000L);
                    return;
                }
                MediaPlaybackService.this.checkCanStop();
                MediaPlaybackService.this.stopSelf(MediaPlaybackService.this._ServiceStartId);
            }
        }
    };
    ApplicationEvents.MainUIVisibilityChangedEventListener _UIVisibilityListener = new ApplicationEvents.MainUIVisibilityChangedEventListener() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.5
        @Override // mobi.beyondpod.rsscore.events.ApplicationEvents.MainUIVisibilityChangedEventListener
        public void onMainUIVisibilityChangedEvent(ApplicationEvents.MainUIVisibilityChangedEvent mainUIVisibilityChangedEvent) {
            if (Configuration.showPlayerPausedNotication()) {
                return;
            }
            if (mainUIVisibilityChangedEvent.isVisible) {
                NotificationHelper.getInstance().stopForeground(MediaPlaybackService.this, 1);
            } else if (MediaPlaybackService.this.isPlaying()) {
                BeyondPodApplication.getInstance().setPlayerNotification(MediaPlaybackService.this, MediaPlaybackService.this.currentPlayingTrack());
            } else {
                BeyondPodApplication.getInstance().setPlayerPauseNotification(MediaPlaybackService.this, MediaPlaybackService.this.currentPlayingTrack());
            }
        }
    };
    UpdateAndDownloadEvents.UpdateAndDownloadEventListener _UpdateAndDownloadListener = new UpdateAndDownloadEvents.UpdateAndDownloadEventListener() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.6
        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadEvents.UpdateAndDownloadEventListener
        public void onUpdateAndDownloadEvent(UpdateAndDownloadEvents.UpdateAndDownloadEvent updateAndDownloadEvent) {
            if (updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_COMPLETED && updateAndDownloadEvent.Track != null && updateAndDownloadEvent.Track == MediaPlaybackService.this.playList().currentTrack()) {
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "Current playing track was just downloaded. Reloading it...");
                updateAndDownloadEvent.Track.setBufferedPercent(100);
                MediaPlaybackService.this.loadCurrentTrack(PlayList.isCurrentlyPlaying(), true);
            }
        }
    };
    IMediaPlayerImpl.OnPreparedListener _preparedlistener = new IMediaPlayerImpl.OnPreparedListener() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.7
        @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl.OnPreparedListener
        public void onPrepared(IMediaPlayerImpl iMediaPlayerImpl) {
            MediaPlaybackService.this._IsPreparing = false;
            Track currentPlayingTrack = MediaPlaybackService.this.currentPlayingTrack();
            if (currentPlayingTrack != null) {
                currentPlayingTrack.setCurrentPlayState(4);
                MediaPlaybackService.this._MetadataPublisher.publishTrackInformation(currentPlayingTrack, false);
                MediaPlaybackService.this._Player.initializeOnCompletionListener();
                if (!MediaPlaybackService.this.isMultiPlayerInitialized()) {
                    MediaPlaybackService.this.stop(true);
                    return;
                }
                long playedTime = currentPlayingTrack.getPlayedTime() * 1000;
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  Playback prepared! Must seek to:" + playedTime + ", Start Playback:" + MediaPlaybackService.this._StartPlaybackAfterPrepare);
                if (playedTime <= 0) {
                    MediaPlaybackService.this.startPlaybackIfNeeded();
                    return;
                }
                if (currentPlayingTrack.exists()) {
                    MediaPlaybackService.this.seekAtStart(playedTime);
                } else if (!Configuration.allowSeekingOfInternetStreams()) {
                    MediaPlaybackService.this.startPlaybackIfNeeded();
                } else {
                    MediaPlaybackService.this.seekAtStart(playedTime);
                }
            }
        }
    };
    IMediaPlayerImpl.OnInfoListener _InfoListener = new IMediaPlayerImpl.OnInfoListener() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.8
        @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl.OnInfoListener
        public boolean onInfo(IMediaPlayerImpl iMediaPlayerImpl, int i, int i2) {
            if (i == 1) {
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "******** Info Received! MEDIA_INFO_UNKNOWN, Extra:" + i2);
                return false;
            }
            if (i != 700) {
                switch (i) {
                    case 800:
                        CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "******** Info Received! MEDIA_INFO_BAD_INTERLEAVING, Extra:" + i2);
                        return false;
                    case 801:
                        CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "******** Info Received! MEDIA_INFO_NOT_SEEKABLE, Extra:" + i2);
                        return false;
                    case 802:
                        CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "******** Info Received! MEDIA_INFO_METADATA_UPDATE, Extra:" + i2);
                        return false;
                    default:
                        CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "******** Info Received! What:" + i + " Extra:" + i2);
                        return false;
                }
            }
            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "******** Info Received! MediaPlayer.MEDIA_INFO_VIDEO_TRACK_LAGGING, Extra:" + i2);
            return false;
        }
    };
    IMediaPlayerImpl.OnBufferingUpdateListener _BufferingUpdateListener = new IMediaPlayerImpl.OnBufferingUpdateListener() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.9
        @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl.OnBufferingUpdateListener
        public void onBufferingUpdate(IMediaPlayerImpl iMediaPlayerImpl, int i) {
            if (i != MediaPlaybackService._LastBufferPercent) {
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "-----> Buffering: " + i + "%");
                int unused = MediaPlaybackService._LastBufferPercent = i;
            }
            Track currentPlayingTrack = MediaPlaybackService.this.currentPlayingTrack();
            if (currentPlayingTrack != null) {
                currentPlayingTrack.setBufferedPercent(i);
            }
        }
    };
    IMediaPlayerImpl.OnSeekCompleteListener _SeekCompleteListener = new IMediaPlayerImpl.OnSeekCompleteListener() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.10
        @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl.OnSeekCompleteListener
        public void onSeekComplete(IMediaPlayerImpl iMediaPlayerImpl) {
            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  Seek Complete!");
            MediaPlaybackService.this._IsSeeking = false;
            Track currentPlayingTrack = MediaPlaybackService.this.currentPlayingTrack();
            if (currentPlayingTrack == null) {
                return;
            }
            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  Currently at position: " + MediaPlaybackService.this._Player.position() + " (supposed to be at: " + (currentPlayingTrack.getPlayedTime() * 1000) + ")");
            if (MediaPlaybackService.this._StartPlaybackAfterSeek) {
                MediaPlaybackService.this._StartPlaybackAfterSeek = false;
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  Starting Playback after seek...");
                MediaPlaybackService.this.startAndFadeIn();
            } else if (currentPlayingTrack.getBufferedPercent() < 100 && !Configuration.allowSeekingOfInternetStreams()) {
                long duration = currentPlayingTrack.getBufferedPercent() > 0 ? ((float) MediaPlaybackService.this.duration()) * (currentPlayingTrack.getBufferedPercent() / 100.0f) : 0L;
                if (MediaPlaybackService.this.position() > duration) {
                    CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  Seeked past the buffer! Current Position:" + MediaPlaybackService.this.position() + ", Max Seek Position: " + duration);
                    MultiPlayer multiPlayer = MediaPlaybackService.this._Player;
                    if (duration > 1000) {
                        duration -= 1000;
                    }
                    multiPlayer.seek(duration);
                }
            }
            if (!MediaPlaybackService.this.isPlaying() && !MediaPlaybackService.this._StartPlaybackAfterSeek && !MediaPlaybackService.this._IsPreparing) {
                MediaPlaybackService.this.gotoIdleState(!NotificationHelper.getInstance().isNotificationShowing(1));
            }
            if (!MediaPlaybackService.this.isPlaying() && !MediaPlaybackService.this._IsPreparing && MediaPlaybackService.this.position() >= 0) {
                Message obtainMessage = MediaPlaybackService.this._Player._Handler.obtainMessage(4);
                obtainMessage.arg1 = 10;
                MediaPlaybackService.this._Player._Handler.removeMessages(4);
                MediaPlaybackService.this._Player._Handler.sendMessageDelayed(obtainMessage, 500L);
            }
            MediaPlaybackService.this._MetadataPublisher.publishTrackInformation(currentPlayingTrack, MediaPlaybackService.this._Player.position(), false);
        }
    };
    private final IMediaPlaybackService.Stub mBinder = new IMediaPlaybackService.Stub() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.11
        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public void open(int i) {
            MediaPlaybackService.this.openAndPlay(i);
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public boolean isPlaying() {
            return MediaPlaybackService.this.isPlaying();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public void stop() {
            MediaPlaybackService.this.stop();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public void pause() {
            MediaPlaybackService.this.pause(false);
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public void play() {
            MediaPlaybackService.this.play();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public long position() {
            return MediaPlaybackService.this.position();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public long duration() {
            return MediaPlaybackService.this.duration();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public long seek(long j) {
            return MediaPlaybackService.this.seek(j);
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public int gettimetosleep() throws RemoteException {
            return MediaPlaybackService.this.getTimeToSleep();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public void gotosleepin(int i) throws RemoteException {
            MediaPlaybackService.this.goToSleepIn(i);
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public void startAndFadeIn() throws RemoteException {
            MediaPlaybackService.this.startAndFadeIn();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public boolean canChangePlaybackSpeed() throws RemoteException {
            return MediaPlaybackService.this.canChangePlaybackSpeed();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public void setPlaybackSpeed(float f, float f2) throws RemoteException {
            MediaPlaybackService.this.setPlaybackSpeed(f, f2);
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public float getCurrentPlaybackSpeed() throws RemoteException {
            return MediaPlaybackService.this.getCurrentPlaybackSpeed();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public boolean supportsSpeedAlteration() throws RemoteException {
            return MediaPlaybackService.this.supportsSpeedAlteration();
        }

        @Override // mobi.beyondpod.services.player.IMediaPlaybackService
        public int playerType() throws RemoteException {
            return MediaPlaybackService.this.playerType();
        }
    };

    static /* synthetic */ int access$1310(MediaPlaybackService mediaPlaybackService) {
        int i = mediaPlaybackService._TimeToSleep;
        mediaPlaybackService._TimeToSleep = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean verifyCurrentTrack(MultiPlayer multiPlayer, Track track, int i) {
        String currentMediaPath = multiPlayer.getCurrentMediaPath();
        if (StringUtils.isNullOrEmpty(currentMediaPath)) {
            return false;
        }
        return StringUtils.equals(currentMediaPath, track.trackPath()) || StringUtils.equals(currentMediaPath, track.getUrl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(26)
    public void checkCanStop() {
        if (!CoreHelper.isOreoCompatible() || this._started) {
            return;
        }
        Notification build = NotificationHelper.getInstance().getNotificationBuilder(BeyondPodApplication.getInstance().getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(R.drawable.ic_notification_update).setOnlyAlertOnce(true).setAutoCancel(true).build();
        CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (MediaPlaybackService) and passing notification: " + build.toString());
        startForeground(101, build);
        this._started = true;
    }

    @Override // android.app.Service
    @SuppressLint({"NewApi"})
    public void onCreate() {
        super.onCreate();
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(isPlaying() ? R.drawable.ic_notification_pause : R.drawable.ic_notification_play).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (MediaPlaybackService) and passing notification: " + build.toString());
            startForeground(101, build);
            this._started = true;
        }
        CoreHelper.writeTraceEntry(TAG, "--------------------------- MediaPlayback Service is Created!---------------------------");
        _wakeHandler = new Handler(Looper.getMainLooper());
        ServiceIsRunning = true;
        initializePlayer();
        this._CloseVideoPlayerIntent = new Intent(SERVICECMD);
        this._CloseVideoPlayerIntent.putExtra(CMDNAME, CMD_CLOSE_VIDEO_PLAYER);
        if (!Configuration.showPlayerPausedNotication()) {
            NotificationHelper.getInstance().clearNotification(this, 1);
        }
        BeyondPodApplication.messageBus.subscribe(this._UIVisibilityListener, ApplicationEvents.MainUIVisibilityChangedEvent.class);
        BeyondPodApplication.messageBus.subscribe(this._UpdateAndDownloadListener, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (powerManager != null) {
            this._WakeLock = powerManager.newWakeLock(1, getClass().getName());
            this._WakeLock.setReferenceCounted(false);
        }
        registerReceiver(this._IntentReceiver, new IntentFilter(SERVICECMD));
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        registerReceiver(this._BatteryStateReceiver, intentFilter);
        this._MetadataPublisher = TrackMetadataPublisher.getInstance();
        loadCurrentTrack(false, true);
        CoreHelper.writeTraceEntry(TAG, "Service auto shutdown scheduled from onCreate");
        this._DelayedStopHandler.sendMessageDelayed(this._DelayedStopHandler.obtainMessage(), 60000L);
    }

    void initializePlayer() {
        this._Player = new MultiPlayer();
        this._Player.setHandler(this._MediaplayerHandler);
        CoreHelper.writeTraceEntry(TAG, "MultiPlayer Initialized!");
    }

    void releasePlayer() {
        if (this._Player != null) {
            this._Player.release();
        }
        this._Player = null;
        CoreHelper.writeTraceEntry(TAG, "MultiPlayer Released!");
    }

    @Override // android.app.Service
    @TargetApi(26)
    public int onStartCommand(Intent intent, int i, int i2) {
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(isPlaying() ? R.drawable.ic_notification_pause : R.drawable.ic_notification_play).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (MediaPlaybackService) and passing notification: " + build.toString());
            startForeground(101, build);
            this._started = true;
        }
        handleCommand(intent, i2);
        return 2;
    }

    private void handleCommand(Intent intent, int i) {
        this._ServiceStartId = i;
        CoreHelper.writeTraceEntry(TAG, "Service autoshutdown scheduled from onStart");
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        this._DelayedStopHandler.sendMessageDelayed(this._DelayedStopHandler.obtainMessage(), 60000L);
        if (handleCommandInternal(intent)) {
            return;
        }
        handleCommandWhenPlaylistLoads(intent);
    }

    private boolean handleCommandInternal(Intent intent) {
        if (FeedRepository.repositoryLoadState() != 2) {
            return false;
        }
        if (intent == null) {
            return true;
        }
        String action = intent.getAction();
        if (SERVICECMD.equals(action)) {
            this._IntentReceiver.onReceive(this, intent);
            return true;
        }
        if (!SERVICE_WIDGET_CMD_PLAY_PAUSE.equals(action) && !SERVICE_NOTIFICATION_CMD_PLAY_PAUSE.equals(action) && !SERVICE_WIDGET_CMD_SKIP_TO_END.equals(action) && !SERVICE_WIDGET_CMD_START_SMARTPLAY.equals(action) && !SERVICE_WIDGET_CMD_SKIP_BACK.equals(action) && !SERVICE_WIDGET_CMD_SKIP_FORWARD.equals(action) && !SERVICE_WIDGET_CMD_NEXT_TRACK.equals(action) && !SERVICE_WIDGET_CMD_STOP.equals(action)) {
            return true;
        }
        handleWidgetCommandInternal(intent);
        return true;
    }

    private void handleCommandWhenPlaylistLoads(Intent intent) {
        try {
            this._LoadDataStartTime = System.currentTimeMillis();
            if (FeedRepository.repositoryLoadState() == -1) {
                NotificationHelper.getInstance().startForegroundAndShowNotification(this, 1, BeyondPodApplication.getInstance().getDefaultNotificationForService(this, "Loading feeds..."));
                CoreHelper.writeTraceEntry(TAG, "******* MediaPlaybackService HandleCommand found that repository is not loaded! (repo state is: " + FeedRepository.repositoryLoadState() + ") Loading repository...");
                if (!FeedRepository.initializeAndLoadRepository()) {
                    CoreHelper.writeLogEntry(TAG, "MediaPlayBack Service - the repository failed to load! Giving Up!");
                    BeyondPodApplication.getInstance().refreshWidgets();
                    checkCanStop();
                    stopSelf();
                    return;
                }
            }
            while (System.currentTimeMillis() - this._LoadDataStartTime < 20000) {
                if (handleCommandInternal(intent)) {
                    return;
                }
                CoreHelper.writeTraceEntry(TAG, "MediaPlayBack Service - Repository is still loading...");
                Thread.sleep(1000L);
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "MediaPlayBack Service - failed to process Command!", e);
        }
        CoreHelper.writeLogEntry(TAG, "MediaPlayBack Service - is taking too long to load! Giving Up!");
        checkCanStop();
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadCurrentTrack(boolean z, boolean z2) {
        Track currentPlayingTrack = currentPlayingTrack();
        if (currentPlayingTrack != null) {
            if (!z2 && this._Player != null) {
                String currentMediaPath = this._Player.getCurrentMediaPath();
                if (!StringUtils.isNullOrEmpty(currentMediaPath) && (StringUtils.equals(currentMediaPath, currentPlayingTrack.trackPath()) || StringUtils.equals(currentMediaPath, currentPlayingTrack.getUrl()))) {
                    CoreHelper.writeTraceEntry(TAG, "   loadCurrentTrack found that the track is already loaded. Ignoring...");
                    return;
                }
            }
            this._StartPlaybackAfterPrepare = z;
            preparePlaybackSource(currentPlayingTrack);
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "  loadCurrentTrack found that there is no Current track. Ignoring...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preparePlaybackSource(Track track) {
        this._IdleStateStartTime = 0L;
        this._Player._Handler.removeMessages(4);
        if (ChromecastDevice.isConnected()) {
            CoreHelper.writeTraceEntry(TAG, "  Preparing playback to a Chromecast device! (" + track + ")");
            if (StringUtils.isNullOrEmpty(track.getUrl())) {
                CoreHelper.writeTraceEntry(TAG, "Chromecast Player can handle only internet media!");
                track.setCurrentPlayState(9);
                return;
            }
            track.setBufferedPercent(0);
            track.setCurrentPlayState(3);
            this._Player.setDataSourceChromecast(new IMediaPlayerImpl.TrackMetadata(track.getUrl(), track.displayName(), track.contentMimeType(), track.getParentFeed().getFeedImageUrl(), track.getParentFeed().getName(), track.getLastModifiedDate()));
            this._MetadataPublisher.publishTrackInformation(track, true);
            BeyondPodApplication.getInstance().setPlayerNotification(this, track);
            return;
        }
        if (!PlayList.allowStreaming(track) || (Configuration.allowVideosInPlaylist() && track.contentType() == 2)) {
            track.setCurrentPlayState(2);
            this._Player.setDataSourceVideoTrack(track);
            gotoIdleState(true);
            return;
        }
        if (track.exists()) {
            float defaultSpeedForTrack = getDefaultSpeedForTrack(track);
            CoreHelper.writeTraceEntry(TAG, "  Preparing playback source Sync! (" + track + ", Playback Speed: " + defaultSpeedForTrack + ")");
            track.setCurrentPlayState(3);
            this._Player.setDataSource(track.trackPath(), track.contentMimeType(), defaultSpeedForTrack);
        } else {
            CoreHelper.writeTraceEntry(TAG, "  Preparing playback source Async! (" + track + ")");
            track.setBufferedPercent(0);
            track.setCurrentPlayState(3);
            this._Player.setDataSourceAsync(track.getUrl());
        }
        BeyondPodApplication.getInstance().sendCommandToVideoPlayer(this._CloseVideoPlayerIntent);
        this._MetadataPublisher.publishTrackInformation(track, true);
    }

    private float getDefaultSpeedForTrack(Track track) {
        float preferredPlaybackSpeed = track.preferredPlaybackSpeed();
        return preferredPlaybackSpeed > 0.0f ? preferredPlaybackSpeed : Configuration.defaultPlaybackSpeed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekAtStart(long j) {
        if (this._StartPlaybackAfterPrepare) {
            this._StartPlaybackAfterSeek = true;
            this._StartPlaybackAfterPrepare = false;
        }
        if (Configuration.getInternalPlayerSupportedFileExtensions().contains("blipstart")) {
            doFunkyHTCIncredibleHack();
        }
        this._Player.seek(j);
    }

    private void doFunkyHTCIncredibleHack() {
        if (this._Player.supportsSpeedAlteration()) {
            return;
        }
        this._Player.setVolume(0.0f);
        this._Player.start();
        try {
            Thread.sleep(10L);
        } catch (InterruptedException unused) {
        }
        this._Player.pause();
        this._Player.setVolume(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPlaybackIfNeeded() {
        if (this._StartPlaybackAfterPrepare) {
            this._StartPlaybackAfterPrepare = false;
            startAndFadeIn();
        } else {
            gotoIdleState(true);
        }
    }

    private void handleWidgetCommandInternal(Intent intent) {
        SmartPlaylist smartPlaylistByName;
        AnalyticsTracker.onWidgetCommand(intent.getAction());
        if (playList().playlistSize() == 0 || (intent.getAction() != null && intent.getAction().equals(SERVICE_WIDGET_CMD_START_SMARTPLAY))) {
            if (SmartPlaylistManager.isConfigured()) {
                String stringExtra = intent.getStringExtra(CommandReceiver.EXTRA_PLAYLIST_NAME);
                int id = (StringUtils.isNullOrEmpty(stringExtra) || (smartPlaylistByName = SmartPlaylistManager.getSmartPlaylistByName(stringExtra)) == null) ? -1 : smartPlaylistByName.id();
                if (id == -1) {
                    id = intent.getIntExtra(CommandReceiver.EXTRA_PLAYLIST_ID, -1);
                }
                CoreHelper.writeTraceEntry(TAG, "Widget command received. Playlist is empty or forced smartPlay id: " + id + " . Starting SmartPlay...");
                CommandManagerBase.CmdPlaySmartPlayList(id, this);
                return;
            }
            return;
        }
        int i = 0;
        Track currentTrack = playList().currentTrack();
        if (currentTrack != null) {
            i = playList().getCurrentPlayingTrackPosition();
            CoreHelper.writeTraceEntry(TAG, "Widget command received. Resuming " + currentTrack.displayName());
        } else {
            CoreHelper.writeTraceEntry(TAG, "Widget command received. No Current track. Starting from track 0");
        }
        Intent intent2 = new Intent(SERVICECMD);
        if (intent.getAction().equals(SERVICE_WIDGET_CMD_PLAY_PAUSE) || intent.getAction().equals(SERVICE_NOTIFICATION_CMD_PLAY_PAUSE)) {
            if (!isMultiPlayerInitialized() || currentTrack == null) {
                CoreHelper.writeTraceEntry(TAG, "Widget command received invoked OpenAndPlay");
                intent2.putExtra(CMDNAME, CMDOPEN_AND_PLAY);
                intent2.putExtra(TRACKPOS, i);
            } else {
                CoreHelper.writeTraceEntry(TAG, "Widget command received invoked TogglePlayPause");
                intent2.putExtra(CMDNAME, CMDTOGGLEPAUSE);
                intent2.putExtra(CMDOPTION, intent.getAction());
            }
        } else if (intent.getAction().equals(SERVICE_WIDGET_CMD_SKIP_TO_END)) {
            intent2.putExtra(CMDNAME, CMD_SKIP_TO_END);
        } else if (intent.getAction().equals(SERVICE_WIDGET_CMD_SKIP_BACK)) {
            intent2.putExtra(CMDNAME, CMD_SKIP_BACKWARD);
        } else if (intent.getAction().equals(SERVICE_WIDGET_CMD_SKIP_FORWARD)) {
            intent2.putExtra(CMDNAME, CMD_SKIP_FORWARD);
        } else if (intent.getAction().equals(SERVICE_WIDGET_CMD_NEXT_TRACK)) {
            intent2.putExtra(CMDNAME, CMD_PLAY_NEXT);
        } else if (intent.getAction().equals(SERVICE_WIDGET_CMD_STOP)) {
            if (ChromecastDevice.isConnected()) {
                ChromecastDevice.disconnect();
            }
            intent2.putExtra(CMDNAME, CMDSTOP);
        }
        if (BeyondPodApplication.getInstance().sendCommandToVideoPlayer(intent2)) {
            return;
        }
        this._IntentReceiver.onReceive(this, intent2);
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (isPlaying()) {
            CoreHelper.writeLogEntry(TAG, "Service being destroyed while still playing.");
        }
        releasePlayer();
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        this._MediaplayerHandler.removeCallbacksAndMessages(null);
        BeyondPodApplication.messageBus.unsubscribe(this._UIVisibilityListener, ApplicationEvents.MainUIVisibilityChangedEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this._UpdateAndDownloadListener, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        this._MetadataPublisher.release();
        unregisterReceiver(this._BatteryStateReceiver);
        unregisterReceiver(this._IntentReceiver);
        this._WakeLock.release();
        if (Configuration.showPlayerPausedNotication() && NotificationHelper.getInstance().isNotificationShowing(1)) {
            BeyondPodApplication.getInstance().setPlayerPauseNotification(this, currentPlayingTrack());
        }
        CoreHelper.writeTraceEntry(TAG, "--------------------------- MediaPlayback service is Destroyed! ---------------------------");
        ServiceIsRunning = false;
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        this._DelayedStopHandler.sendMessageDelayed(this._DelayedStopHandler.obtainMessage(), 60000L);
        this._ServiceInUse = true;
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        this._DelayedStopHandler.sendMessageDelayed(this._DelayedStopHandler.obtainMessage(), 60000L);
        this._ServiceInUse = true;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        this._ServiceInUse = false;
        if (isPlaying() || this._ResumeAfterCall) {
            return true;
        }
        if (playList().playlistSize() > 0 || this._MediaplayerHandler.hasMessages(1)) {
            CoreHelper.writeTraceEntry(TAG, "Service autoshutdown scheduled from onUnbind");
            this._DelayedStopHandler.sendMessageDelayed(this._DelayedStopHandler.obtainMessage(), 60000L);
            return true;
        }
        checkCanStop();
        stopSelf(this._ServiceStartId);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoIdleState(boolean z) {
        CoreHelper.writeTraceEntry(TAG, "Service autoshutdown scheduled from gotoIdleState");
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        this._DelayedStopHandler.sendMessageDelayed(this._DelayedStopHandler.obtainMessage(), 60000L);
        NotificationHelper.getInstance().stopForeground(this, z ? 1 : -1);
        if (z) {
            return;
        }
        BeyondPodApplication.getInstance().setPlayerPauseNotification(this, currentPlayingTrack());
    }

    public void openAndPlay(int i) {
        synchronized (this) {
            Track trackAtPosition = playList().getTrackAtPosition(i);
            if (trackAtPosition == null) {
                return;
            }
            if (trackAtPosition.exists() || trackAtPosition.hasUrl()) {
                pause(false);
                if (trackAtPosition.isPlayed()) {
                    trackAtPosition.clearPlayed();
                }
                playList().setCurrentTrack(i);
                this._StartPlaybackAfterPrepare = true;
                preparePlaybackSource(trackAtPosition);
            }
        }
    }

    public boolean play() {
        if (FeedRepository.repositoryLoadState() == -1) {
            CoreHelper.writeLogEntry(TAG, "MediaPlaybackService play() is called but the feed repository is not initialized! Command Ignoried!");
            return false;
        }
        Track currentPlayingTrack = currentPlayingTrack();
        if (currentPlayingTrack != null && (currentPlayingTrack.getCurrentPlayState() == 7 || currentPlayingTrack.getCurrentPlayState() == 8 || currentPlayingTrack.getCurrentPlayState() == 9)) {
            openAndPlayCurrentTrack();
        } else if (isMultiPlayerInitialized()) {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra(CMDNAME, CMDPAUSE);
            sendBroadcast(intent);
            if (currentPlayingTrack != null) {
                if (currentPlayingTrack.getCurrentPlayState() == 3) {
                    CoreHelper.writeTraceEntry(TAG, "MediaPlaybackService play() was called while the player is preparing! Playback will start after Prepare is Complete!");
                    this._StartPlaybackAfterPrepare = true;
                    return false;
                }
                if (!AudioFocusHelper.getInstance().trySetAudioFocus() && !Configuration.getInternalPlayerSupportedFileExtensions().contains("ignorefocus")) {
                    return false;
                }
                long currentTimeMillis = System.currentTimeMillis() - this._IdleStateStartTime;
                int resumeReplayDuration = Configuration.resumeReplayDuration();
                if (resumeReplayDuration > 0) {
                    CoreHelper.writeTraceEntry(TAG, "Replay on resume is enabled for " + resumeReplayDuration + " sec. We were idle for:" + currentTimeMillis + " ms.");
                }
                if (resumeReplayDuration > 0 && !currentPlayingTrack.isPlayed() && currentTimeMillis > 60000) {
                    long playedTime = (currentPlayingTrack.getPlayedTime() - resumeReplayDuration) * 1000;
                    if (playedTime < 0) {
                        playedTime = 0;
                    }
                    CoreHelper.writeTraceEntry(TAG, "### Replaying the last " + resumeReplayDuration + " secs. Moving from: " + position() + " (" + CoreHelper.formatTimeAsString(position() / 1000) + ") to " + playedTime + " (" + CoreHelper.formatTimeAsString(playedTime / 1000) + ")");
                    this._IdleStateStartTime = System.currentTimeMillis();
                    this._StartPlaybackAfterSeek = true;
                    this._Player.seek(playedTime);
                    if (this._Player.playerType() != 2) {
                        return false;
                    }
                }
                CoreHelper.writeTraceEntry(TAG, "Setting volume boost to: " + currentPlayingTrack.playbackVolumeBoost());
                this._Player.setVolumeBoost(currentPlayingTrack.playbackVolumeBoost());
                this._Player.start();
                if (this._Player.playerType() == 2) {
                    return true;
                }
                currentPlayingTrack.setCurrentPlayState(1);
                currentPlayingTrack.setCurrentPlaybackSpeed(this._Player.getCurrentPlaybackSpeed());
                this._MetadataPublisher.publishTrackInformation(currentPlayingTrack, false);
                if (currentPlayingTrack.getTotalTime() <= 0) {
                    currentPlayingTrack.setTotalTime(this._Player.duration() / 1000);
                }
                BeyondPodApplication.getInstance().setPlayerNotification(this, currentPlayingTrack());
            } else {
                CoreHelper.writeLogEntry(TAG, "MediaPlaybackService play() was called with 'null' currentPlayingTrack()");
                return false;
            }
        } else if (playList().playlistSize() > 0) {
            openAndPlayCurrentTrack();
        } else {
            CoreHelper.writeTraceEntry(TAG, "MediaPlaybackService play() was called with empty playlist");
            return false;
        }
        return true;
    }

    private void openAndPlayCurrentTrack() {
        int currentPlayingTrackPosition = playList().getCurrentPlayingTrackPosition();
        if (currentPlayingTrackPosition < 0) {
            currentPlayingTrackPosition = 0;
        }
        openAndPlay(currentPlayingTrackPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stop(boolean z) {
        this._MediaplayerHandler.removeMessages(6);
        if (isMultiPlayerInitialized()) {
            if (isPlaying()) {
                pause(false);
            }
            this._Player.stop();
        }
        Track currentPlayingTrack = currentPlayingTrack();
        if (currentPlayingTrack != null) {
            currentPlayingTrack.setCurrentPlayState(2);
            this._MetadataPublisher.publishTrackInformation(currentPlayingTrack, false);
        } else {
            CoreHelper.writeTraceEntry(TAG, "Trying to stop playback, but there was no current track. Ignoring...");
        }
        if (z) {
            gotoIdleState(true);
        } else {
            NotificationHelper.getInstance().stopForeground(this, -1);
        }
    }

    public void startAndFadeIn() {
        if (Configuration.enableFadeInOnPlaybackStart() && this._Player.playerType() == 0) {
            this._MediaplayerHandler.sendEmptyMessageDelayed(6, FADE_IN_TICK);
        } else {
            play();
        }
    }

    public void stop() {
        stop(true);
    }

    public void pause(boolean z) {
        AudioFocusHelper.getInstance().releaseAudioFocus();
        this._MediaplayerHandler.removeMessages(6);
        if (isPlaying()) {
            this._Player.pause();
            Track currentPlayingTrack = currentPlayingTrack();
            if (currentPlayingTrack != null && currentPlayingTrack.getCurrentPlayState() == 1) {
                if (verifyCurrentTrack(this._Player, currentPlayingTrack, 2)) {
                    currentPlayingTrack.setPlayedTime(this._Player.position() / 1000);
                }
                currentPlayingTrack.setCurrentPlayState(0);
                this._MetadataPublisher.publishTrackInformation(currentPlayingTrack, false);
                ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(15, TimeSpan.fromSeconds(1.0d), false);
                FeedRepository.saveRepositoryAsync();
            } else {
                CoreHelper.writeTraceEntry(TAG, "Trying to pause track that is null or not playing. Ignoring...");
            }
            this._IdleStateStartTime = System.currentTimeMillis();
            gotoIdleState((z || Configuration.showPlayerPausedNotication()) ? false : true);
        }
    }

    public void duck() {
        this._MediaplayerHandler.removeMessages(6);
        if (isPlaying()) {
            this._Player.pause();
            Track currentPlayingTrack = currentPlayingTrack();
            if (currentPlayingTrack != null && currentPlayingTrack.getCurrentPlayState() == 1) {
                if (verifyCurrentTrack(this._Player, currentPlayingTrack, 2)) {
                    currentPlayingTrack.setPlayedTime(this._Player.position() / 1000);
                }
                currentPlayingTrack.setCurrentPlayState(0);
            }
            this._IdleStateStartTime = System.currentTimeMillis();
            BeyondPodApplication.getInstance().setPlayerPauseNotification(this, currentPlayingTrack());
        }
    }

    public boolean isPlaying() {
        return isMultiPlayerInitialized() && this._Player.isPlaying();
    }

    public long duration() {
        if (!isMultiPlayerInitialized()) {
            return -1L;
        }
        long duration = this._Player.duration();
        if (duration <= 0) {
            Track currentPlayingTrack = currentPlayingTrack();
            if ((this._IsPreparing || this._IsSeeking) && currentPlayingTrack != null && currentPlayingTrack.getPlayedTime() > 0) {
                return currentPlayingTrack.getTotalTime() * 1000;
            }
        }
        return duration;
    }

    public long position() {
        if (!isMultiPlayerInitialized()) {
            return -1L;
        }
        long position = this._Player.position();
        if (position <= 0) {
            Track currentPlayingTrack = currentPlayingTrack();
            if ((this._IsPreparing || this._IsSeeking) && currentPlayingTrack != null && currentPlayingTrack.getPlayedTime() > 0) {
                return currentPlayingTrack.getPlayedTime() * 1000;
            }
        }
        return position;
    }

    public long seek(long j) {
        if (!isMultiPlayerInitialized()) {
            return -1L;
        }
        if (j < 0) {
            j = 0;
        }
        if (j > this._Player.duration()) {
            j = this._Player.duration();
        }
        return this._Player.seek(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMultiPlayerInitialized() {
        if (this._Player == null) {
            CoreHelper.writeLogEntry(TAG, "WARNING: Player operation invoked but the Player instance is NULL! Reinitializing the Player!");
            initializePlayer();
        }
        return this._Player.isInitialized();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTimeToSleep() {
        return this._TimeToSleep;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToSleepIn(int i) {
        this._TimeToSleep = i;
        if (i > 0) {
            scheduleSleepTick();
        } else {
            this._MediaplayerHandler.removeMessages(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleSleepTick() {
        this._MediaplayerHandler.removeMessages(5);
        this._MediaplayerHandler.sendMessageDelayed(this._MediaplayerHandler.obtainMessage(5), 60000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Track currentPlayingTrack() {
        return playList().currentTrack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PlayList playList() {
        return BeyondPodApplication.getInstance().playList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f, float f2) {
        if (isMultiPlayerInitialized()) {
            if (currentPlayingTrack() != null) {
                currentPlayingTrack().setCurrentPlaybackSpeed(f);
            }
            this._Player.setPlaybackSpeed(f, f2);
            this._MetadataPublisher.publishTrackInformation(currentPlayingTrack(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCurrentPlaybackSpeed() {
        if (isMultiPlayerInitialized()) {
            return this._Player.getCurrentPlaybackSpeed();
        }
        return 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean supportsSpeedAlteration() {
        return isMultiPlayerInitialized() && this._Player.supportsSpeedAlteration();
    }

    protected int playerType() {
        if (isMultiPlayerInitialized()) {
            return this._Player.playerType();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canChangePlaybackSpeed() {
        return isMultiPlayerInitialized() && this._Player.canChangePlaybackSpeed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MultiPlayer {
        private String _CurrentMediaPath;
        private Handler _Handler;
        private IMediaPlayerImpl _MediaPlayer;
        private boolean _IsInitialized = false;
        int _CurrentWakeMode = -1;
        IMediaPlayerImpl.OnCompletionListener _completionListener = new IMediaPlayerImpl.OnCompletionListener() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.MultiPlayer.1
            @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl.OnCompletionListener
            public void onCompletion(IMediaPlayerImpl iMediaPlayerImpl) {
                Track currentPlayingTrack = MediaPlaybackService.this.currentPlayingTrack();
                if (currentPlayingTrack != null) {
                    CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  Media Player OnCompleted! Buffered: " + currentPlayingTrack.getBufferedPercent() + "%, Download Started: " + currentPlayingTrack.hasDownloadStarted() + ", Fully downloaded: " + currentPlayingTrack.isFullyDownloaded());
                } else {
                    CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  Media Player OnCompleted! No track");
                }
                MediaPlaybackService.this._WakeLock.acquire(30000L);
                MediaPlaybackService.this._Player._Handler.removeMessages(4);
                if (currentPlayingTrack != null && ((!currentPlayingTrack.exists() || !currentPlayingTrack.isFullyDownloaded()) && (currentPlayingTrack.exists() || currentPlayingTrack.getBufferedPercent() <= 95))) {
                    CoreHelper.writeLogEntryInProduction(MediaPlaybackService.TAG, "####### OnCompleted event was Ignored because either a streaming track did not finish playing or track was not fully downloaded!");
                    MultiPlayer.this._Handler.sendEmptyMessage(7);
                } else {
                    MultiPlayer.this._Handler.sendEmptyMessage(1);
                }
                MultiPlayer.this._Handler.sendEmptyMessageDelayed(2, 2000L);
            }
        };
        IMediaPlayerImpl.OnErrorListener _errorListener = new IMediaPlayerImpl.OnErrorListener() { // from class: mobi.beyondpod.services.player.MediaPlaybackService.MultiPlayer.2
            @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl.OnErrorListener
            public boolean onError(IMediaPlayerImpl iMediaPlayerImpl, int i, int i2) {
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "Media Player OnError! What: " + i + ", Extra: " + i2);
                MediaPlaybackService.this._IsPreparing = false;
                MediaPlaybackService.this._IsSeeking = false;
                MediaPlaybackService.this._MediaplayerHandler.removeCallbacksAndMessages(null);
                if (i == 101010 && i2 == 200) {
                    CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, " Our Chromecast session was interrupted! Stopping any playback... ");
                    MultiPlayer.this.stop();
                    MediaPlaybackService.this._StartPlaybackAfterPrepare = false;
                    MediaPlaybackService.this._StartPlaybackAfterSeek = false;
                    return true;
                }
                if (i < 0 || i == 100) {
                    MediaPlaybackService.this._StartPlaybackAfterPrepare = false;
                    MediaPlaybackService.this._StartPlaybackAfterSeek = false;
                    MultiPlayer.this.recreatePlayer();
                } else {
                    MultiPlayer.this._MediaPlayer.reset();
                }
                if (i == 1) {
                    CoreHelper.writeLogEntry(MediaPlaybackService.TAG, "******** MEDIA_ERROR_UNKNOWN, Extra:" + i2);
                } else if (i == 100) {
                    CoreHelper.writeLogEntry(MediaPlaybackService.TAG, "******** MEDIA_ERROR_SERVER_DIED, Extra:" + i2);
                    if (FeedRepository.repositoryLoadState() == -1) {
                        return true;
                    }
                    MultiPlayer.this._Handler.sendMessageDelayed(MultiPlayer.this._Handler.obtainMessage(3), 2000L);
                    return true;
                }
                MultiPlayer.this._Handler.sendMessageDelayed(MultiPlayer.this._Handler.obtainMessage(7), 1000L);
                return true;
            }
        };

        public MultiPlayer() {
            this._MediaPlayer = MediaPlayerFactory.createPlayer(MediaPlaybackService.this);
            updatePlayerWakeMode(CoreHelper.isDevicePlugged());
        }

        public void setVolumeBoost(float f) {
            this._MediaPlayer.setVolumeBoost(f);
        }

        public String getCurrentMediaPath() {
            return this._CurrentMediaPath;
        }

        public int playerType() {
            return this._MediaPlayer.playerType();
        }

        public boolean supportsSpeedAlteration() {
            return this._MediaPlayer.supportsSpeedAlteration();
        }

        public float getCurrentPlaybackSpeed() {
            return this._MediaPlayer.getCurrentSpeedMultiplier();
        }

        public boolean canChangePlaybackSpeed() {
            return this._MediaPlayer.canSetSpeed() && this._MediaPlayer.canSetPitch();
        }

        public void setPlaybackSpeed(float f, float f2) {
            if (f2 >= 0.0f) {
                this._MediaPlayer.setPlaybackPitch(f2);
            }
            if (f > 0.0f) {
                this._MediaPlayer.setPlaybackSpeed(f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @TargetApi(21)
        public void updatePlayerWakeMode(boolean z) {
            int i = CoreHelper.apiLevel() > 19 ? 32 : 6;
            if (this._MediaPlayer != null) {
                if (Configuration.playerPlaybackScreenPowerState() != 3 && Configuration.playerPlaybackScreenPowerState() != 4 && ((Configuration.playerPlaybackScreenPowerState() != 1 || !z) && (Configuration.playerPlaybackScreenPowerState() != 2 || !z))) {
                    i = 1;
                }
                if (this._CurrentWakeMode != i) {
                    this._CurrentWakeMode = i;
                    this._MediaPlayer.setWakeMode(MediaPlaybackService.this, this._CurrentWakeMode);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDataSourceChromecast(IMediaPlayerImpl.TrackMetadata trackMetadata) {
            try {
                if (this._MediaPlayer.isPlaying()) {
                    stop();
                }
                MediaPlaybackService.this._IsPreparing = true;
                this._MediaPlayer.reset();
                this._MediaPlayer = MediaPlayerFactory.switchToChromecastPlayerIfNeeded(this._MediaPlayer, MediaPlaybackService.this, this._CurrentWakeMode);
                this._CurrentMediaPath = trackMetadata.TrackURL;
                this._MediaPlayer.setDataSource(trackMetadata);
                this._MediaPlayer.setAudioStreamType(3);
                this._MediaPlayer.setOnPreparedListener(MediaPlaybackService.this._preparedlistener);
                this._MediaPlayer.prepareAsync();
                this._MediaPlayer.setOnCompletionListener(null);
                this._MediaPlayer.setOnErrorListener(this._errorListener);
                this._MediaPlayer.setOnSeekCompleteListener(MediaPlaybackService.this._SeekCompleteListener);
                this._MediaPlayer.setOnInfoListener(MediaPlaybackService.this._InfoListener);
                this._MediaPlayer.setOnBufferingUpdateListener(MediaPlaybackService.this._BufferingUpdateListener);
                this._IsInitialized = true;
                AnalyticsTracker.onChromecastPlaybackStarted();
            } catch (Exception e) {
                MediaPlaybackService.this._IsPreparing = false;
                this._IsInitialized = false;
                CoreHelper.logException(MediaPlaybackService.TAG, "Unable to setDataSourceChromecast! reason: ", e);
                if (this._errorListener != null) {
                    this._errorListener.onError(this._MediaPlayer, 1, 0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDataSourceVideoTrack(Track track) {
            if (this._MediaPlayer.isPlaying()) {
                stop();
            }
            MediaPlaybackService.this._IsPreparing = false;
            MediaPlaybackService.this._IsSeeking = false;
            this._MediaPlayer.reset();
            this._MediaPlayer.release();
            this._MediaPlayer = new MediaPlayerTrackBacked(MediaPlaybackService.this, track);
            this._IsInitialized = true;
            if (MediaPlaybackService.this._StartPlaybackAfterPrepare) {
                MediaPlaybackService.this._StartPlaybackAfterPrepare = false;
                this._MediaPlayer.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDataSourceAsync(String str) {
            try {
                if (this._MediaPlayer.isPlaying()) {
                    stop();
                }
                MediaPlaybackService.this._IsPreparing = true;
                this._MediaPlayer.reset();
                this._MediaPlayer = MediaPlayerFactory.switchToStreamingPlayerIfNeeded(this._MediaPlayer, MediaPlaybackService.this, this._CurrentWakeMode);
                this._CurrentMediaPath = str;
                this._MediaPlayer.setDataSource(str);
                this._MediaPlayer.setAudioStreamType(3);
                this._MediaPlayer.setOnPreparedListener(MediaPlaybackService.this._preparedlistener);
                this._MediaPlayer.prepareAsync();
                this._MediaPlayer.setOnCompletionListener(null);
                this._MediaPlayer.setOnErrorListener(this._errorListener);
                this._MediaPlayer.setOnSeekCompleteListener(MediaPlaybackService.this._SeekCompleteListener);
                this._MediaPlayer.setOnInfoListener(MediaPlaybackService.this._InfoListener);
                this._MediaPlayer.setOnBufferingUpdateListener(MediaPlaybackService.this._BufferingUpdateListener);
                this._IsInitialized = true;
                AnalyticsTracker.onAudioPlaybackStarted(true, 1.0f);
            } catch (Exception unused) {
                MediaPlaybackService.this._IsPreparing = false;
                this._IsInitialized = false;
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "Unable to setDataSourceAsync! reason: ");
                if (this._errorListener != null) {
                    this._errorListener.onError(this._MediaPlayer, 1, 0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDataSource(String str, String str2, float f) {
            try {
                if (this._MediaPlayer.isPlaying()) {
                    stop();
                }
                MediaPlaybackService.this._IsPreparing = true;
                this._MediaPlayer.reset();
                this._MediaPlayer = MediaPlayerFactory.switchToLocalPlayerIfNeeded(this._MediaPlayer, f, MediaPlaybackService.this, this._CurrentWakeMode, str, str2);
                configureSelectedPlayer(this._MediaPlayer, str);
            } catch (IOException e) {
                if (this._MediaPlayer.playerType() == 4) {
                    CoreHelper.writeLogEntry(MediaPlaybackService.TAG, "Mpg123 player was unable to handle media! Switching to Android player...");
                    this._MediaPlayer = MediaPlayerFactory.switchToStreamingPlayerIfNeeded(this._MediaPlayer, MediaPlaybackService.this, this._CurrentWakeMode);
                    try {
                        configureSelectedPlayer(this._MediaPlayer, str);
                    } catch (Exception e2) {
                        handlePrepareException(e2);
                        return;
                    }
                } else {
                    handlePrepareException(e);
                }
            } catch (Exception e3) {
                handlePrepareException(e3);
                return;
            }
            this._MediaPlayer.setPlaybackSpeed(f);
            this._IsInitialized = true;
            AnalyticsTracker.onAudioPlaybackStarted(false, f);
        }

        private void configureSelectedPlayer(IMediaPlayerImpl iMediaPlayerImpl, String str) throws IllegalArgumentException, IllegalStateException, IOException {
            iMediaPlayerImpl.setOnPreparedListener(MediaPlaybackService.this._preparedlistener);
            iMediaPlayerImpl.setOnErrorListener(this._errorListener);
            iMediaPlayerImpl.setOnSeekCompleteListener(MediaPlaybackService.this._SeekCompleteListener);
            iMediaPlayerImpl.setOnInfoListener(MediaPlaybackService.this._InfoListener);
            iMediaPlayerImpl.setOnBufferingUpdateListener(MediaPlaybackService.this._BufferingUpdateListener);
            this._CurrentMediaPath = str;
            iMediaPlayerImpl.setDataSource(str);
            if (iMediaPlayerImpl.supportsSpeedAlteration()) {
                this._IsInitialized = true;
                initializeOnCompletionListener();
            } else {
                iMediaPlayerImpl.setOnCompletionListener(null);
            }
            iMediaPlayerImpl.setAudioStreamType(3);
            iMediaPlayerImpl.prepare();
        }

        private void handlePrepareException(Exception exc) {
            MediaPlaybackService.this._IsPreparing = false;
            this._IsInitialized = false;
            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "Unable to setDataSource! reason: " + CoreHelper.extractExceptionMessages(exc));
            if (this._errorListener != null) {
                this._errorListener.onError(this._MediaPlayer, 1, 0);
            }
        }

        public void initializeOnCompletionListener() {
            this._MediaPlayer.setOnCompletionListener(this._completionListener);
        }

        public boolean isInitialized() {
            return this._IsInitialized;
        }

        public void start() {
            try {
                this._MediaPlayer.start();
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "*** Player Started!");
                queueNextRefresh(5000L);
            } catch (Exception e) {
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "Unable to start playback! reason: " + CoreHelper.extractExceptionMessages(e));
                if (this._errorListener != null) {
                    this._errorListener.onError(this._MediaPlayer, 1, 0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void queueNextRefresh(long j) {
            Message obtainMessage = this._Handler.obtainMessage(4);
            this._Handler.removeMessages(4);
            this._Handler.sendMessageDelayed(obtainMessage, j);
        }

        public void stop() {
            this._IsInitialized = false;
            MediaPlaybackService.this._IsPreparing = false;
            MediaPlaybackService.this._IsSeeking = false;
            this._Handler.removeMessages(4);
            this._MediaPlayer.reset();
            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "*** Player Stopped (reset)!");
        }

        public void pause() {
            this._Handler.removeMessages(4);
            this._MediaPlayer.pause();
            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "*** Player Paused!");
        }

        public boolean isPlaying() {
            return this._MediaPlayer.isPlaying();
        }

        public void setHandler(Handler handler) {
            this._Handler = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recreatePlayer() {
            this._IsInitialized = false;
            MediaPlaybackService.this._IsPreparing = false;
            MediaPlaybackService.this._IsSeeking = false;
            this._MediaPlayer.release();
            this._MediaPlayer = MediaPlayerFactory.createPlayer(MediaPlaybackService.this);
            this._CurrentWakeMode = 1;
            this._MediaPlayer.setWakeMode(MediaPlaybackService.this, this._CurrentWakeMode);
            CoreHelper.writeLogEntry(MediaPlaybackService.TAG, "******** Media Player was recreated due to internal Error!");
        }

        public long duration() {
            return this._MediaPlayer.getDuration();
        }

        public long position() {
            return this._MediaPlayer.getCurrentPosition();
        }

        public long seek(long j) {
            CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  Media Player Seeking to:" + j);
            MediaPlaybackService.this._IsSeeking = true;
            try {
                this._MediaPlayer.seekTo((int) j);
                return j;
            } catch (Exception e) {
                CoreHelper.writeTraceEntry(MediaPlaybackService.TAG, "  failed to seek! reason: " + e.getMessage());
                MediaPlaybackService.this._IsSeeking = false;
                return 0L;
            }
        }

        public void setVolume(float f) {
            this._MediaPlayer.setVolume(f, f);
        }

        public void release() {
            stop();
            this._MediaPlayer.release();
        }
    }
}
