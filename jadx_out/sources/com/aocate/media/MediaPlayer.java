package com.aocate.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class MediaPlayer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    private static final String MP_TAG = "AocateReplacementMediaPlayer";
    private static final double PITCH_STEP_CONSTANT = 1.0594630943593d;
    private static Uri SPEED_ADJUSTMENT_MARKET_URI = Uri.parse("market://details?id=com.aocate.presto");
    private static Intent prestoMarketIntent;
    private AndroidMediaPlayer amp;
    protected boolean enableSpeedAdjustment;
    private int lastKnownPosition;
    ReentrantLock lock;
    private int mAudioStreamType;
    private Context mContext;
    private boolean mIsLooping;
    private float mLeftVolume;
    private float mPitchStepsAdjustment;
    private float mRightVolume;
    private Handler mServiceDisconnectedHandler;
    private float mSpeedMultiplier;
    private int mWakeMode;
    MediaPlayerImpl mpi;
    OnBufferingUpdateListener onBufferingUpdateListener;
    OnCompletionListener onCompletionListener;
    OnErrorListener onErrorListener;
    OnInfoListener onInfoListener;
    OnPitchAdjustmentAvailableChangedListener onPitchAdjustmentAvailableChangedListener;
    OnPreparedListener onPreparedListener;
    OnSeekCompleteListener onSeekCompleteListener;
    OnSpeedAdjustmentAvailableChangedListener onSpeedAdjustmentAvailableChangedListener;
    protected boolean pitchAdjustmentAvailable;
    OnPitchAdjustmentAvailableChangedListener pitchAdjustmentAvailableChangedListener;
    OnPreparedListener preparedListener;
    private ServiceBackedMediaPlayer sbmp;
    private int speedAdjustmentAlgorithm;
    protected boolean speedAdjustmentAvailable;
    OnSpeedAdjustmentAvailableChangedListener speedAdjustmentAvailableChangedListener;
    State state;
    String stringDataSource;
    Uri uriDataSource;
    private boolean useService;

    /* loaded from: classes.dex */
    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(MediaPlayer mediaPlayer, int i);
    }

    /* loaded from: classes.dex */
    public interface OnCompletionListener {
        void onCompletion(MediaPlayer mediaPlayer);
    }

    /* loaded from: classes.dex */
    public interface OnErrorListener {
        boolean onError(MediaPlayer mediaPlayer, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnInfoListener {
        boolean onInfo(MediaPlayer mediaPlayer, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnPitchAdjustmentAvailableChangedListener {
        void onPitchAdjustmentAvailableChanged(MediaPlayer mediaPlayer, boolean z);
    }

    /* loaded from: classes.dex */
    public interface OnPreparedListener {
        void onPrepared(MediaPlayer mediaPlayer);
    }

    /* loaded from: classes.dex */
    public interface OnSeekCompleteListener {
        void onSeekComplete(MediaPlayer mediaPlayer);
    }

    /* loaded from: classes.dex */
    public interface OnSpeedAdjustmentAvailableChangedListener {
        void onSpeedAdjustmentAvailableChanged(MediaPlayer mediaPlayer, boolean z);
    }

    /* loaded from: classes.dex */
    public enum State {
        IDLE,
        INITIALIZED,
        PREPARED,
        STARTED,
        PAUSED,
        STOPPED,
        PREPARING,
        PLAYBACK_COMPLETED,
        END,
        ERROR;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static State[] valuesCustom() {
            State[] valuesCustom = values();
            int length = valuesCustom.length;
            State[] stateArr = new State[length];
            System.arraycopy(valuesCustom, 0, stateArr, 0, length);
            return stateArr;
        }
    }

    public static boolean isIntentAvailable(Context context, String str) {
        return context.getPackageManager().queryIntentServices(new Intent(str), 65536).size() > 0;
    }

    public static boolean isPrestoLibraryInstalled(Context context) {
        return isIntentAvailable(context, "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8");
    }

    public static Intent getPrestoMarketIntent() {
        if (prestoMarketIntent == null) {
            prestoMarketIntent = new Intent("android.intent.action.VIEW", SPEED_ADJUSTMENT_MARKET_URI);
        }
        return prestoMarketIntent;
    }

    public static void openPrestoMarketIntent(Context context) {
        context.startActivity(getPrestoMarketIntent());
    }

    public MediaPlayer(Context context) {
        this(context, true);
    }

    public MediaPlayer(Context context, boolean z) {
        this.amp = null;
        this.enableSpeedAdjustment = true;
        this.lastKnownPosition = 0;
        this.lock = new ReentrantLock();
        this.mAudioStreamType = 3;
        this.mIsLooping = false;
        this.mLeftVolume = 1.0f;
        this.mPitchStepsAdjustment = 0.0f;
        this.mRightVolume = 1.0f;
        this.mSpeedMultiplier = 1.0f;
        this.mWakeMode = 0;
        this.mpi = null;
        this.pitchAdjustmentAvailable = false;
        this.sbmp = null;
        this.speedAdjustmentAvailable = false;
        this.mServiceDisconnectedHandler = null;
        this.state = State.INITIALIZED;
        this.stringDataSource = null;
        this.uriDataSource = null;
        this.useService = false;
        this.onBufferingUpdateListener = null;
        this.onCompletionListener = null;
        this.onErrorListener = null;
        this.onInfoListener = null;
        this.onPitchAdjustmentAvailableChangedListener = new OnPitchAdjustmentAvailableChangedListener() { // from class: com.aocate.media.MediaPlayer.1
            @Override // com.aocate.media.MediaPlayer.OnPitchAdjustmentAvailableChangedListener
            public void onPitchAdjustmentAvailableChanged(MediaPlayer mediaPlayer, boolean z2) {
                MediaPlayer.this.lock.lock();
                try {
                    Log.d(MediaPlayer.MP_TAG, "onPitchAdjustmentAvailableChangedListener.onPitchAdjustmentAvailableChanged being called");
                    if (MediaPlayer.this.pitchAdjustmentAvailable != z2) {
                        Log.d(MediaPlayer.MP_TAG, "Pitch adjustment state has changed from " + MediaPlayer.this.pitchAdjustmentAvailable + " to " + z2);
                        MediaPlayer.this.pitchAdjustmentAvailable = z2;
                        if (MediaPlayer.this.pitchAdjustmentAvailableChangedListener != null) {
                            MediaPlayer.this.pitchAdjustmentAvailableChangedListener.onPitchAdjustmentAvailableChanged(mediaPlayer, z2);
                        }
                    }
                } finally {
                    MediaPlayer.this.lock.unlock();
                }
            }
        };
        this.pitchAdjustmentAvailableChangedListener = null;
        this.onPreparedListener = new OnPreparedListener() { // from class: com.aocate.media.MediaPlayer.2
            @Override // com.aocate.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                Log.d(MediaPlayer.MP_TAG, "onPreparedListener 242 setting state to PREPARED");
                MediaPlayer.this.state = State.PREPARED;
                if (MediaPlayer.this.preparedListener != null) {
                    Log.d(MediaPlayer.MP_TAG, "Calling preparedListener");
                    MediaPlayer.this.preparedListener.onPrepared(mediaPlayer);
                }
                Log.d(MediaPlayer.MP_TAG, "Wrap up onPreparedListener");
            }
        };
        this.preparedListener = null;
        this.onSeekCompleteListener = null;
        this.onSpeedAdjustmentAvailableChangedListener = new OnSpeedAdjustmentAvailableChangedListener() { // from class: com.aocate.media.MediaPlayer.3
            @Override // com.aocate.media.MediaPlayer.OnSpeedAdjustmentAvailableChangedListener
            public void onSpeedAdjustmentAvailableChanged(MediaPlayer mediaPlayer, boolean z2) {
                MediaPlayer.this.lock.lock();
                try {
                    Log.d(MediaPlayer.MP_TAG, "onSpeedAdjustmentAvailableChangedListener.onSpeedAdjustmentAvailableChanged being called");
                    if (MediaPlayer.this.speedAdjustmentAvailable != z2) {
                        Log.d(MediaPlayer.MP_TAG, "Speed adjustment state has changed from " + MediaPlayer.this.speedAdjustmentAvailable + " to " + z2);
                        MediaPlayer.this.speedAdjustmentAvailable = z2;
                        if (MediaPlayer.this.speedAdjustmentAvailableChangedListener != null) {
                            MediaPlayer.this.speedAdjustmentAvailableChangedListener.onSpeedAdjustmentAvailableChanged(mediaPlayer, z2);
                        }
                    }
                } finally {
                    MediaPlayer.this.lock.unlock();
                }
            }
        };
        this.speedAdjustmentAvailableChangedListener = null;
        this.speedAdjustmentAlgorithm = SpeedAdjustmentAlgorithm.SONIC;
        this.mContext = context;
        this.useService = z;
        AndroidMediaPlayer androidMediaPlayer = new AndroidMediaPlayer(this, context);
        this.amp = androidMediaPlayer;
        this.mpi = androidMediaPlayer;
        Log.d(MP_TAG, "setupMpi");
        setupMpi(context);
    }

    private boolean invalidServiceConnectionConfiguration() {
        if (!(this.mpi instanceof ServiceBackedMediaPlayer)) {
            if (this.useService && isPrestoLibraryInstalled()) {
                Log.d(MP_TAG, "We could be using the service, but we're not 316");
                return true;
            }
            Log.d(MP_TAG, "this.mpi is not a ServiceBackedMediaPlayer, but we couldn't use it anyway 321");
            return false;
        }
        if (this.useService && isPrestoLibraryInstalled()) {
            Log.d(MP_TAG, "We could be using a ServiceBackedMediaPlayer and we are 327");
            return false;
        }
        Log.d(MP_TAG, "We're trying to use a ServiceBackedMediaPlayer but we shouldn't be 332");
        return true;
    }

    private void setupMpi(Context context) {
        this.lock.lock();
        try {
            Log.d(MP_TAG, "setupMpi 336");
            if (this.useService && isPrestoLibraryInstalled()) {
                if (this.mpi != null && (this.mpi instanceof ServiceBackedMediaPlayer)) {
                    Log.d(MP_TAG, "Already using ServiceBackedMediaPlayer");
                    return;
                }
                if (this.sbmp == null) {
                    Log.d(MP_TAG, "Instantiating new ServiceBackedMediaPlayer 346");
                    this.sbmp = new ServiceBackedMediaPlayer(this, context, new ServiceConnection() { // from class: com.aocate.media.MediaPlayer.4
                        @Override // android.content.ServiceConnection
                        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                            new Thread(new Runnable() { // from class: com.aocate.media.MediaPlayer.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    MediaPlayer.this.lock.lock();
                                    Log.d(MediaPlayer.MP_TAG, "onServiceConnected 257");
                                    try {
                                        MediaPlayer.this.switchMediaPlayerImpl(MediaPlayer.this.amp, MediaPlayer.this.sbmp);
                                        Log.d(MediaPlayer.MP_TAG, "End onServiceConnected 362");
                                    } finally {
                                        MediaPlayer.this.lock.unlock();
                                    }
                                }
                            }).start();
                        }

                        @Override // android.content.ServiceConnection
                        public void onServiceDisconnected(ComponentName componentName) {
                            MediaPlayer.this.lock.lock();
                            try {
                                if (MediaPlayer.this.sbmp != null) {
                                    MediaPlayer.this.sbmp.release();
                                }
                                MediaPlayer.this.sbmp = null;
                                if (MediaPlayer.this.mServiceDisconnectedHandler == null) {
                                    MediaPlayer.this.mServiceDisconnectedHandler = new Handler(new Handler.Callback() { // from class: com.aocate.media.MediaPlayer.4.2
                                        @Override // android.os.Handler.Callback
                                        public boolean handleMessage(Message message) {
                                            MediaPlayer.this.lock.lock();
                                            try {
                                                if (MediaPlayer.this.amp == null) {
                                                    MediaPlayer.this.amp = new AndroidMediaPlayer(MediaPlayer.this, MediaPlayer.this.mContext);
                                                }
                                                MediaPlayer.this.switchMediaPlayerImpl(MediaPlayer.this.sbmp, MediaPlayer.this.amp);
                                                MediaPlayer.this.lock.unlock();
                                                return true;
                                            } catch (Throwable th) {
                                                MediaPlayer.this.lock.unlock();
                                                throw th;
                                            }
                                        }
                                    });
                                }
                                MediaPlayer.this.mServiceDisconnectedHandler.sendMessage(MediaPlayer.this.mServiceDisconnectedHandler.obtainMessage());
                            } finally {
                                MediaPlayer.this.lock.unlock();
                            }
                        }
                    });
                }
                switchMediaPlayerImpl(this.amp, this.sbmp);
            }
            if (this.mpi != null && (this.mpi instanceof AndroidMediaPlayer)) {
                Log.d(MP_TAG, "Already using AndroidMediaPlayer");
                return;
            }
            if (this.amp == null) {
                Log.d(MP_TAG, "Instantiating new AndroidMediaPlayer (this should be impossible)");
                this.amp = new AndroidMediaPlayer(this, context);
            }
            switchMediaPlayerImpl(this.sbmp, this.amp);
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchMediaPlayerImpl(MediaPlayerImpl mediaPlayerImpl, MediaPlayerImpl mediaPlayerImpl2) {
        this.lock.lock();
        try {
            Log.d(MP_TAG, "switchMediaPlayerImpl");
            if (mediaPlayerImpl != mediaPlayerImpl2 && mediaPlayerImpl2 != null && ((!(mediaPlayerImpl2 instanceof ServiceBackedMediaPlayer) || ((ServiceBackedMediaPlayer) mediaPlayerImpl2).isConnected()) && this.state != State.END)) {
                Log.d(MP_TAG, "switchMediaPlayerImpl(), current state is " + this.state.toString());
                mediaPlayerImpl2.reset();
                mediaPlayerImpl2.setEnableSpeedAdjustment(this.enableSpeedAdjustment);
                mediaPlayerImpl2.setAudioStreamType(this.mAudioStreamType);
                mediaPlayerImpl2.setSpeedAdjustmentAlgorithm(this.speedAdjustmentAlgorithm);
                mediaPlayerImpl2.setLooping(this.mIsLooping);
                mediaPlayerImpl2.setPitchStepsAdjustment(this.mPitchStepsAdjustment);
                Log.d(MP_TAG, "Setting playback speed to " + this.mSpeedMultiplier);
                mediaPlayerImpl2.setPlaybackSpeed(this.mSpeedMultiplier);
                mediaPlayerImpl2.setVolume(this.mLeftVolume, this.mRightVolume);
                mediaPlayerImpl2.setWakeMode(this.mContext, this.mWakeMode);
                Log.d(MP_TAG, "asserting at least one data source is null");
                if (this.uriDataSource != null) {
                    Log.d(MP_TAG, "switchMediaPlayerImpl(): uriDataSource != null");
                    try {
                        try {
                            mediaPlayerImpl2.setDataSource(this.mContext, this.uriDataSource);
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    } catch (IllegalArgumentException e2) {
                        e2.printStackTrace();
                    } catch (IllegalStateException e3) {
                        e3.printStackTrace();
                    }
                }
                if (this.stringDataSource != null) {
                    Log.d(MP_TAG, "switchMediaPlayerImpl(): stringDataSource != null");
                    try {
                        try {
                            mediaPlayerImpl2.setDataSource(this.stringDataSource);
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    } catch (IllegalArgumentException e5) {
                        e5.printStackTrace();
                    } catch (IllegalStateException e6) {
                        e6.printStackTrace();
                    }
                }
                if (this.state == State.PREPARED || this.state == State.PREPARING || this.state == State.PAUSED || this.state == State.STOPPED || this.state == State.STARTED || this.state == State.PLAYBACK_COMPLETED) {
                    Log.d(MP_TAG, "switchMediaPlayerImpl(): prepare and seek");
                    try {
                        mediaPlayerImpl2.muteNextOnPrepare();
                        mediaPlayerImpl2.prepare();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    } catch (IllegalStateException e8) {
                        e8.printStackTrace();
                    }
                    int i = 0;
                    if (mediaPlayerImpl != null) {
                        i = mediaPlayerImpl.getCurrentPosition();
                    } else if (this.lastKnownPosition < mediaPlayerImpl2.getDuration()) {
                        i = this.lastKnownPosition;
                    }
                    mediaPlayerImpl2.muteNextSeek();
                    mediaPlayerImpl2.seekTo(i);
                }
                if (mediaPlayerImpl != null && mediaPlayerImpl.isPlaying()) {
                    mediaPlayerImpl.pause();
                }
                if (this.state == State.STARTED || this.state == State.PAUSED || this.state == State.STOPPED) {
                    Log.d(MP_TAG, "switchMediaPlayerImpl(): start");
                    mediaPlayerImpl2.start();
                }
                if (this.state == State.PAUSED) {
                    Log.d(MP_TAG, "switchMediaPlayerImpl(): paused");
                    mediaPlayerImpl2.pause();
                } else if (this.state == State.STOPPED) {
                    Log.d(MP_TAG, "switchMediaPlayerImpl(): stopped");
                    mediaPlayerImpl2.stop();
                }
                this.mpi = mediaPlayerImpl2;
                if (mediaPlayerImpl2.canSetPitch() != this.pitchAdjustmentAvailable && this.onPitchAdjustmentAvailableChangedListener != null) {
                    this.onPitchAdjustmentAvailableChangedListener.onPitchAdjustmentAvailableChanged(this, mediaPlayerImpl2.canSetPitch());
                }
                if (mediaPlayerImpl2.canSetSpeed() != this.speedAdjustmentAvailable && this.onSpeedAdjustmentAvailableChangedListener != null) {
                    this.onSpeedAdjustmentAvailableChangedListener.onSpeedAdjustmentAvailableChanged(this, mediaPlayerImpl2.canSetSpeed());
                }
                Log.d(MP_TAG, "switchMediaPlayerImpl() 625 " + this.state.toString());
            }
        } finally {
            this.lock.unlock();
        }
    }

    public boolean canSetPitch() {
        this.lock.lock();
        try {
            return this.mpi.canSetPitch();
        } finally {
            this.lock.unlock();
        }
    }

    public boolean canSetSpeed() {
        this.lock.lock();
        try {
            return this.mpi.canSetSpeed();
        } finally {
            this.lock.unlock();
        }
    }

    protected void finalize() throws Throwable {
        this.lock.lock();
        try {
            Log.d(MP_TAG, "finalize() 626");
            release();
        } finally {
            this.lock.unlock();
        }
    }

    public float getCurrentPitchStepsAdjustment() {
        this.lock.lock();
        try {
            return this.mpi.getCurrentPitchStepsAdjustment();
        } finally {
            this.lock.unlock();
        }
    }

    public int getCurrentPosition() {
        this.lock.lock();
        try {
            int currentPosition = this.mpi.getCurrentPosition();
            this.lastKnownPosition = currentPosition;
            return currentPosition;
        } finally {
            this.lock.unlock();
        }
    }

    public float getCurrentSpeedMultiplier() {
        this.lock.lock();
        try {
            return this.mpi.getCurrentSpeedMultiplier();
        } finally {
            this.lock.unlock();
        }
    }

    public int getDuration() {
        this.lock.lock();
        try {
            return this.mpi.getDuration();
        } finally {
            this.lock.unlock();
        }
    }

    public float getMaxSpeedMultiplier() {
        this.lock.lock();
        try {
            return this.mpi.getMaxSpeedMultiplier();
        } finally {
            this.lock.unlock();
        }
    }

    public float getMinSpeedMultiplier() {
        this.lock.lock();
        try {
            return this.mpi.getMinSpeedMultiplier();
        } finally {
            this.lock.unlock();
        }
    }

    public int getServiceVersionCode() {
        this.lock.lock();
        try {
            if (this.mpi instanceof ServiceBackedMediaPlayer) {
                return ((ServiceBackedMediaPlayer) this.mpi).getServiceVersionCode();
            }
            this.lock.unlock();
            return -1;
        } finally {
            this.lock.unlock();
        }
    }

    public String getServiceVersionName() {
        this.lock.lock();
        try {
            if (this.mpi instanceof ServiceBackedMediaPlayer) {
                return ((ServiceBackedMediaPlayer) this.mpi).getServiceVersionName();
            }
            this.lock.unlock();
            return null;
        } finally {
            this.lock.unlock();
        }
    }

    public boolean isLooping() {
        this.lock.lock();
        try {
            return this.mpi.isLooping();
        } finally {
            this.lock.unlock();
        }
    }

    public boolean isPlaying() {
        this.lock.lock();
        try {
            return this.mpi.isPlaying();
        } finally {
            this.lock.unlock();
        }
    }

    public boolean isPrestoLibraryInstalled() {
        if (this.mpi == null || this.mpi.mContext == null) {
            return false;
        }
        return isPrestoLibraryInstalled(this.mpi.mContext);
    }

    public void openPrestoMarketIntent() {
        if (this.mpi == null || this.mpi.mContext == null) {
            return;
        }
        openPrestoMarketIntent(this.mpi.mContext);
    }

    public void pause() {
        this.lock.lock();
        try {
            if (invalidServiceConnectionConfiguration()) {
                setupMpi(this.mpi.mContext);
            }
            this.state = State.PAUSED;
            this.mpi.pause();
        } finally {
            this.lock.unlock();
        }
    }

    public void prepare() throws IllegalStateException, IOException {
        this.lock.lock();
        try {
            StringBuilder sb = new StringBuilder("prepare() 746 using ");
            sb.append(this.mpi == null ? "null (this shouldn't happen)" : this.mpi.getClass().toString());
            sb.append(" state ");
            sb.append(this.state.toString());
            Log.d(MP_TAG, sb.toString());
            StringBuilder sb2 = new StringBuilder("onPreparedListener is: ");
            sb2.append(this.onPreparedListener == null ? "null" : "non-null");
            Log.d(MP_TAG, sb2.toString());
            StringBuilder sb3 = new StringBuilder("preparedListener is: ");
            sb3.append(this.preparedListener == null ? "null" : "non-null");
            Log.d(MP_TAG, sb3.toString());
            if (invalidServiceConnectionConfiguration()) {
                setupMpi(this.mpi.mContext);
            }
            this.mpi.prepare();
            this.state = State.PREPARED;
            Log.d(MP_TAG, "prepare() finished 778");
        } finally {
            this.lock.unlock();
        }
    }

    public void prepareAsync() {
        this.lock.lock();
        try {
            Log.d(MP_TAG, "prepareAsync() 779");
            if (invalidServiceConnectionConfiguration()) {
                setupMpi(this.mpi.mContext);
            }
            this.state = State.PREPARING;
            this.mpi.prepareAsync();
        } finally {
            this.lock.unlock();
        }
    }

    public void release() {
        this.lock.lock();
        try {
            Log.d(MP_TAG, "Releasing MediaPlayer 791");
            this.state = State.END;
            if (this.amp != null) {
                this.amp.release();
            }
            if (this.sbmp != null) {
                this.sbmp.release();
            }
            this.onBufferingUpdateListener = null;
            this.onCompletionListener = null;
            this.onErrorListener = null;
            this.onInfoListener = null;
            this.preparedListener = null;
            this.onPitchAdjustmentAvailableChangedListener = null;
            this.pitchAdjustmentAvailableChangedListener = null;
            Log.d(MP_TAG, "Setting onSeekCompleteListener to null 871");
            this.onSeekCompleteListener = null;
            this.onSpeedAdjustmentAvailableChangedListener = null;
            this.speedAdjustmentAvailableChangedListener = null;
        } finally {
            this.lock.unlock();
        }
    }

    public void reset() {
        this.lock.lock();
        try {
            this.state = State.IDLE;
            this.stringDataSource = null;
            this.uriDataSource = null;
            this.mpi.reset();
        } finally {
            this.lock.unlock();
        }
    }

    public void seekTo(int i) throws IllegalStateException {
        this.lock.lock();
        try {
            this.mpi.seekTo(i);
        } finally {
            this.lock.unlock();
        }
    }

    public void setAudioStreamType(int i) {
        this.lock.lock();
        try {
            this.mAudioStreamType = i;
            this.mpi.setAudioStreamType(i);
        } finally {
            this.lock.unlock();
        }
    }

    public void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException {
        this.lock.lock();
        try {
            Log.d(MP_TAG, "In setDataSource(context, " + uri.toString() + "), using " + this.mpi.getClass().toString());
            if (invalidServiceConnectionConfiguration()) {
                setupMpi(this.mpi.mContext);
            }
            this.state = State.INITIALIZED;
            this.stringDataSource = null;
            this.uriDataSource = uri;
            this.mpi.setDataSource(context, uri);
        } finally {
            this.lock.unlock();
        }
    }

    public void setDataSource(String str) throws IllegalArgumentException, IllegalStateException, IOException {
        this.lock.lock();
        try {
            Log.d(MP_TAG, "In setDataSource(context, " + str + ")");
            if (invalidServiceConnectionConfiguration()) {
                setupMpi(this.mpi.mContext);
            }
            this.state = State.INITIALIZED;
            this.stringDataSource = str;
            this.uriDataSource = null;
            this.mpi.setDataSource(str);
        } finally {
            this.lock.unlock();
        }
    }

    public void setEnableSpeedAdjustment(boolean z) {
        this.lock.lock();
        try {
            this.enableSpeedAdjustment = z;
            this.mpi.setEnableSpeedAdjustment(z);
        } finally {
            this.lock.unlock();
        }
    }

    public void setLooping(boolean z) {
        this.lock.lock();
        try {
            this.mIsLooping = z;
            this.mpi.setLooping(z);
        } finally {
            this.lock.unlock();
        }
    }

    public void setPitchStepsAdjustment(float f) {
        this.lock.lock();
        try {
            this.mPitchStepsAdjustment = f;
            this.mpi.setPitchStepsAdjustment(f);
        } finally {
            this.lock.unlock();
        }
    }

    public void setSpeedAdjustmentAlgorithm(int i) {
        this.lock.lock();
        try {
            this.speedAdjustmentAlgorithm = i;
            if (this.mpi != null) {
                this.mpi.setSpeedAdjustmentAlgorithm(i);
            }
        } finally {
            this.lock.unlock();
        }
    }

    private static float getPitchStepsAdjustment(float f) {
        return (float) (Math.log(f) / (2.0d * Math.log(PITCH_STEP_CONSTANT)));
    }

    public void setPlaybackPitch(float f) {
        this.lock.lock();
        try {
            this.mPitchStepsAdjustment = getPitchStepsAdjustment(f);
            this.mpi.setPlaybackPitch(f);
        } finally {
            this.lock.unlock();
        }
    }

    public void setPlaybackSpeed(float f) {
        this.lock.lock();
        try {
            this.mSpeedMultiplier = f;
            this.mpi.setPlaybackSpeed(f);
        } finally {
            this.lock.unlock();
        }
    }

    public void setUseService(boolean z) {
        this.lock.lock();
        try {
            this.useService = z;
            setupMpi(this.mpi.mContext);
        } finally {
            this.lock.unlock();
        }
    }

    public void setVolume(float f, float f2) {
        this.lock.lock();
        try {
            this.mLeftVolume = f;
            this.mRightVolume = f2;
            this.mpi.setVolume(f, f2);
        } finally {
            this.lock.unlock();
        }
    }

    public void setWakeMode(Context context, int i) {
        this.lock.lock();
        try {
            this.mWakeMode = i;
            this.mpi.setWakeMode(context, i);
        } finally {
            this.lock.unlock();
        }
    }

    public void setOnBufferingUpdateListener(OnBufferingUpdateListener onBufferingUpdateListener) {
        this.lock.lock();
        try {
            this.onBufferingUpdateListener = onBufferingUpdateListener;
        } finally {
            this.lock.unlock();
        }
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.lock.lock();
        try {
            this.onCompletionListener = onCompletionListener;
        } finally {
            this.lock.unlock();
        }
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.lock.lock();
        try {
            this.onErrorListener = onErrorListener;
        } finally {
            this.lock.unlock();
        }
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.lock.lock();
        try {
            this.onInfoListener = onInfoListener;
        } finally {
            this.lock.unlock();
        }
    }

    public void setOnPitchAdjustmentAvailableChangedListener(OnPitchAdjustmentAvailableChangedListener onPitchAdjustmentAvailableChangedListener) {
        this.lock.lock();
        try {
            this.pitchAdjustmentAvailableChangedListener = onPitchAdjustmentAvailableChangedListener;
        } finally {
            this.lock.unlock();
        }
    }

    public void setOnPreparedListener(OnPreparedListener onPreparedListener) {
        this.lock.lock();
        Log.d(MP_TAG, " ++++++++++++++++++++++++++++++++++++++++++++ setOnPreparedListener");
        try {
            this.preparedListener = onPreparedListener;
        } finally {
            this.lock.unlock();
        }
    }

    public void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener) {
        this.lock.lock();
        try {
            this.onSeekCompleteListener = onSeekCompleteListener;
        } finally {
            this.lock.unlock();
        }
    }

    public void setOnSpeedAdjustmentAvailableChangedListener(OnSpeedAdjustmentAvailableChangedListener onSpeedAdjustmentAvailableChangedListener) {
        this.lock.lock();
        try {
            this.speedAdjustmentAvailableChangedListener = onSpeedAdjustmentAvailableChangedListener;
        } finally {
            this.lock.unlock();
        }
    }

    public void start() {
        this.lock.lock();
        try {
            Log.d(MP_TAG, "start() 1149");
            if (invalidServiceConnectionConfiguration()) {
                setupMpi(this.mpi.mContext);
            }
            this.state = State.STARTED;
            Log.d(MP_TAG, "start() 1154");
            this.mpi.start();
        } finally {
            this.lock.unlock();
        }
    }

    public void stop() {
        this.lock.lock();
        try {
            if (invalidServiceConnectionConfiguration()) {
                setupMpi(this.mpi.mContext);
            }
            this.state = State.STOPPED;
            this.mpi.stop();
        } finally {
            this.lock.unlock();
        }
    }
}
