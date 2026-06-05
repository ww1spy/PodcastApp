package com.aocate.media;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public class AndroidMediaPlayer extends MediaPlayerImpl {
    private static final String AMP_TAG = "AocateAndroidMediaPlayer";
    android.media.MediaPlayer mp;
    private MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener;
    private MediaPlayer.OnCompletionListener onCompletionListener;
    private MediaPlayer.OnErrorListener onErrorListener;
    private MediaPlayer.OnInfoListener onInfoListener;
    private MediaPlayer.OnPreparedListener onPreparedListener;
    private MediaPlayer.OnSeekCompleteListener onSeekCompleteListener;

    @Override // com.aocate.media.MediaPlayerImpl
    public boolean canSetPitch() {
        return false;
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public boolean canSetSpeed() {
        return false;
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public float getCurrentPitchStepsAdjustment() {
        return 0.0f;
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public float getCurrentSpeedMultiplier() {
        return 1.0f;
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public float getMaxSpeedMultiplier() {
        return 1.0f;
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public float getMinSpeedMultiplier() {
        return 1.0f;
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setEnableSpeedAdjustment(boolean z) {
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setPitchStepsAdjustment(float f) {
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setPlaybackPitch(float f) {
    }

    public AndroidMediaPlayer(MediaPlayer mediaPlayer, Context context) {
        super(mediaPlayer, context);
        this.mp = null;
        this.onBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.aocate.media.AndroidMediaPlayer.1
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(android.media.MediaPlayer mediaPlayer2, int i) {
                if (AndroidMediaPlayer.this.owningMediaPlayer != null) {
                    AndroidMediaPlayer.this.owningMediaPlayer.lock.lock();
                    try {
                        if (AndroidMediaPlayer.this.owningMediaPlayer.onBufferingUpdateListener != null && AndroidMediaPlayer.this.owningMediaPlayer.mpi == AndroidMediaPlayer.this) {
                            AndroidMediaPlayer.this.owningMediaPlayer.onBufferingUpdateListener.onBufferingUpdate(AndroidMediaPlayer.this.owningMediaPlayer, i);
                        }
                    } finally {
                        AndroidMediaPlayer.this.owningMediaPlayer.lock.unlock();
                    }
                }
            }
        };
        this.onCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: com.aocate.media.AndroidMediaPlayer.2
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(android.media.MediaPlayer mediaPlayer2) {
                Log.d(AndroidMediaPlayer.AMP_TAG, "onCompletionListener being called");
                if (AndroidMediaPlayer.this.owningMediaPlayer != null) {
                    AndroidMediaPlayer.this.owningMediaPlayer.lock.lock();
                    try {
                        if (AndroidMediaPlayer.this.owningMediaPlayer.onCompletionListener != null) {
                            AndroidMediaPlayer.this.owningMediaPlayer.onCompletionListener.onCompletion(AndroidMediaPlayer.this.owningMediaPlayer);
                        }
                    } finally {
                        AndroidMediaPlayer.this.owningMediaPlayer.lock.unlock();
                    }
                }
            }
        };
        this.onErrorListener = new MediaPlayer.OnErrorListener() { // from class: com.aocate.media.AndroidMediaPlayer.3
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(android.media.MediaPlayer mediaPlayer2, int i, int i2) {
                if (AndroidMediaPlayer.this.owningMediaPlayer == null) {
                    return false;
                }
                AndroidMediaPlayer.this.owningMediaPlayer.lock.lock();
                try {
                    if (AndroidMediaPlayer.this.owningMediaPlayer.onErrorListener != null) {
                        return AndroidMediaPlayer.this.owningMediaPlayer.onErrorListener.onError(AndroidMediaPlayer.this.owningMediaPlayer, i, i2);
                    }
                    return false;
                } finally {
                    AndroidMediaPlayer.this.owningMediaPlayer.lock.unlock();
                }
            }
        };
        this.onInfoListener = new MediaPlayer.OnInfoListener() { // from class: com.aocate.media.AndroidMediaPlayer.4
            @Override // android.media.MediaPlayer.OnInfoListener
            public boolean onInfo(android.media.MediaPlayer mediaPlayer2, int i, int i2) {
                if (AndroidMediaPlayer.this.owningMediaPlayer == null) {
                    return false;
                }
                AndroidMediaPlayer.this.owningMediaPlayer.lock.lock();
                try {
                    if (AndroidMediaPlayer.this.owningMediaPlayer.onInfoListener == null || AndroidMediaPlayer.this.owningMediaPlayer.mpi != AndroidMediaPlayer.this) {
                        return false;
                    }
                    return AndroidMediaPlayer.this.owningMediaPlayer.onInfoListener.onInfo(AndroidMediaPlayer.this.owningMediaPlayer, i, i2);
                } finally {
                    AndroidMediaPlayer.this.owningMediaPlayer.lock.unlock();
                }
            }
        };
        this.onPreparedListener = new MediaPlayer.OnPreparedListener() { // from class: com.aocate.media.AndroidMediaPlayer.5
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(android.media.MediaPlayer mediaPlayer2) {
                Log.d(AndroidMediaPlayer.AMP_TAG, "Calling onPreparedListener.onPrepared()");
                if (AndroidMediaPlayer.this.owningMediaPlayer != null) {
                    AndroidMediaPlayer.this.lockMuteOnPreparedCount.lock();
                    try {
                        if (AndroidMediaPlayer.this.muteOnPreparedCount > 0) {
                            AndroidMediaPlayer androidMediaPlayer = AndroidMediaPlayer.this;
                            androidMediaPlayer.muteOnPreparedCount--;
                        } else {
                            AndroidMediaPlayer.this.muteOnPreparedCount = 0;
                            if (AndroidMediaPlayer.this.owningMediaPlayer.onPreparedListener != null) {
                                Log.d(AndroidMediaPlayer.AMP_TAG, "Invoking AndroidMediaPlayer.this.owningMediaPlayer.onPreparedListener.onPrepared");
                                AndroidMediaPlayer.this.owningMediaPlayer.onPreparedListener.onPrepared(AndroidMediaPlayer.this.owningMediaPlayer);
                            }
                        }
                        AndroidMediaPlayer.this.lockMuteOnPreparedCount.unlock();
                        if (AndroidMediaPlayer.this.owningMediaPlayer.mpi != AndroidMediaPlayer.this) {
                            Log.d(AndroidMediaPlayer.AMP_TAG, "owningMediaPlayer has changed implementation");
                        }
                    } catch (Throwable th) {
                        AndroidMediaPlayer.this.lockMuteOnPreparedCount.unlock();
                        throw th;
                    }
                }
            }
        };
        this.onSeekCompleteListener = new MediaPlayer.OnSeekCompleteListener() { // from class: com.aocate.media.AndroidMediaPlayer.6
            @Override // android.media.MediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(android.media.MediaPlayer mediaPlayer2) {
                if (AndroidMediaPlayer.this.owningMediaPlayer != null) {
                    AndroidMediaPlayer.this.owningMediaPlayer.lock.lock();
                    try {
                        AndroidMediaPlayer.this.lockMuteOnSeekCount.lock();
                        try {
                            if (AndroidMediaPlayer.this.muteOnSeekCount > 0) {
                                AndroidMediaPlayer androidMediaPlayer = AndroidMediaPlayer.this;
                                androidMediaPlayer.muteOnSeekCount--;
                            } else {
                                AndroidMediaPlayer.this.muteOnSeekCount = 0;
                                if (AndroidMediaPlayer.this.owningMediaPlayer.onSeekCompleteListener != null) {
                                    AndroidMediaPlayer.this.owningMediaPlayer.onSeekCompleteListener.onSeekComplete(AndroidMediaPlayer.this.owningMediaPlayer);
                                }
                            }
                        } finally {
                            AndroidMediaPlayer.this.lockMuteOnSeekCount.unlock();
                        }
                    } finally {
                        AndroidMediaPlayer.this.owningMediaPlayer.lock.unlock();
                    }
                }
            }
        };
        this.mp = new android.media.MediaPlayer();
        if (this.mp == null) {
            throw new IllegalStateException("Did not instantiate android.media.MediaPlayer successfully");
        }
        this.mp.setOnBufferingUpdateListener(this.onBufferingUpdateListener);
        this.mp.setOnCompletionListener(this.onCompletionListener);
        this.mp.setOnErrorListener(this.onErrorListener);
        this.mp.setOnInfoListener(this.onInfoListener);
        Log.d(AMP_TAG, " ++++++++++++++++++++++++++++++++ Setting prepared listener to this.onPreparedListener");
        this.mp.setOnPreparedListener(this.onPreparedListener);
        this.mp.setOnSeekCompleteListener(this.onSeekCompleteListener);
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public int getCurrentPosition() {
        this.owningMediaPlayer.lock.lock();
        try {
            return this.mp.getCurrentPosition();
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public int getDuration() {
        this.owningMediaPlayer.lock.lock();
        try {
            return this.mp.getDuration();
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public boolean isLooping() {
        this.owningMediaPlayer.lock.lock();
        try {
            return this.mp.isLooping();
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public boolean isPlaying() {
        this.owningMediaPlayer.lock.lock();
        try {
            return this.mp.isPlaying();
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void pause() {
        this.owningMediaPlayer.lock.lock();
        try {
            this.mp.pause();
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void prepare() throws IllegalStateException, IOException {
        this.owningMediaPlayer.lock.lock();
        Log.d(AMP_TAG, "prepare()");
        try {
            this.mp.prepare();
            Log.d(AMP_TAG, "Finish prepare()");
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void prepareAsync() {
        this.mp.prepareAsync();
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void release() {
        this.owningMediaPlayer.lock.lock();
        try {
            if (this.mp != null) {
                Log.d(AMP_TAG, "mp.release()");
                this.mp.release();
            }
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void reset() {
        this.owningMediaPlayer.lock.lock();
        try {
            this.mp.reset();
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void seekTo(int i) throws IllegalStateException {
        this.owningMediaPlayer.lock.lock();
        try {
            this.mp.setOnSeekCompleteListener(this.onSeekCompleteListener);
            this.mp.seekTo(i);
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setAudioStreamType(int i) {
        this.owningMediaPlayer.lock.lock();
        try {
            this.mp.setAudioStreamType(i);
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException {
        this.owningMediaPlayer.lock.lock();
        try {
            Log.d(AMP_TAG, "setDataSource(context, " + uri.toString() + ")");
            this.mp.setDataSource(context, uri);
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setDataSource(String str) throws IllegalArgumentException, IllegalStateException, IOException {
        this.owningMediaPlayer.lock.lock();
        try {
            Log.d(AMP_TAG, "setDataSource(" + str + ")");
            this.mp.setDataSource(str);
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setLooping(boolean z) {
        this.owningMediaPlayer.lock.lock();
        try {
            this.mp.setLooping(z);
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setPlaybackSpeed(float f) {
        Log.d(AMP_TAG, "setPlaybackSpeed(" + f + ")");
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setSpeedAdjustmentAlgorithm(int i) {
        Log.d(AMP_TAG, "setSpeedAdjustmentAlgorithm(" + i + ")");
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setVolume(float f, float f2) {
        this.owningMediaPlayer.lock.lock();
        try {
            this.mp.setVolume(f, f2);
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setWakeMode(Context context, int i) {
        this.owningMediaPlayer.lock.lock();
        if (i != 0) {
            try {
                this.mp.setWakeMode(context, i);
            } finally {
                this.owningMediaPlayer.lock.unlock();
            }
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void start() {
        this.owningMediaPlayer.lock.lock();
        try {
            this.mp.start();
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void stop() {
        this.owningMediaPlayer.lock.lock();
        try {
            this.mp.stop();
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }
}
