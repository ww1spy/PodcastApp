package mobi.beyondpod.services.player.impl;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.impl.IMediaPlayerImpl;
import mobi.beyondpod.services.player.impl.SonicPlayer;

/* loaded from: classes.dex */
public class MediaPlayerSonic implements IMediaPlayerImpl {
    private static final String TAG = "MediaPlayerSonic";
    SonicPlayer _MediaPlayer;

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
        return 3;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(IMediaPlayerImpl.TrackMetadata trackMetadata) throws IllegalArgumentException, IllegalStateException, IOException {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean supportsFileFormatFor(String str, String str2) {
        return true;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean supportsSpeedAlteration() {
        return true;
    }

    public MediaPlayerSonic(Context context) {
        CoreHelper.writeTraceEntry(TAG, "Created Sonic MediaPlayer");
        this._MediaPlayer = new SonicPlayer();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int getCurrentPosition() {
        return this._MediaPlayer.getCurrentPosition();
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public float getCurrentSpeedMultiplier() {
        return this._MediaPlayer.getPlaybackSpeed();
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
        this._MediaPlayer.setDataSource(str);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setPlaybackPitch(float f) {
        this._MediaPlayer.setPitch(f);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setPlaybackSpeed(float f) {
        this._MediaPlayer.setPlaybackSpeed(f);
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
            this._MediaPlayer.setOnBufferingUpdateListener(new SonicPlayer.OnBufferingUpdateListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerSonic.1
                @Override // mobi.beyondpod.services.player.impl.SonicPlayer.OnBufferingUpdateListener
                public void onBufferingUpdate(SonicPlayer sonicPlayer, int i) {
                    onBufferingUpdateListener.onBufferingUpdate(MediaPlayerSonic.this, i);
                }
            });
        } else {
            this._MediaPlayer.setOnBufferingUpdateListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnCompletionListener(final IMediaPlayerImpl.OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            this._MediaPlayer.setOnCompletionListener(new SonicPlayer.OnCompletionListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerSonic.2
                @Override // mobi.beyondpod.services.player.impl.SonicPlayer.OnCompletionListener
                public void onCompletion(SonicPlayer sonicPlayer) {
                    onCompletionListener.onCompletion(MediaPlayerSonic.this);
                }
            });
        } else {
            this._MediaPlayer.setOnCompletionListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnErrorListener(final IMediaPlayerImpl.OnErrorListener onErrorListener) {
        if (onErrorListener != null) {
            this._MediaPlayer.setOnErrorListener(new SonicPlayer.OnErrorListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerSonic.3
                @Override // mobi.beyondpod.services.player.impl.SonicPlayer.OnErrorListener
                public boolean onError(SonicPlayer sonicPlayer, int i, int i2) {
                    return onErrorListener.onError(MediaPlayerSonic.this, i, i2);
                }
            });
        } else {
            this._MediaPlayer.setOnErrorListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnInfoListener(final IMediaPlayerImpl.OnInfoListener onInfoListener) {
        if (onInfoListener != null) {
            this._MediaPlayer.setOnInfoListener(new SonicPlayer.OnInfoListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerSonic.4
                @Override // mobi.beyondpod.services.player.impl.SonicPlayer.OnInfoListener
                public boolean onInfo(SonicPlayer sonicPlayer, int i, int i2) {
                    return onInfoListener.onInfo(MediaPlayerSonic.this, i, i2);
                }
            });
        } else {
            this._MediaPlayer.setOnInfoListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnPreparedListener(final IMediaPlayerImpl.OnPreparedListener onPreparedListener) {
        if (onPreparedListener != null) {
            this._MediaPlayer.setOnPreparedListener(new SonicPlayer.OnPreparedListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerSonic.5
                @Override // mobi.beyondpod.services.player.impl.SonicPlayer.OnPreparedListener
                public void onPrepared(SonicPlayer sonicPlayer) {
                    onPreparedListener.onPrepared(MediaPlayerSonic.this);
                }
            });
        } else {
            this._MediaPlayer.setOnPreparedListener(null);
        }
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnSeekCompleteListener(final IMediaPlayerImpl.OnSeekCompleteListener onSeekCompleteListener) {
        if (onSeekCompleteListener != null) {
            this._MediaPlayer.setOnSeekCompleteListener(new SonicPlayer.OnSeekCompleteListener() { // from class: mobi.beyondpod.services.player.impl.MediaPlayerSonic.6
                @Override // mobi.beyondpod.services.player.impl.SonicPlayer.OnSeekCompleteListener
                public void onSeekComplete(SonicPlayer sonicPlayer) {
                    onSeekCompleteListener.onSeekComplete(MediaPlayerSonic.this);
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

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setVolumeBoost(float f) {
        this._MediaPlayer.setVolumeBoost(f);
    }
}
