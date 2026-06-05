package mobi.beyondpod.services.player.impl;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.support.v4.content.ContextCompat;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.services.player.impl.IMediaPlayerImpl;

/* loaded from: classes.dex */
public class ChromecastPlayer {
    private static final int MEDIA_BUFFERING_UPDATE = 3;
    private static final int MEDIA_ERROR = 100;
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;
    private static final int MEDIA_INFO = 200;
    public static final int MEDIA_INFO_BAD_INTERLEAVING = 800;
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_METADATA_UPDATE = 802;
    public static final int MEDIA_INFO_NOT_SEEKABLE = 801;
    public static final int MEDIA_INFO_STARTED_AS_NEXT = 2;
    public static final int MEDIA_INFO_TIMED_TEXT_ERROR = 900;
    public static final int MEDIA_INFO_UNKNOWN = 1;
    public static final int MEDIA_INFO_VIDEO_RENDERING_START = 3;
    public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
    private static final int MEDIA_NOP = 0;
    private static final int MEDIA_PLAYBACK_COMPLETE = 2;
    private static final int MEDIA_PREPARED = 1;
    private static final int MEDIA_SEEK_COMPLETE = 4;
    private static final int MEDIA_SET_VIDEO_SIZE = 5;
    public static final int MSG_ERROR_CHROMECAST = 101010;
    public static final int MSG_ERROR_EXTRA_INVALID_MESSAGE_STREAM = 100;
    public static final int MSG_ERROR_EXTRA_SESSION_INTERRUPTED = 200;
    private static final String TAG = "ChromecastPlayer";
    private String _DataSource;
    private ChromecastDevice.MediaControlChannel _MediaControlChannel;
    private ChromecastDevice.MediaFeedbackChannel _MediaFeedbackChannel;
    private MediaInfo _MediaInfo;
    private EventHandler mEventHandler;
    private OnBufferingUpdateListener mOnBufferingUpdateListener;
    private OnCompletionListener mOnCompletionListener;
    private OnErrorListener mOnErrorListener;
    private OnInfoListener mOnInfoListener;
    private OnPreparedListener mOnPreparedListener;
    private OnSeekCompleteListener mOnSeekCompleteListener;
    private OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private PowerManager.WakeLock mWakeLock = null;
    private int _LastKnownPosition = 0;
    private boolean _IsPlaying = false;

    /* loaded from: classes.dex */
    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(ChromecastPlayer chromecastPlayer, int i);
    }

    /* loaded from: classes.dex */
    public interface OnCompletionListener {
        void onCompletion(ChromecastPlayer chromecastPlayer);
    }

    /* loaded from: classes.dex */
    public interface OnErrorListener {
        boolean onError(ChromecastPlayer chromecastPlayer, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnInfoListener {
        boolean onInfo(ChromecastPlayer chromecastPlayer, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnPreparedListener {
        void onPrepared(ChromecastPlayer chromecastPlayer);
    }

    /* loaded from: classes.dex */
    public interface OnSeekCompleteListener {
        void onSeekComplete(ChromecastPlayer chromecastPlayer);
    }

    /* loaded from: classes.dex */
    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(ChromecastPlayer chromecastPlayer, int i, int i2);
    }

    public void setAudioStreamType(int i) {
    }

    public void setVolume(float f, float f2) {
    }

    public ChromecastPlayer(Context context) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            this.mEventHandler = new EventHandler(this, myLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(this, mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        this._MediaControlChannel = BeyondPodApplication.getInstance().chromecastDevice().getMediaControlChannel();
        this._MediaControlChannel.setNotificationListener(new ChromecastDevice.MediaControlChannel.StreamNotificationListener() { // from class: mobi.beyondpod.services.player.impl.ChromecastPlayer.1
            @Override // mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.StreamNotificationListener
            public void onSessionInterrupted(int i, int i2) {
                ChromecastPlayer chromecastPlayer = ChromecastPlayer.this;
                int[] iArr = new int[3];
                iArr[0] = 100;
                iArr[1] = 101010;
                iArr[2] = i == 3 ? 200 : 100;
                chromecastPlayer.postEvent(iArr);
            }

            @Override // mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.StreamNotificationListener
            public void onLoadFailed() {
                ChromecastPlayer.this.postEvent(100);
            }

            @Override // mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.StreamNotificationListener
            public void onLoadCompleted() {
                ChromecastPlayer.this.postEvent(3, 100);
                ChromecastPlayer.this.postEvent(1);
            }

            @Override // mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.StreamNotificationListener
            public void onSeekCompleted() {
                ChromecastPlayer.this.postEvent(4);
            }

            @Override // mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.StreamNotificationListener
            public void onSeekFailed() {
                ChromecastPlayer.this.postEvent(100);
            }
        });
        this._MediaFeedbackChannel = BeyondPodApplication.getInstance().chromecastDevice().getMediaFeedbackChannel();
        this._MediaFeedbackChannel.setNotificationListener(new ChromecastDevice.MediaFeedbackChannel.FeedbackNotificationListener() { // from class: mobi.beyondpod.services.player.impl.ChromecastPlayer.2
            @Override // mobi.beyondpod.services.player.impl.ChromecastDevice.MediaFeedbackChannel.FeedbackNotificationListener
            public void onPlaybackComplete(String str) {
                if (str.equals(ChromecastPlayer.this._DataSource)) {
                    CoreHelper.writeTraceEntry(ChromecastPlayer.TAG, "Detected 'playback complete' event!");
                    ChromecastPlayer.this.pause();
                    ChromecastPlayer.this.postEvent(2);
                } else {
                    CoreHelper.writeTraceEntry(ChromecastPlayer.TAG, "Detected 'playback complete' but not for our DataSource! DataSource: " + ChromecastPlayer.this._DataSource + ", event contentId: " + str);
                }
            }

            @Override // mobi.beyondpod.services.player.impl.ChromecastDevice.MediaFeedbackChannel.FeedbackNotificationListener
            public void onVideoFocusLost() {
                CoreHelper.writeTraceEntry(ChromecastPlayer.TAG, "Video input was switched away! Is playing: " + ChromecastPlayer.this.isPlaying());
                if (ChromecastPlayer.this.isPlaying()) {
                    CoreHelper.writeTraceEntry(ChromecastPlayer.TAG, "Pausing Chromecast playback...");
                    Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
                    intent.setAction(MediaPlaybackService.SERVICECMD);
                    intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDPAUSE);
                    if (CoreHelper.isOreoCompatible()) {
                        ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
                    } else {
                        BeyondPodApplication.getInstance().startService(intent);
                    }
                }
            }

            @Override // mobi.beyondpod.services.player.impl.ChromecastDevice.MediaFeedbackChannel.FeedbackNotificationListener
            public void onVideoFocusGain() {
                CoreHelper.writeTraceEntry(ChromecastPlayer.TAG, "Got 'videoFocusGain' event!");
            }

            @Override // mobi.beyondpod.services.player.impl.ChromecastDevice.MediaFeedbackChannel.FeedbackNotificationListener
            public void onPlaybackError() {
                ChromecastPlayer.this.postEvent(100);
            }
        });
    }

    public void setDataSource(IMediaPlayerImpl.TrackMetadata trackMetadata) throws IllegalArgumentException, SecurityException, IllegalStateException {
        this._DataSource = trackMetadata.TrackURL;
        this._LastKnownPosition = 0;
        MediaMetadata mediaMetadata = new MediaMetadata();
        mediaMetadata.addImage(new WebImage(Uri.parse(trackMetadata.TrackImageUrl)));
        mediaMetadata.putString(MediaMetadata.KEY_TITLE, trackMetadata.TrackName);
        mediaMetadata.putString(MediaMetadata.KEY_SUBTITLE, DateTime.formatDateTimeToday(trackMetadata.TrackDate));
        this._MediaInfo = new MediaInfo.Builder(this._DataSource).setStreamType(1).setContentType(trackMetadata.MimeType).setMetadata(mediaMetadata).build();
    }

    public void prepare() throws IllegalStateException {
        throw new IllegalStateException("Not supported!");
    }

    public void prepareAsync() {
        CoreHelper.writeTraceEntryInDebug(TAG, "Chromecast Prepare Started for: " + this._DataSource);
        if (this._MediaControlChannel == null) {
            postEvent(100, MSG_ERROR_CHROMECAST, 100);
            return;
        }
        try {
            MediaInfo mediaInfo = this._MediaControlChannel.getMediaInfo();
            if (this._MediaControlChannel.hasRemotePlayerLoadedMedia() && mediaInfo != null && mediaInfo.getContentId() != null && mediaInfo.getContentId().equals(this._DataSource)) {
                CoreHelper.writeTraceEntryInDebug(TAG, "Found that media is already loaded! Nothing to do.");
                postEvent(1);
            } else {
                this._MediaControlChannel.load(this._MediaInfo);
                postEvent(3, 40);
            }
        } catch (Exception e) {
            postEvent(100);
            CoreHelper.writeTraceErrorInDebug(TAG, "Unable to open remote media!" + e.getMessage());
        }
    }

    public void start() throws IllegalStateException {
        try {
            if (this._MediaControlChannel != null) {
                this._IsPlaying = true;
                this._MediaControlChannel.play();
                stayAwake(true);
            }
        } catch (Exception e) {
            postEvent(100);
            CoreHelper.writeTraceErrorInDebug(TAG, "=== Unable to start remote media!" + e.getMessage());
        }
    }

    public void stop() throws IllegalStateException {
        try {
            if (this._MediaControlChannel != null) {
                this._MediaControlChannel.pause();
            }
        } catch (Exception e) {
            CoreHelper.writeTraceErrorInDebug(TAG, "=== Unable to stop remote media!" + e.getMessage());
        }
        stayAwake(false);
        this._IsPlaying = false;
    }

    public void pause() throws IllegalStateException {
        stop();
    }

    public void setWakeMode(Context context, int i) {
        boolean z;
        if (this.mWakeLock != null) {
            if (this.mWakeLock.isHeld()) {
                z = true;
                this.mWakeLock.release();
            } else {
                z = false;
            }
            this.mWakeLock = null;
        } else {
            z = false;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager != null) {
            this.mWakeLock = powerManager.newWakeLock(i | 536870912, ChromecastPlayer.class.getName());
            this.mWakeLock.setReferenceCounted(false);
            if (z) {
                this.mWakeLock.acquire();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stayAwake(boolean z) {
        if (this.mWakeLock != null) {
            if (z && !this.mWakeLock.isHeld()) {
                this.mWakeLock.acquire();
            } else {
                if (z || !this.mWakeLock.isHeld()) {
                    return;
                }
                this.mWakeLock.release();
            }
        }
    }

    public boolean isPlaying() {
        return this._MediaControlChannel != null && this._IsPlaying;
    }

    public void seekTo(int i) throws IllegalStateException {
        if (this._MediaControlChannel != null) {
            if (Math.abs(getCurrentPosition() - i) < 2000) {
                postEvent(4);
                return;
            }
            try {
                this._MediaControlChannel.seek(this._MediaInfo, i);
            } catch (Exception e) {
                postEvent(100);
                CoreHelper.writeTraceErrorInDebug(TAG, "=== Unable to seek remote media!" + e.getMessage());
            }
        }
    }

    public int getCurrentPosition() {
        try {
            if (this._MediaControlChannel == null || this._MediaControlChannel.getMediaStatus() == null) {
                return 0;
            }
            if (this._MediaControlChannel.getMediaStatus().getPlayerState() == 1) {
                return this._LastKnownPosition;
            }
            this._LastKnownPosition = (int) this._MediaControlChannel.getApproximateStreamPosition();
            return this._LastKnownPosition;
        } catch (Exception e) {
            CoreHelper.writeTraceErrorInDebug(TAG, "=== Unable to getPosition from remote media!" + e.getMessage());
            return 0;
        }
    }

    public int getDuration() {
        try {
            if (this._MediaControlChannel != null) {
                return (int) this._MediaControlChannel.getStreamDuration();
            }
            return 0;
        } catch (Exception e) {
            CoreHelper.writeTraceErrorInDebug(TAG, "=== Unable to getDuration from remote media!" + e.getMessage());
            return 0;
        }
    }

    public void release() {
        resetInternal();
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnPreparedListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnVideoSizeChangedListener = null;
        if (this._MediaControlChannel != null) {
            this._MediaControlChannel.setNotificationListener(null);
        }
        this._MediaControlChannel = null;
        if (this._MediaFeedbackChannel != null) {
            this._MediaFeedbackChannel.setNotificationListener(null);
        }
        this._MediaFeedbackChannel = null;
        CoreHelper.writeTraceEntry(TAG, "Chromecast Player Released!");
    }

    public void reset() {
        resetInternal();
        CoreHelper.writeTraceEntry(TAG, "Chromecast Player Reset!");
    }

    private void resetInternal() {
        stayAwake(false);
        this.mEventHandler.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postEvent(int... iArr) {
        if (this.mEventHandler != null) {
            Message obtainMessage = this.mEventHandler.obtainMessage(iArr[0]);
            if (iArr.length > 1) {
                obtainMessage.arg1 = iArr[1];
            }
            if (iArr.length > 2) {
                obtainMessage.arg2 = iArr[2];
            }
            this.mEventHandler.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class EventHandler extends Handler {
        private ChromecastPlayer mMediaPlayer;

        public EventHandler(ChromecastPlayer chromecastPlayer, Looper looper) {
            super(looper);
            this.mMediaPlayer = chromecastPlayer;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 100) {
                CoreHelper.writeTraceErrorInDebug(ChromecastPlayer.TAG, "Error (" + message.arg1 + "," + message.arg2 + ")");
                ChromecastPlayer.this._IsPlaying = false;
                boolean onError = ChromecastPlayer.this.mOnErrorListener != null ? ChromecastPlayer.this.mOnErrorListener.onError(this.mMediaPlayer, message.arg1, message.arg2) : false;
                if (ChromecastPlayer.this.mOnCompletionListener != null && !onError) {
                    ChromecastPlayer.this.mOnCompletionListener.onCompletion(this.mMediaPlayer);
                }
                ChromecastPlayer.this.stayAwake(false);
                return;
            }
            if (i != 200) {
                switch (i) {
                    case 0:
                        return;
                    case 1:
                        if (ChromecastPlayer.this.mOnPreparedListener != null) {
                            ChromecastPlayer.this.mOnPreparedListener.onPrepared(this.mMediaPlayer);
                            return;
                        }
                        return;
                    case 2:
                        if (ChromecastPlayer.this.mOnCompletionListener != null) {
                            ChromecastPlayer.this.mOnCompletionListener.onCompletion(this.mMediaPlayer);
                        }
                        ChromecastPlayer.this.stayAwake(false);
                        return;
                    case 3:
                        if (ChromecastPlayer.this.mOnBufferingUpdateListener != null) {
                            ChromecastPlayer.this.mOnBufferingUpdateListener.onBufferingUpdate(this.mMediaPlayer, message.arg1);
                            return;
                        }
                        return;
                    case 4:
                        if (ChromecastPlayer.this.mOnSeekCompleteListener != null) {
                            ChromecastPlayer.this.mOnSeekCompleteListener.onSeekComplete(this.mMediaPlayer);
                            return;
                        }
                        return;
                    case 5:
                        if (ChromecastPlayer.this.mOnVideoSizeChangedListener != null) {
                            ChromecastPlayer.this.mOnVideoSizeChangedListener.onVideoSizeChanged(this.mMediaPlayer, message.arg1, message.arg2);
                            return;
                        }
                        return;
                    default:
                        CoreHelper.writeTraceEntry(ChromecastPlayer.TAG, "Unknown message type " + message.what);
                        return;
                }
            }
            if (message.arg1 != 700) {
                CoreHelper.writeTraceEntry(ChromecastPlayer.TAG, "Info (" + message.arg1 + "," + message.arg2 + ")");
            }
            if (ChromecastPlayer.this.mOnInfoListener != null) {
                ChromecastPlayer.this.mOnInfoListener.onInfo(this.mMediaPlayer, message.arg1, message.arg2);
            }
        }
    }

    public void setOnPreparedListener(OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnBufferingUpdateListener(OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferingUpdateListener = onBufferingUpdateListener;
    }

    public void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnVideoSizeChangedListener(OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }
}
