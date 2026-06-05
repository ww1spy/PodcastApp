package mobi.beyondpod.services.player.impl;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.aocate.media.MediaPlayer;
import java.io.IOException;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.impl.IMediaPlayerImpl;

/* loaded from: classes.dex */
public class MediaPlayerOSPlay implements IMediaPlayerImpl {
    private static final int DELAY_WARNING = 1500;
    private static final String TAG = "MediaPlayerOSPlay";
    private long _LastDurationCheck;
    private int _LastSeekPos;
    private MediaPlayer _MediaPlayer;
    private float _LastMultiplier = 1.0f;
    private int _LastPosition = 0;
    private int _LastDuration = -1;
    private boolean _isReleased = false;
    private boolean _IsPlaying = false;
    private final Object _syncLock = new Object();
    private PrestoWorker _Worker = new PrestoWorker();
    private Runnable _PauseRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MediaPlayerOSPlay.this.isReleased()) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Cannot pause since OSPlay is released!");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                MediaPlayerOSPlay.this._MediaPlayer.pause();
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 > 1500) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Unusual delay executing Pause() :" + currentTimeMillis2 + " ms.");
                }
            } catch (Exception e) {
                CoreHelper.writeLogEntryInProduction(MediaPlayerOSPlay.TAG, "OSPlay pause failed! reason: " + e.getMessage());
            }
        }
    };
    private Runnable _GetCurrentPositionRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.2
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MediaPlayerOSPlay.this.isReleased()) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Cannot get current position since OSPlay is released.");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                MediaPlayerOSPlay.this._LastPosition = MediaPlayerOSPlay.this._MediaPlayer.getCurrentPosition();
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 > 1500) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Unusual delay executing getCurrentPosition() :" + currentTimeMillis2 + " ms.");
                }
            } catch (Exception e) {
                CoreHelper.logException(MediaPlayerOSPlay.TAG, "OSPlay getCurrentPosition failed", e);
            }
        }
    };
    private Runnable _GetDurationRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MediaPlayerOSPlay.this.isReleased()) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Cannot get duration since OSPlay is released!");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                MediaPlayerOSPlay.this._LastDuration = MediaPlayerOSPlay.this._MediaPlayer.getDuration();
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 > 1500) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Unusual delay executing getDuration() :" + currentTimeMillis2 + " ms.");
                }
            } catch (Exception e) {
                CoreHelper.logException(MediaPlayerOSPlay.TAG, "OSPlay getDuration failed", e);
            }
        }
    };
    private Runnable _SetPlaybackSpeedRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.4
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MediaPlayerOSPlay.this.isReleased()) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Cannot set playback speed since OSPlay is released!");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                MediaPlayerOSPlay.this._MediaPlayer.setPlaybackSpeed(MediaPlayerOSPlay.this._LastMultiplier);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 > 1500) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Unusual delay executing setPlaybackSpeed() :" + currentTimeMillis2 + " ms.");
                }
            } catch (Exception e) {
                CoreHelper.logException(MediaPlayerOSPlay.TAG, "OSPlay setPlaybackSpeed failed", e);
            }
        }
    };
    private Runnable _SeekRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.5
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MediaPlayerOSPlay.this.isReleased()) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "*** Cannot seek since OSPlay is released!");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                MediaPlayerOSPlay.this._MediaPlayer.seekTo(MediaPlayerOSPlay.this._LastSeekPos);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 > 1500) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Unusual delay executing seekTo() :" + currentTimeMillis2 + " ms.");
                }
            } catch (Exception e) {
                CoreHelper.logException(MediaPlayerOSPlay.TAG, "OSPlay setPlaybackSpeed failed", e);
            }
        }
    };
    private Runnable _IsPlayingRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.6
        @Override // java.lang.Runnable
        public void run() {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                if (MediaPlayerOSPlay.this.isReleased()) {
                    MediaPlayerOSPlay.this._IsPlaying = false;
                } else {
                    MediaPlayerOSPlay.this._IsPlaying = MediaPlayerOSPlay.this._MediaPlayer.isPlaying();
                }
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 > 1500) {
                    CoreHelper.writeTraceEntry(MediaPlayerOSPlay.TAG, "Unusual delay executing isPlaying() :" + currentTimeMillis2 + " ms.");
                }
            } catch (Exception e) {
                CoreHelper.logException(MediaPlayerOSPlay.TAG, "OSPlay IsPlaying failed", e);
            }
        }
    };

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean canSetPitch() {
        return true;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean canSetSpeed() {
        return true;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int playerType() {
        return 1;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(IMediaPlayerImpl.TrackMetadata trackMetadata) throws IllegalArgumentException, IllegalStateException, IOException {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setPlaybackPitch(float f) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setVolumeBoost(float f) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean supportsFileFormatFor(String str, String str2) {
        return true;
    }

    public Handler PrestoHandler() {
        return this._Worker.workerHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PrestoWorker extends Thread {
        private volatile boolean _IsReady;
        private Handler workerHandler;

        private PrestoWorker() {
            this._IsReady = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            this.workerHandler = new Handler();
            this._IsReady = true;
            Looper.loop();
        }
    }

    public MediaPlayerOSPlay(Context context) {
        CoreHelper.writeTraceEntry(TAG, "Created OSPlay MediaPlayer");
        this._MediaPlayer = new MediaPlayer(context);
        this._Worker.setName("Presto Worker Thread");
        this._Worker.setPriority(10);
        this._Worker.start();
        while (!this._Worker._IsReady) {
            try {
                Thread.sleep(10L);
            } catch (InterruptedException unused) {
            }
        }
    }

    public synchronized boolean isReleased() {
        return this._isReleased;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int getCurrentPosition() {
        PrestoHandler().removeCallbacks(this._GetCurrentPositionRunnable);
        PrestoHandler().post(this._GetCurrentPositionRunnable);
        return this._LastPosition;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int getDuration() {
        if (this._LastDuration < 0) {
            this._GetDurationRunnable.run();
        } else if (System.currentTimeMillis() - this._LastDurationCheck > 5000) {
            PrestoHandler().removeCallbacks(this._GetDurationRunnable);
            PrestoHandler().post(this._GetDurationRunnable);
        }
        return this._LastDuration;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean isPlaying() {
        PrestoHandler().removeCallbacks(this._IsPlayingRunnable);
        PrestoHandler().post(this._IsPlayingRunnable);
        return this._IsPlaying;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void start() {
        try {
            this._IsPlaying = true;
            this._MediaPlayer.start();
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay start failed", e);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void pause() {
        this._IsPlaying = false;
        PrestoHandler().removeCallbacks(this._PauseRunnable);
        PrestoHandler().post(this._PauseRunnable);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void stop() {
        try {
            if (isReleased()) {
                this._MediaPlayer.stop();
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay stop failed", e);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public float getCurrentSpeedMultiplier() {
        return this._LastMultiplier;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setPlaybackSpeed(float f) {
        this._LastMultiplier = f;
        PrestoHandler().removeCallbacks(this._SetPlaybackSpeedRunnable);
        PrestoHandler().post(this._SetPlaybackSpeedRunnable);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void seekTo(int i) throws IllegalStateException {
        this._LastSeekPos = i;
        PrestoHandler().removeCallbacks(this._SeekRunnable);
        PrestoHandler().post(this._SeekRunnable);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void reset() {
        try {
            if (isReleased()) {
                return;
            }
            this._MediaPlayer.reset();
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay reset failed", e);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void release() {
        if (this._isReleased) {
            return;
        }
        try {
            synchronized (this._syncLock) {
                this._MediaPlayer.release();
                this._isReleased = true;
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay release failed", e);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setAudioStreamType(int i) {
        try {
            this._MediaPlayer.setAudioStreamType(i);
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay setAudioStreamType failed", e);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setVolume(float f, float f2) {
        try {
            this._MediaPlayer.setVolume(f, f2);
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay setVolume failed", e);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setWakeMode(Context context, int i) {
        try {
            this._MediaPlayer.setWakeMode(context, i);
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay setWakeMode failed", e);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(String str) throws IllegalArgumentException, IllegalStateException, IOException {
        this._MediaPlayer.setDataSource(str);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException {
        this._MediaPlayer.setDataSource(context, uri);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void prepare() throws IllegalStateException, IOException {
        try {
            this._LastDurationCheck = -1L;
            this._MediaPlayer.prepare();
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay prepare failed", e);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void prepareAsync() {
        try {
            this._LastDurationCheck = -1L;
            this._MediaPlayer.prepareAsync();
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay prepareAsync failed", e);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnBufferingUpdateListener(final IMediaPlayerImpl.OnBufferingUpdateListener onBufferingUpdateListener) {
        if (onBufferingUpdateListener != null) {
            this._MediaPlayer.setOnBufferingUpdateListener(new MediaPlayer.OnBufferingUpdateListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.7
                @Override // com.aocate.media.MediaPlayer.OnBufferingUpdateListener
                public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                    onBufferingUpdateListener.onBufferingUpdate(MediaPlayerOSPlay.this, i);
                }
            });
        } else {
            this._MediaPlayer.setOnBufferingUpdateListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnCompletionListener(final IMediaPlayerImpl.OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            this._MediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.8
                @Override // com.aocate.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    onCompletionListener.onCompletion(MediaPlayerOSPlay.this);
                }
            });
        } else {
            this._MediaPlayer.setOnCompletionListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnErrorListener(final IMediaPlayerImpl.OnErrorListener onErrorListener) {
        if (onErrorListener != null) {
            this._MediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.9
                @Override // com.aocate.media.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    return onErrorListener.onError(MediaPlayerOSPlay.this, i, i2);
                }
            });
        } else {
            this._MediaPlayer.setOnErrorListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnInfoListener(final IMediaPlayerImpl.OnInfoListener onInfoListener) {
        if (onInfoListener != null) {
            this._MediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.10
                @Override // com.aocate.media.MediaPlayer.OnInfoListener
                public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                    return onInfoListener.onInfo(MediaPlayerOSPlay.this, i, i2);
                }
            });
        } else {
            this._MediaPlayer.setOnInfoListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnPreparedListener(final IMediaPlayerImpl.OnPreparedListener onPreparedListener) {
        if (onPreparedListener != null) {
            this._MediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.11
                @Override // com.aocate.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    onPreparedListener.onPrepared(MediaPlayerOSPlay.this);
                }
            });
        } else {
            this._MediaPlayer.setOnPreparedListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnSeekCompleteListener(final IMediaPlayerImpl.OnSeekCompleteListener onSeekCompleteListener) {
        if (onSeekCompleteListener != null) {
            this._MediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerOSPlay.12
                @Override // com.aocate.media.MediaPlayer.OnSeekCompleteListener
                public void onSeekComplete(MediaPlayer mediaPlayer) {
                    onSeekCompleteListener.onSeekComplete(MediaPlayerOSPlay.this);
                }
            });
        } else {
            this._MediaPlayer.setOnSeekCompleteListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean isSpeedAlterationLibraryInstalled() {
        try {
            return this._MediaPlayer.isPrestoLibraryInstalled();
        } catch (Exception e) {
            CoreHelper.logException(TAG, "OSPlay isPrestoLibraryInstalled failed", e);
            return false;
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean supportsSpeedAlteration() {
        return isSpeedAlterationLibraryInstalled();
    }
}
