package mobi.beyondpod.services.player.impl;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.impl.ChromecastPlayer;
import mobi.beyondpod.services.player.impl.IMediaPlayerImpl;

/* loaded from: classes.dex */
public class MediaPlayerChromecast implements IMediaPlayerImpl {
    private static final String TAG = "MediaPlayerChromecast";
    ChromecastPlayer _MediaPlayer;

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
    public int playerType() {
        return 5;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException {
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

    public MediaPlayerChromecast(Context context) {
        CoreHelper.writeTraceEntry(TAG, "Created Chromecast MediaPlayer");
        this._MediaPlayer = new ChromecastPlayer(context);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int getCurrentPosition() {
        return this._MediaPlayer.getCurrentPosition();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int getDuration() {
        return this._MediaPlayer.getDuration();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean isPlaying() {
        return this._MediaPlayer.isPlaying();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean isSpeedAlterationLibraryInstalled() {
        return CoreHelper.apiLevel() > 15;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void pause() {
        this._MediaPlayer.pause();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void prepare() throws IllegalStateException, IOException {
        this._MediaPlayer.prepare();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void prepareAsync() {
        this._MediaPlayer.prepareAsync();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void release() {
        this._MediaPlayer.release();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void reset() {
        this._MediaPlayer.reset();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void seekTo(int i) throws IllegalStateException {
        this._MediaPlayer.seekTo(i);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setAudioStreamType(int i) {
        this._MediaPlayer.setAudioStreamType(i);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(String str) throws IllegalArgumentException, IllegalStateException, IOException {
        throw new IllegalArgumentException("Use setDataSource(TrackMetadata)");
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(IMediaPlayerImpl.TrackMetadata trackMetadata) throws IllegalArgumentException, IllegalStateException, IOException {
        this._MediaPlayer.setDataSource(trackMetadata);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setVolume(float f, float f2) {
        this._MediaPlayer.setVolume(f, f2);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setWakeMode(Context context, int i) {
        this._MediaPlayer.setWakeMode(context, i);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnBufferingUpdateListener(final IMediaPlayerImpl.OnBufferingUpdateListener onBufferingUpdateListener) {
        if (onBufferingUpdateListener != null) {
            this._MediaPlayer.setOnBufferingUpdateListener(new ChromecastPlayer.OnBufferingUpdateListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerChromecast.1
                @Override // mobi.beyondpod.services.player.impl.ChromecastPlayer.OnBufferingUpdateListener
                public void onBufferingUpdate(ChromecastPlayer chromecastPlayer, int i) {
                    onBufferingUpdateListener.onBufferingUpdate(MediaPlayerChromecast.this, i);
                }
            });
        } else {
            this._MediaPlayer.setOnBufferingUpdateListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnCompletionListener(final IMediaPlayerImpl.OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            this._MediaPlayer.setOnCompletionListener(new ChromecastPlayer.OnCompletionListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerChromecast.2
                @Override // mobi.beyondpod.services.player.impl.ChromecastPlayer.OnCompletionListener
                public void onCompletion(ChromecastPlayer chromecastPlayer) {
                    onCompletionListener.onCompletion(MediaPlayerChromecast.this);
                }
            });
        } else {
            this._MediaPlayer.setOnCompletionListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnErrorListener(final IMediaPlayerImpl.OnErrorListener onErrorListener) {
        if (onErrorListener != null) {
            this._MediaPlayer.setOnErrorListener(new ChromecastPlayer.OnErrorListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerChromecast.3
                @Override // mobi.beyondpod.services.player.impl.ChromecastPlayer.OnErrorListener
                public boolean onError(ChromecastPlayer chromecastPlayer, int i, int i2) {
                    return onErrorListener.onError(MediaPlayerChromecast.this, i, i2);
                }
            });
        } else {
            this._MediaPlayer.setOnErrorListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnInfoListener(final IMediaPlayerImpl.OnInfoListener onInfoListener) {
        if (onInfoListener != null) {
            this._MediaPlayer.setOnInfoListener(new ChromecastPlayer.OnInfoListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerChromecast.4
                @Override // mobi.beyondpod.services.player.impl.ChromecastPlayer.OnInfoListener
                public boolean onInfo(ChromecastPlayer chromecastPlayer, int i, int i2) {
                    return onInfoListener.onInfo(MediaPlayerChromecast.this, i, i2);
                }
            });
        } else {
            this._MediaPlayer.setOnInfoListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnPreparedListener(final IMediaPlayerImpl.OnPreparedListener onPreparedListener) {
        if (onPreparedListener != null) {
            this._MediaPlayer.setOnPreparedListener(new ChromecastPlayer.OnPreparedListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerChromecast.5
                @Override // mobi.beyondpod.services.player.impl.ChromecastPlayer.OnPreparedListener
                public void onPrepared(ChromecastPlayer chromecastPlayer) {
                    onPreparedListener.onPrepared(MediaPlayerChromecast.this);
                }
            });
        } else {
            this._MediaPlayer.setOnPreparedListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnSeekCompleteListener(final IMediaPlayerImpl.OnSeekCompleteListener onSeekCompleteListener) {
        if (onSeekCompleteListener != null) {
            this._MediaPlayer.setOnSeekCompleteListener(new ChromecastPlayer.OnSeekCompleteListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerChromecast.6
                @Override // mobi.beyondpod.services.player.impl.ChromecastPlayer.OnSeekCompleteListener
                public void onSeekComplete(ChromecastPlayer chromecastPlayer) {
                    onSeekCompleteListener.onSeekComplete(MediaPlayerChromecast.this);
                }
            });
        } else {
            this._MediaPlayer.setOnSeekCompleteListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void start() {
        this._MediaPlayer.start();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void stop() {
        this._MediaPlayer.stop();
    }
}
