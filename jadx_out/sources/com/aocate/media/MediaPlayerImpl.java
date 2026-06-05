package com.aocate.media;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public abstract class MediaPlayerImpl {
    private static final String MPI_TAG = "AocateMediaPlayerImpl";
    protected final Context mContext;
    protected final MediaPlayer owningMediaPlayer;
    protected int muteOnPreparedCount = 0;
    protected int muteOnSeekCount = 0;
    protected ReentrantLock lockMuteOnPreparedCount = new ReentrantLock();
    protected ReentrantLock lockMuteOnSeekCount = new ReentrantLock();

    public abstract boolean canSetPitch();

    public abstract boolean canSetSpeed();

    public abstract float getCurrentPitchStepsAdjustment();

    public abstract int getCurrentPosition();

    public abstract float getCurrentSpeedMultiplier();

    public abstract int getDuration();

    public abstract float getMaxSpeedMultiplier();

    public abstract float getMinSpeedMultiplier();

    public abstract boolean isLooping();

    public abstract boolean isPlaying();

    public abstract void pause();

    public abstract void prepare() throws IllegalStateException, IOException;

    public abstract void prepareAsync();

    public abstract void release();

    public abstract void reset();

    public abstract void seekTo(int i) throws IllegalStateException;

    public abstract void setAudioStreamType(int i);

    public abstract void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException;

    public abstract void setDataSource(String str) throws IllegalArgumentException, IllegalStateException, IOException;

    public abstract void setEnableSpeedAdjustment(boolean z);

    public abstract void setLooping(boolean z);

    public abstract void setPitchStepsAdjustment(float f);

    public abstract void setPlaybackPitch(float f);

    public abstract void setPlaybackSpeed(float f);

    public abstract void setSpeedAdjustmentAlgorithm(int i);

    public abstract void setVolume(float f, float f2);

    public abstract void setWakeMode(Context context, int i);

    public abstract void start();

    public abstract void stop();

    public MediaPlayerImpl(MediaPlayer mediaPlayer, Context context) {
        this.owningMediaPlayer = mediaPlayer;
        this.mContext = context;
    }

    public void muteNextOnPrepare() {
        this.lockMuteOnPreparedCount.lock();
        Log.d(MPI_TAG, "muteNextOnPrepare()");
        try {
            this.muteOnPreparedCount++;
        } finally {
            this.lockMuteOnPreparedCount.unlock();
        }
    }

    public void muteNextSeek() {
        this.lockMuteOnSeekCount.lock();
        Log.d(MPI_TAG, "muteNextOnSeek()");
        try {
            this.muteOnSeekCount++;
        } finally {
            this.lockMuteOnSeekCount.unlock();
        }
    }
}
