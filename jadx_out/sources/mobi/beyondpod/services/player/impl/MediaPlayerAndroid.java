package mobi.beyondpod.services.player.impl;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.net.Uri;
import java.io.IOException;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.impl.IMediaPlayerImpl;

/* loaded from: classes.dex */
public class MediaPlayerAndroid implements IMediaPlayerImpl {
    private static final String TAG = "MediaPlayerAndroid";
    private MediaPlayer _MediaPlayer;
    private volatile boolean _isReleased = false;
    private final Object _syncLock = new Object();

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean canSetPitch() {
        return false;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean canSetSpeed() {
        return false;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public float getCurrentSpeedMultiplier() {
        return 1.0f;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean isSpeedAlterationLibraryInstalled() {
        return false;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int playerType() {
        return 0;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(IMediaPlayerImpl.TrackMetadata trackMetadata) throws IllegalArgumentException, IllegalStateException, IOException {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setPlaybackPitch(float f) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setPlaybackSpeed(float f) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setVolumeBoost(float f) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean supportsFileFormatFor(String str, String str2) {
        return true;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean supportsSpeedAlteration() {
        return false;
    }

    public MediaPlayerAndroid(Context context) {
        CoreHelper.writeTraceEntry(TAG, "Created Android MediaPlayer");
        this._MediaPlayer = new MediaPlayer();
    }

    public synchronized boolean isReleased() {
        return this._isReleased;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int getCurrentPosition() {
        try {
            if (isReleased()) {
                return 0;
            }
            return this._MediaPlayer.getCurrentPosition();
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int getDuration() {
        return this._MediaPlayer.getDuration();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean isPlaying() {
        try {
            return this._MediaPlayer.isPlaying();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void pause() {
        if (isReleased()) {
            return;
        }
        this._MediaPlayer.pause();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void prepare() throws IllegalStateException, IOException {
        this._MediaPlayer.prepare();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void prepareAsync() {
        if (isReleased()) {
            CoreHelper.writeTraceEntry(TAG, "Cannot prepareAsync. Player has been released.");
        } else {
            this._MediaPlayer.prepareAsync();
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void release() {
        if (isReleased()) {
            return;
        }
        this._MediaPlayer.release();
        synchronized (this._syncLock) {
            this._isReleased = true;
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void reset() {
        if (isReleased()) {
            return;
        }
        this._MediaPlayer.reset();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void seekTo(int i) throws IllegalStateException {
        this._MediaPlayer.seekTo(i);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    @TargetApi(26)
    public void setAudioStreamType(int i) {
        if (!CoreHelper.isOreoCompatible()) {
            this._MediaPlayer.setAudioStreamType(i);
        } else {
            this._MediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(i).build());
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException {
        this._MediaPlayer.setDataSource(context, uri);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(String str) throws IllegalArgumentException, IllegalStateException, IOException {
        this._MediaPlayer.setDataSource(str);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setVolume(float f, float f2) {
        if (!isReleased()) {
            CoreHelper.writeTraceEntry(TAG, "Cannot setVolume. Player is released!");
        } else {
            this._MediaPlayer.setVolume(f, f2);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setWakeMode(Context context, int i) {
        this._MediaPlayer.setWakeMode(context, i);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnBufferingUpdateListener(final IMediaPlayerImpl.OnBufferingUpdateListener onBufferingUpdateListener) {
        if (onBufferingUpdateListener != null) {
            this._MediaPlayer.setOnBufferingUpdateListener(new MediaPlayer.OnBufferingUpdateListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerAndroid.1
                @Override // android.media.MediaPlayer.OnBufferingUpdateListener
                public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                    onBufferingUpdateListener.onBufferingUpdate(MediaPlayerAndroid.this, i);
                }
            });
        } else {
            this._MediaPlayer.setOnBufferingUpdateListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnCompletionListener(final IMediaPlayerImpl.OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            this._MediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerAndroid.2
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    onCompletionListener.onCompletion(MediaPlayerAndroid.this);
                }
            });
        } else {
            this._MediaPlayer.setOnCompletionListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnErrorListener(final IMediaPlayerImpl.OnErrorListener onErrorListener) {
        if (onErrorListener != null) {
            this._MediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerAndroid.3
                @Override // android.media.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    return onErrorListener.onError(MediaPlayerAndroid.this, i, i2);
                }
            });
        } else {
            this._MediaPlayer.setOnErrorListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnInfoListener(final IMediaPlayerImpl.OnInfoListener onInfoListener) {
        if (onInfoListener != null) {
            this._MediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerAndroid.4
                @Override // android.media.MediaPlayer.OnInfoListener
                public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                    return onInfoListener.onInfo(MediaPlayerAndroid.this, i, i2);
                }
            });
        } else {
            this._MediaPlayer.setOnInfoListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnPreparedListener(final IMediaPlayerImpl.OnPreparedListener onPreparedListener) {
        if (onPreparedListener != null) {
            this._MediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerAndroid.5
                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    onPreparedListener.onPrepared(MediaPlayerAndroid.this);
                }
            });
        } else {
            this._MediaPlayer.setOnPreparedListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnSeekCompleteListener(final IMediaPlayerImpl.OnSeekCompleteListener onSeekCompleteListener) {
        if (onSeekCompleteListener != null) {
            this._MediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerAndroid.6
                @Override // android.media.MediaPlayer.OnSeekCompleteListener
                public void onSeekComplete(MediaPlayer mediaPlayer) {
                    onSeekCompleteListener.onSeekComplete(MediaPlayerAndroid.this);
                }
            });
        } else {
            this._MediaPlayer.setOnSeekCompleteListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void start() {
        if (isReleased()) {
            throw new IllegalStateException("Cannot start player since it has been released.");
        }
        this._MediaPlayer.start();
        if (CoreHelper.isCGBuild()) {
            this._MediaPlayer.seekTo(this._MediaPlayer.getCurrentPosition());
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void stop() {
        if (isReleased()) {
            return;
        }
        this._MediaPlayer.stop();
    }
}
