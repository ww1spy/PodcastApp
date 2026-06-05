package com.aocate.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.RemoteException;
import android.util.Log;
import com.aocate.media.MediaPlayer;
import com.aocate.presto.service.IDeathCallback_0_8;
import com.aocate.presto.service.IOnBufferingUpdateListenerCallback_0_8;
import com.aocate.presto.service.IOnCompletionListenerCallback_0_8;
import com.aocate.presto.service.IOnErrorListenerCallback_0_8;
import com.aocate.presto.service.IOnInfoListenerCallback_0_8;
import com.aocate.presto.service.IOnPitchAdjustmentAvailableChangedListenerCallback_0_8;
import com.aocate.presto.service.IOnPreparedListenerCallback_0_8;
import com.aocate.presto.service.IOnSeekCompleteListenerCallback_0_8;
import com.aocate.presto.service.IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8;
import com.aocate.presto.service.IPlayMedia_0_8;
import java.io.IOException;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class ServiceBackedMediaPlayer extends MediaPlayerImpl {
    static final String INTENT_NAME = "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8";
    private static final String SBMP_TAG = "AocateServiceBackedMediaPlayer";
    private boolean isErroring;
    private int mAudioStreamType;
    private IOnBufferingUpdateListenerCallback_0_8.Stub mOnBufferingUpdateCallback;
    private IOnCompletionListenerCallback_0_8.Stub mOnCompletionCallback;
    private IOnErrorListenerCallback_0_8.Stub mOnErrorCallback;
    private IOnInfoListenerCallback_0_8.Stub mOnInfoCallback;
    private IOnPitchAdjustmentAvailableChangedListenerCallback_0_8.Stub mOnPitchAdjustmentAvailableChangedCallback;
    private IOnPreparedListenerCallback_0_8.Stub mOnPreparedCallback;
    private IOnSeekCompleteListenerCallback_0_8.Stub mOnSeekCompleteCallback;
    private IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8.Stub mOnSpeedAdjustmentAvailableChangedCallback;
    private ServiceConnection mPlayMediaServiceConnection;
    private PowerManager.WakeLock mWakeLock;
    private int mWakeMode;
    private Intent playMediaServiceIntent;
    protected IPlayMedia_0_8 pmInterface;
    private ReentrantReadWriteLock pmLock;
    private ReentrantReadWriteLock.ReadLock pmReadLock;
    private ReentrantReadWriteLock.WriteLock pmWriteLock;
    private long sessionId;

    public ServiceBackedMediaPlayer(MediaPlayer mediaPlayer, Context context, final ServiceConnection serviceConnection) {
        super(mediaPlayer, context);
        this.mPlayMediaServiceConnection = null;
        this.pmInterface = null;
        this.playMediaServiceIntent = null;
        this.sessionId = 0L;
        this.isErroring = false;
        this.mAudioStreamType = 3;
        this.pmLock = new ReentrantReadWriteLock();
        this.mWakeLock = null;
        this.mOnBufferingUpdateCallback = null;
        this.mOnCompletionCallback = null;
        this.mOnErrorCallback = null;
        this.mOnInfoCallback = null;
        this.mOnPitchAdjustmentAvailableChangedCallback = null;
        this.mOnPreparedCallback = null;
        this.mOnSeekCompleteCallback = null;
        this.mOnSpeedAdjustmentAvailableChangedCallback = null;
        Log.d(SBMP_TAG, "Instantiating ServiceBackedMediaPlayer 87");
        this.pmReadLock = this.pmLock.readLock();
        this.pmWriteLock = this.pmLock.writeLock();
        this.playMediaServiceIntent = new Intent(INTENT_NAME);
        this.mPlayMediaServiceConnection = new ServiceConnection() { // from class: com.aocate.media.ServiceBackedMediaPlayer.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IPlayMedia_0_8 asInterface = IPlayMedia_0_8.Stub.asInterface(iBinder);
                Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "Setting up pmInterface 94");
                if (ServiceBackedMediaPlayer.this.sessionId == 0) {
                    try {
                        ServiceBackedMediaPlayer.this.sessionId = asInterface.startSession(new IDeathCallback_0_8.Stub() { // from class: com.aocate.media.ServiceBackedMediaPlayer.1.1
                        });
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        ServiceBackedMediaPlayer.this.error(1, 0);
                    }
                }
                Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "Assigning pmInterface");
                ServiceBackedMediaPlayer.this.pmWriteLock.lock();
                try {
                    ServiceBackedMediaPlayer.this.setOnBufferingUpdateCallback(asInterface);
                    ServiceBackedMediaPlayer.this.setOnCompletionCallback(asInterface);
                    ServiceBackedMediaPlayer.this.setOnErrorCallback(asInterface);
                    ServiceBackedMediaPlayer.this.setOnInfoCallback(asInterface);
                    ServiceBackedMediaPlayer.this.setOnPitchAdjustmentAvailableChangedListener(asInterface);
                    ServiceBackedMediaPlayer.this.setOnPreparedCallback(asInterface);
                    ServiceBackedMediaPlayer.this.setOnSeekCompleteCallback(asInterface);
                    ServiceBackedMediaPlayer.this.setOnSpeedAdjustmentAvailableChangedCallback(asInterface);
                    ServiceBackedMediaPlayer.this.pmInterface = asInterface;
                    ServiceBackedMediaPlayer.this.pmWriteLock.unlock();
                    Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "Invoking onServiceConnected");
                    serviceConnection.onServiceConnected(componentName, iBinder);
                } catch (Throwable th) {
                    ServiceBackedMediaPlayer.this.pmWriteLock.unlock();
                    throw th;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "onServiceDisconnected 114");
                ServiceBackedMediaPlayer.this.pmWriteLock.lock();
                try {
                    ServiceBackedMediaPlayer.this.pmInterface = null;
                    ServiceBackedMediaPlayer.this.pmWriteLock.unlock();
                    ServiceBackedMediaPlayer.this.sessionId = 0L;
                    serviceConnection.onServiceDisconnected(componentName);
                } catch (Throwable th) {
                    ServiceBackedMediaPlayer.this.pmWriteLock.unlock();
                    throw th;
                }
            }
        };
        Log.d(SBMP_TAG, "Connecting PlayMediaService 124");
        if (ConnectPlayMediaService()) {
            return;
        }
        error(1, 0);
    }

    private boolean ConnectPlayMediaService() {
        Log.d(SBMP_TAG, "ConnectPlayMediaService()");
        if (MediaPlayer.isIntentAvailable(this.mContext, INTENT_NAME)) {
            Log.d(SBMP_TAG, "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8 is available");
            if (this.pmInterface == null) {
                try {
                    Log.d(SBMP_TAG, "Binding service");
                    return this.mContext.bindService(this.playMediaServiceIntent, this.mPlayMediaServiceConnection, 1);
                } catch (Exception unused) {
                    return false;
                }
            }
            Log.d(SBMP_TAG, "Service already bound");
            return true;
        }
        Log.d(SBMP_TAG, "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8 is not available");
        return false;
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public boolean canSetPitch() {
        Log.d(SBMP_TAG, "canSetPitch() 155");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.canSetPitch(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            return false;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public boolean canSetSpeed() {
        Log.d(SBMP_TAG, "canSetSpeed() 180");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.canSetSpeed(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            return false;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    void error(int i, int i2) {
        this.owningMediaPlayer.lock.lock();
        Log.e(SBMP_TAG, "error(" + i + ", " + i2 + ")");
        try {
            if (!this.isErroring) {
                this.isErroring = true;
                this.owningMediaPlayer.state = MediaPlayer.State.ERROR;
                if (this.owningMediaPlayer.onErrorListener != null && this.owningMediaPlayer.onErrorListener.onError(this.owningMediaPlayer, i, i2)) {
                    return;
                }
                if (this.owningMediaPlayer.onCompletionListener != null) {
                    this.owningMediaPlayer.onCompletionListener.onCompletion(this.owningMediaPlayer);
                }
            }
        } finally {
            this.isErroring = false;
            this.owningMediaPlayer.lock.unlock();
        }
    }

    protected void finalize() throws Throwable {
        this.owningMediaPlayer.lock.lock();
        try {
            Log.d(SBMP_TAG, "finalize() 224");
            release();
        } finally {
            this.owningMediaPlayer.lock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public float getCurrentPitchStepsAdjustment() {
        Log.d(SBMP_TAG, "getCurrentPitchStepsAdjustment() 240");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.getCurrentPitchStepsAdjustment(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            this.pmReadLock.unlock();
            return 0.0f;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public int getCurrentPosition() {
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.getCurrentPosition(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            return 0;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public float getCurrentSpeedMultiplier() {
        Log.d(SBMP_TAG, "getCurrentSpeedMultiplier() 286");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.getCurrentSpeedMultiplier(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            this.pmReadLock.unlock();
            return 1.0f;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public int getDuration() {
        Log.d(SBMP_TAG, "getDuration() 311");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.getDuration(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            return 0;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public float getMaxSpeedMultiplier() {
        Log.d(SBMP_TAG, "getMaxSpeedMultiplier() 332");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.getMaxSpeedMultiplier(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            this.pmReadLock.unlock();
            return 1.0f;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public float getMinSpeedMultiplier() {
        Log.d(SBMP_TAG, "getMinSpeedMultiplier() 357");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.getMinSpeedMultiplier(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            this.pmReadLock.unlock();
            return 1.0f;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    public int getServiceVersionCode() {
        Log.d(SBMP_TAG, "getVersionCode");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            return this.pmInterface.getVersionCode();
        } catch (RemoteException e) {
            e.printStackTrace();
            error(1, 0);
            return 0;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    public String getServiceVersionName() {
        Log.d(SBMP_TAG, "getVersionName");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.getVersionName();
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            this.pmReadLock.unlock();
            return "";
        } finally {
            this.pmReadLock.unlock();
        }
    }

    public boolean isConnected() {
        return this.pmInterface != null;
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public boolean isLooping() {
        Log.d(SBMP_TAG, "isLooping() 382");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.isLooping(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            return false;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public boolean isPlaying() {
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    return this.pmInterface.isPlaying(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            return false;
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void pause() {
        Log.d(SBMP_TAG, "pause() 424");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.mWakeLock != null && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.pause(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void prepare() throws IllegalStateException, IOException {
        Log.d(SBMP_TAG, "prepare() 444");
        StringBuilder sb = new StringBuilder("onPreparedCallback is: ");
        sb.append(this.mOnPreparedCallback == null ? "null" : "non-null");
        Log.d(SBMP_TAG, sb.toString());
        if (this.pmInterface == null) {
            Log.d(SBMP_TAG, "prepare: pmInterface is null");
            if (!ConnectPlayMediaService()) {
                Log.d(SBMP_TAG, "prepare: Failed to connect play media service");
                error(1, 0);
            }
        }
        this.pmReadLock.lock();
        try {
            if (this.mWakeLock != null && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
            if (this.pmInterface != null) {
                Log.d(SBMP_TAG, "prepare: pmInterface isn't null");
                try {
                    Log.d(SBMP_TAG, "prepare: Remote invoke pmInterface.prepare(" + this.sessionId + ")");
                    this.pmInterface.prepare(this.sessionId);
                    Log.d(SBMP_TAG, "prepare: prepared");
                } catch (RemoteException e) {
                    Log.d(SBMP_TAG, "prepare: RemoteException");
                    e.printStackTrace();
                    error(1, 0);
                }
            }
            this.pmReadLock.unlock();
            Log.d(SBMP_TAG, "Done with prepare()");
        } catch (Throwable th) {
            this.pmReadLock.unlock();
            throw th;
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void prepareAsync() {
        Log.d(SBMP_TAG, "prepareAsync() 469");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.prepareAsync(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void release() {
        Log.d(SBMP_TAG, "release() 492");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.mWakeLock != null && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
            if (this.pmInterface != null) {
                Log.d(SBMP_TAG, "release() 500");
                try {
                    this.pmInterface.release(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
                this.mContext.unbindService(this.mPlayMediaServiceConnection);
                setWakeMode(this.mContext, 0);
                this.pmInterface = null;
                this.sessionId = 0L;
            }
            this.pmReadLock.unlock();
            if (this.mWakeLock == null || !this.mWakeLock.isHeld()) {
                return;
            }
            Log.d(SBMP_TAG, "Releasing wakelock");
            this.mWakeLock.release();
        } catch (Throwable th) {
            this.pmReadLock.unlock();
            throw th;
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void reset() {
        Log.d(SBMP_TAG, "reset() 523");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.mWakeLock != null && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.reset(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void seekTo(int i) throws IllegalStateException {
        Log.d(SBMP_TAG, "seekTo(" + i + ")");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.seekTo(this.sessionId, i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setAudioStreamType(int i) {
        Log.d(SBMP_TAG, "setAudioStreamType(" + i + ")");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.setAudioStreamType(this.sessionId, this.mAudioStreamType);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException {
        Log.d(SBMP_TAG, "setDataSource(context, uri)");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.setDataSourceUri(this.sessionId, uri);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setDataSource(String str) throws IllegalArgumentException, IllegalStateException, IOException {
        Log.d(SBMP_TAG, "setDataSource(path)");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface == null) {
                error(1, 0);
            } else {
                try {
                    this.pmInterface.setDataSourceString(this.sessionId, str);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setEnableSpeedAdjustment(boolean z) {
        Log.d(SBMP_TAG, "setEnableSpeedAdjustment(enableSpeedAdjustment)");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.setEnableSpeedAdjustment(this.sessionId, z);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setLooping(boolean z) {
        Log.d(SBMP_TAG, "setLooping(" + z + ")");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.setLooping(this.sessionId, z);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setPitchStepsAdjustment(float f) {
        Log.d(SBMP_TAG, "setPitchStepsAdjustment(" + f + ")");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.setPitchStepsAdjustment(this.sessionId, f);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setPlaybackPitch(float f) {
        Log.d(SBMP_TAG, "setPlaybackPitch(" + f + ")");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.setPlaybackPitch(this.sessionId, f);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setPlaybackSpeed(float f) {
        Log.d(SBMP_TAG, "setPlaybackSpeed(" + f + ")");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.setPlaybackSpeed(this.sessionId, f);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setSpeedAdjustmentAlgorithm(int i) {
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.setSpeedAdjustmentAlgorithm(this.sessionId, i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setVolume(float f, float f2) {
        Log.d(SBMP_TAG, "setVolume(" + f + ", " + f2 + ")");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.setVolume(this.sessionId, f, f2);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void setWakeMode(Context context, int i) {
        Log.d(SBMP_TAG, "setWakeMode(context, " + i + ")");
        if (this.mWakeLock != null && this.mWakeLock.isHeld()) {
            this.mWakeLock.release();
        }
        this.mWakeMode = i;
        if (i != 0) {
            if (this.mWakeLock == null) {
                this.mWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i, getClass().getName());
            }
            if (isPlaying()) {
                this.mWakeLock.acquire();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnBufferingUpdateCallback(IPlayMedia_0_8 iPlayMedia_0_8) {
        try {
            if (this.mOnBufferingUpdateCallback == null) {
                this.mOnBufferingUpdateCallback = new IOnBufferingUpdateListenerCallback_0_8.Stub() { // from class: com.aocate.media.ServiceBackedMediaPlayer.2
                    @Override // com.aocate.presto.service.IOnBufferingUpdateListenerCallback_0_8
                    public void onBufferingUpdate(int i) throws RemoteException {
                        ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.lock();
                        try {
                            if (ServiceBackedMediaPlayer.this.owningMediaPlayer.onBufferingUpdateListener != null && ServiceBackedMediaPlayer.this.owningMediaPlayer.mpi == ServiceBackedMediaPlayer.this) {
                                ServiceBackedMediaPlayer.this.owningMediaPlayer.onBufferingUpdateListener.onBufferingUpdate(ServiceBackedMediaPlayer.this.owningMediaPlayer, i);
                            }
                        } finally {
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                        }
                    }
                };
            }
            iPlayMedia_0_8.registerOnBufferingUpdateCallback(this.sessionId, this.mOnBufferingUpdateCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
            error(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnCompletionCallback(IPlayMedia_0_8 iPlayMedia_0_8) {
        try {
            if (this.mOnCompletionCallback == null) {
                this.mOnCompletionCallback = new IOnCompletionListenerCallback_0_8.Stub() { // from class: com.aocate.media.ServiceBackedMediaPlayer.3
                    @Override // com.aocate.presto.service.IOnCompletionListenerCallback_0_8
                    public void onCompletion() throws RemoteException {
                        ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.lock();
                        try {
                            Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "onCompletionListener being called for listener: " + ServiceBackedMediaPlayer.this.owningMediaPlayer.onCompletionListener);
                            Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "onCompletionListener trying to release wakeLock...");
                            if (ServiceBackedMediaPlayer.this.mWakeLock != null && ServiceBackedMediaPlayer.this.mWakeLock.isHeld()) {
                                ServiceBackedMediaPlayer.this.mWakeLock.release();
                                Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "wakeLock released...");
                            } else {
                                Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "wakeLock not held...");
                            }
                            if (ServiceBackedMediaPlayer.this.owningMediaPlayer.onCompletionListener != null) {
                                Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "onCompletionListener is actually being called...");
                                ServiceBackedMediaPlayer.this.owningMediaPlayer.onCompletionListener.onCompletion(ServiceBackedMediaPlayer.this.owningMediaPlayer);
                                Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "onCompletionListener call completed.");
                            }
                        } finally {
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                        }
                    }
                };
            }
            iPlayMedia_0_8.registerOnCompletionCallback(this.sessionId, this.mOnCompletionCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
            error(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnErrorCallback(IPlayMedia_0_8 iPlayMedia_0_8) {
        try {
            if (this.mOnErrorCallback == null) {
                this.mOnErrorCallback = new IOnErrorListenerCallback_0_8.Stub() { // from class: com.aocate.media.ServiceBackedMediaPlayer.4
                    @Override // com.aocate.presto.service.IOnErrorListenerCallback_0_8
                    public boolean onError(int i, int i2) throws RemoteException {
                        ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.lock();
                        try {
                            if (ServiceBackedMediaPlayer.this.mWakeLock != null && ServiceBackedMediaPlayer.this.mWakeLock.isHeld()) {
                                ServiceBackedMediaPlayer.this.mWakeLock.release();
                            }
                            if (ServiceBackedMediaPlayer.this.owningMediaPlayer.onErrorListener != null) {
                                return ServiceBackedMediaPlayer.this.owningMediaPlayer.onErrorListener.onError(ServiceBackedMediaPlayer.this.owningMediaPlayer, i, i2);
                            }
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                            return false;
                        } finally {
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                        }
                    }
                };
            }
            iPlayMedia_0_8.registerOnErrorCallback(this.sessionId, this.mOnErrorCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
            error(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnInfoCallback(IPlayMedia_0_8 iPlayMedia_0_8) {
        try {
            if (this.mOnInfoCallback == null) {
                this.mOnInfoCallback = new IOnInfoListenerCallback_0_8.Stub() { // from class: com.aocate.media.ServiceBackedMediaPlayer.5
                    @Override // com.aocate.presto.service.IOnInfoListenerCallback_0_8
                    public boolean onInfo(int i, int i2) throws RemoteException {
                        ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.lock();
                        try {
                            if (ServiceBackedMediaPlayer.this.owningMediaPlayer.onInfoListener != null && ServiceBackedMediaPlayer.this.owningMediaPlayer.mpi == ServiceBackedMediaPlayer.this) {
                                return ServiceBackedMediaPlayer.this.owningMediaPlayer.onInfoListener.onInfo(ServiceBackedMediaPlayer.this.owningMediaPlayer, i, i2);
                            }
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                            return false;
                        } finally {
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                        }
                    }
                };
            }
            iPlayMedia_0_8.registerOnInfoCallback(this.sessionId, this.mOnInfoCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
            error(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnPitchAdjustmentAvailableChangedListener(IPlayMedia_0_8 iPlayMedia_0_8) {
        try {
            if (this.mOnPitchAdjustmentAvailableChangedCallback == null) {
                this.mOnPitchAdjustmentAvailableChangedCallback = new IOnPitchAdjustmentAvailableChangedListenerCallback_0_8.Stub() { // from class: com.aocate.media.ServiceBackedMediaPlayer.6
                    @Override // com.aocate.presto.service.IOnPitchAdjustmentAvailableChangedListenerCallback_0_8
                    public void onPitchAdjustmentAvailableChanged(boolean z) throws RemoteException {
                        ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.lock();
                        try {
                            if (ServiceBackedMediaPlayer.this.owningMediaPlayer.onPitchAdjustmentAvailableChangedListener != null) {
                                ServiceBackedMediaPlayer.this.owningMediaPlayer.onPitchAdjustmentAvailableChangedListener.onPitchAdjustmentAvailableChanged(ServiceBackedMediaPlayer.this.owningMediaPlayer, z);
                            }
                        } finally {
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                        }
                    }
                };
            }
            iPlayMedia_0_8.registerOnPitchAdjustmentAvailableChangedCallback(this.sessionId, this.mOnPitchAdjustmentAvailableChangedCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
            error(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnPreparedCallback(IPlayMedia_0_8 iPlayMedia_0_8) {
        try {
            if (this.mOnPreparedCallback == null) {
                this.mOnPreparedCallback = new IOnPreparedListenerCallback_0_8.Stub() { // from class: com.aocate.media.ServiceBackedMediaPlayer.7
                    @Override // com.aocate.presto.service.IOnPreparedListenerCallback_0_8
                    public void onPrepared() throws RemoteException {
                        ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.lock();
                        Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "setOnPreparedCallback.mOnPreparedCallback.onPrepared 1050");
                        try {
                            StringBuilder sb = new StringBuilder("owningMediaPlayer.onPreparedListener is ");
                            sb.append(ServiceBackedMediaPlayer.this.owningMediaPlayer.onPreparedListener == null ? "null" : "non-null");
                            Log.d(ServiceBackedMediaPlayer.SBMP_TAG, sb.toString());
                            StringBuilder sb2 = new StringBuilder("owningMediaPlayer.mpi is ");
                            sb2.append(ServiceBackedMediaPlayer.this.owningMediaPlayer.mpi == ServiceBackedMediaPlayer.this ? "this" : "not this");
                            Log.d(ServiceBackedMediaPlayer.SBMP_TAG, sb2.toString());
                            ServiceBackedMediaPlayer.this.lockMuteOnPreparedCount.lock();
                            try {
                                if (ServiceBackedMediaPlayer.this.muteOnPreparedCount > 0) {
                                    ServiceBackedMediaPlayer serviceBackedMediaPlayer = ServiceBackedMediaPlayer.this;
                                    serviceBackedMediaPlayer.muteOnPreparedCount--;
                                } else {
                                    ServiceBackedMediaPlayer.this.muteOnPreparedCount = 0;
                                    if (ServiceBackedMediaPlayer.this.owningMediaPlayer.onPreparedListener != null) {
                                        ServiceBackedMediaPlayer.this.owningMediaPlayer.onPreparedListener.onPrepared(ServiceBackedMediaPlayer.this.owningMediaPlayer);
                                    }
                                }
                            } finally {
                                ServiceBackedMediaPlayer.this.lockMuteOnPreparedCount.unlock();
                            }
                        } finally {
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                        }
                    }
                };
            }
            iPlayMedia_0_8.registerOnPreparedCallback(this.sessionId, this.mOnPreparedCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
            error(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnSeekCompleteCallback(IPlayMedia_0_8 iPlayMedia_0_8) {
        try {
            if (this.mOnSeekCompleteCallback == null) {
                this.mOnSeekCompleteCallback = new IOnSeekCompleteListenerCallback_0_8.Stub() { // from class: com.aocate.media.ServiceBackedMediaPlayer.8
                    @Override // com.aocate.presto.service.IOnSeekCompleteListenerCallback_0_8
                    public void onSeekComplete() throws RemoteException {
                        Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "onSeekComplete() 941");
                        ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.lock();
                        try {
                            if (ServiceBackedMediaPlayer.this.muteOnSeekCount > 0) {
                                Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "The next " + ServiceBackedMediaPlayer.this.muteOnSeekCount + " seek events are muted (counting this one)");
                                ServiceBackedMediaPlayer serviceBackedMediaPlayer = ServiceBackedMediaPlayer.this;
                                serviceBackedMediaPlayer.muteOnSeekCount = serviceBackedMediaPlayer.muteOnSeekCount + (-1);
                            } else {
                                ServiceBackedMediaPlayer.this.muteOnSeekCount = 0;
                                Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "Attempting to invoke next seek event");
                                if (ServiceBackedMediaPlayer.this.owningMediaPlayer.onSeekCompleteListener != null) {
                                    Log.d(ServiceBackedMediaPlayer.SBMP_TAG, "Invoking onSeekComplete");
                                    ServiceBackedMediaPlayer.this.owningMediaPlayer.onSeekCompleteListener.onSeekComplete(ServiceBackedMediaPlayer.this.owningMediaPlayer);
                                }
                            }
                        } finally {
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                        }
                    }
                };
            }
            iPlayMedia_0_8.registerOnSeekCompleteCallback(this.sessionId, this.mOnSeekCompleteCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
            error(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnSpeedAdjustmentAvailableChangedCallback(IPlayMedia_0_8 iPlayMedia_0_8) {
        try {
            Log.d(SBMP_TAG, "Setting the service of on speed adjustment available changed");
            if (this.mOnSpeedAdjustmentAvailableChangedCallback == null) {
                this.mOnSpeedAdjustmentAvailableChangedCallback = new IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8.Stub() { // from class: com.aocate.media.ServiceBackedMediaPlayer.9
                    @Override // com.aocate.presto.service.IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8
                    public void onSpeedAdjustmentAvailableChanged(boolean z) throws RemoteException {
                        ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.lock();
                        try {
                            if (ServiceBackedMediaPlayer.this.owningMediaPlayer.onSpeedAdjustmentAvailableChangedListener != null) {
                                ServiceBackedMediaPlayer.this.owningMediaPlayer.onSpeedAdjustmentAvailableChangedListener.onSpeedAdjustmentAvailableChanged(ServiceBackedMediaPlayer.this.owningMediaPlayer, z);
                            }
                        } finally {
                            ServiceBackedMediaPlayer.this.owningMediaPlayer.lock.unlock();
                        }
                    }
                };
            }
            iPlayMedia_0_8.registerOnSpeedAdjustmentAvailableChangedCallback(this.sessionId, this.mOnSpeedAdjustmentAvailableChangedCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
            error(1, 0);
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void start() {
        Log.d(SBMP_TAG, "start()");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.mWakeLock != null) {
                if (this.mWakeMode == 0) {
                    if (this.mWakeLock != null && this.mWakeLock.isHeld()) {
                        this.mWakeLock.release();
                    }
                } else {
                    this.mWakeLock.acquire();
                }
            }
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.start(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }

    @Override // com.aocate.media.MediaPlayerImpl
    public void stop() {
        Log.d(SBMP_TAG, "stop()");
        if (this.pmInterface == null && !ConnectPlayMediaService()) {
            error(1, 0);
        }
        this.pmReadLock.lock();
        try {
            if (this.mWakeLock != null && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
            if (this.pmInterface != null) {
                try {
                    this.pmInterface.stop(this.sessionId);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    error(1, 0);
                }
            }
        } finally {
            this.pmReadLock.unlock();
        }
    }
}
