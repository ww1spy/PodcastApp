package mobi.beyondpod.services.player.impl;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import org.vinuxproject.sonic.AndroidAudioDevice;
import org.vinuxproject.sonic.Sonic;

/* loaded from: classes.dex */
public class SonicPlayer {
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
    private static final int PLAYER_STATE_ERROR = -1;
    private static final int PLAYER_STATE_IDLE = 0;
    private static final int PLAYER_STATE_INITIALIZED = 1;
    private static final int PLAYER_STATE_PAUSED = 5;
    private static final int PLAYER_STATE_PLAYBACK_COMPLETED = 7;
    private static final int PLAYER_STATE_PREPARED = 3;
    private static final int PLAYER_STATE_PREPARING = 2;
    private static final int PLAYER_STATE_RELEASED = -2;
    private static final int PLAYER_STATE_STARTED = 4;
    private static final int PLAYER_STATE_STOPPED = 6;
    private static final String TAG = "SonicPlayer";
    private static final long TIMEOUT_US = 10000;
    private String _DataSource;
    private int _SelectedTrack;
    private AndroidAudioDevice mAudioTrack;
    private int mChannelCount;
    private MediaCodec mCodec;
    private EventHandler mEventHandler;
    private MediaExtractor mExtractor;
    private OnBufferingUpdateListener mOnBufferingUpdateListener;
    private OnCompletionListener mOnCompletionListener;
    private OnErrorListener mOnErrorListener;
    private OnInfoListener mOnInfoListener;
    private OnPreparedListener mOnPreparedListener;
    private OnSeekCompleteListener mOnSeekCompleteListener;
    private OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private PlayerWorker mPlayerWorker;
    private int mSampleRate;
    private Sonic mSonic;
    private byte[] mSonicInBuffer;
    private byte[] mSonicOutBuffer;
    private PowerManager.WakeLock mWakeLock = null;
    private long mDuration = -1;
    private long mMustSeekToPosition = -1;
    private int mState = 0;
    private volatile boolean _isReleased = false;
    private final Object _syncLock = new Object();
    private Runnable playingRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.SonicPlayer.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                SonicPlayer.this.playInternal();
            } catch (Exception unused) {
                SonicPlayer.this.mState = -1;
                SonicPlayer.this.postEvent(100);
            }
        }
    };
    private Runnable seekingRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.SonicPlayer.2
        @Override // java.lang.Runnable
        public void run() {
            if (!SonicPlayer.this.isReleased()) {
                if (SonicPlayer.this.mExtractor != null) {
                    SonicPlayer.this.mExtractor.seekTo(SonicPlayer.this.mMustSeekToPosition, 2);
                    SonicPlayer.this.mMustSeekToPosition = -1L;
                    SonicPlayer.this.postEvent(4);
                    return;
                }
                throw new IllegalStateException("SonicPlayer seekingRunnable cannot seek since the extractor is null.");
            }
            CoreHelper.writeTraceEntry(SonicPlayer.TAG, "*** seekingRunnable.run(): Cannot seek since the player has been released.");
        }
    };
    private Runnable preparingRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.SonicPlayer.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                SonicPlayer.this.prepare();
            } catch (Exception unused) {
                SonicPlayer.this.mState = -1;
                SonicPlayer.this.postEvent(100);
            }
        }
    };

    /* loaded from: classes.dex */
    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(SonicPlayer sonicPlayer, int i);
    }

    /* loaded from: classes.dex */
    public interface OnCompletionListener {
        void onCompletion(SonicPlayer sonicPlayer);
    }

    /* loaded from: classes.dex */
    public interface OnErrorListener {
        boolean onError(SonicPlayer sonicPlayer, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnInfoListener {
        boolean onInfo(SonicPlayer sonicPlayer, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnPreparedListener {
        void onPrepared(SonicPlayer sonicPlayer);
    }

    /* loaded from: classes.dex */
    public interface OnSeekCompleteListener {
        void onSeekComplete(SonicPlayer sonicPlayer);
    }

    /* loaded from: classes.dex */
    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(SonicPlayer sonicPlayer, int i, int i2);
    }

    public SonicPlayer() {
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
        this.mPlayerWorker = new PlayerWorker();
        this.mPlayerWorker.setName("SonicPlayer Worker Thread");
        this.mPlayerWorker.start();
        while (!this.mPlayerWorker._IsReady) {
            try {
                Thread.sleep(10L);
            } catch (InterruptedException unused) {
            }
        }
    }

    public synchronized boolean isReleased() {
        return this._isReleased;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PlayerWorker extends Thread {
        private volatile boolean _IsReady;
        private Looper looper;
        private Handler workerHandler;

        private PlayerWorker() {
            this._IsReady = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-16);
            Looper.prepare();
            this.looper = Looper.myLooper();
            this.workerHandler = new Handler();
            this._IsReady = true;
            Looper.loop();
        }

        public void release() {
            if (this.workerHandler != null) {
                this.workerHandler.removeCallbacksAndMessages(null);
                this.workerHandler = null;
            }
            if (this.looper != null) {
                this.looper.quit();
            }
            CoreHelper.writeTraceEntry(SonicPlayer.TAG, "SonicPlayer worker thread released!");
        }

        protected void finalize() throws Throwable {
            super.finalize();
            CoreHelper.writeTraceEntry(SonicPlayer.TAG, "SonicPlayer worker thread finalized!");
        }
    }

    private Handler playerPlaybackHandler() {
        return this.mPlayerWorker.workerHandler;
    }

    public void setDataSource(String str) throws IllegalArgumentException, SecurityException, IllegalStateException {
        if (this.mState != 0) {
            throw new IllegalStateException("setDataSource() invoked from invalid state: " + this.mState);
        }
        this._DataSource = str;
        if (this.mExtractor != null) {
            reset();
        }
        this.mExtractor = new MediaExtractor();
        this.mState = 1;
    }

    public void prepare() throws IOException, IllegalStateException {
        if (this.mState != 1 && this.mState != 6) {
            throw new IllegalStateException("prepare() invoked from invalid state: " + this.mState);
        }
        this.mExtractor.setDataSource(this._DataSource);
        int i = 0;
        while (true) {
            if (i >= this.mExtractor.getTrackCount()) {
                break;
            }
            MediaFormat trackFormat = this.mExtractor.getTrackFormat(i);
            CoreHelper.writeTraceEntry(TAG, "Prepare found track: " + trackFormat.toString());
            String string = trackFormat.getString("mime");
            if (string.startsWith("audio/")) {
                this._SelectedTrack = i;
                this.mExtractor.selectTrack(this._SelectedTrack);
                this.mCodec = MediaCodec.createDecoderByType(string);
                this.mCodec.configure(trackFormat, (Surface) null, (MediaCrypto) null, 0);
                this.mDuration = trackFormat.getLong("durationUs");
                this.mChannelCount = trackFormat.getInteger("channel-count");
                this.mSampleRate = trackFormat.getInteger("sample-rate");
                break;
            }
            i++;
        }
        if (this.mCodec == null) {
            this.mState = -1;
            postEvent(100);
            return;
        }
        this.mSonic = new Sonic(this.mSampleRate, this.mChannelCount);
        this.mAudioTrack = new AndroidAudioDevice(this.mSampleRate, this.mChannelCount);
        if (!this.mAudioTrack.isInitialized()) {
            this.mState = -1;
            postEvent(100);
        } else {
            this.mCodec.start();
            this.mState = 3;
            postEvent(1);
        }
    }

    public void prepareAsync() throws IllegalStateException {
        if (this.mState != 1 && this.mState != 6) {
            throw new IllegalStateException("prepare() invoked from invalid state: " + this.mState);
        }
        this.mState = 2;
        playerPlaybackHandler().removeCallbacks(this.preparingRunnable);
        playerPlaybackHandler().post(this.preparingRunnable);
    }

    public void start() throws IllegalStateException {
        if (this.mState == 4) {
            return;
        }
        if (this.mState != 5 && this.mState != 3 && this.mState != 7) {
            throw new IllegalStateException("start() invoked from invalid state: " + this.mState);
        }
        stayAwake(true);
        this.mAudioTrack.play();
        playerPlaybackHandler().removeCallbacks(this.playingRunnable);
        playerPlaybackHandler().post(this.playingRunnable);
        this.mState = 4;
    }

    public void stop() throws IllegalStateException {
        stayAwake(false);
        this.mAudioTrack.stop();
        this.mState = 6;
    }

    public void pause() throws IllegalStateException {
        stayAwake(false);
        this.mAudioTrack.pause();
        this.mState = 5;
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
        this.mWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i | 536870912, SonicPlayer.class.getName());
        this.mWakeLock.setReferenceCounted(false);
        if (z) {
            this.mWakeLock.acquire();
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
        return this.mAudioTrack != null && this.mAudioTrack.isPlaying();
    }

    public void seekTo(int i) throws IllegalStateException {
        if (this.mState != 5 && this.mState != 3 && this.mState != 4 && this.mState != 7) {
            throw new IllegalStateException("seekTo() invoked without first calling prepare()");
        }
        this.mMustSeekToPosition = i;
        this.mMustSeekToPosition *= 1000;
        if (isPlaying()) {
            return;
        }
        playerPlaybackHandler().removeCallbacks(this.seekingRunnable);
        playerPlaybackHandler().post(this.seekingRunnable);
    }

    public int getCurrentPosition() {
        if (this.mExtractor == null) {
            return -1;
        }
        long sampleTime = this.mExtractor.getSampleTime();
        if (sampleTime < 0) {
            return getDuration();
        }
        return (int) (sampleTime / 1000);
    }

    public int getDuration() {
        return (int) (this.mDuration > 0 ? this.mDuration / 1000 : this.mDuration);
    }

    public void release() {
        if (isReleased()) {
            return;
        }
        resetInternal();
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnPreparedListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnVideoSizeChangedListener = null;
        this.mState = -2;
        this.mPlayerWorker.release();
        this.mPlayerWorker = null;
        synchronized (this._syncLock) {
            this._isReleased = true;
        }
        CoreHelper.writeTraceEntry(TAG, "SonicPlayer Released!");
    }

    public void reset() {
        resetInternal();
        this.mState = 0;
        CoreHelper.writeTraceEntry(TAG, "SonicPlayer Reset!");
    }

    private void resetInternal() {
        stayAwake(false);
        this.mEventHandler.removeCallbacksAndMessages(null);
        playerPlaybackHandler().removeCallbacksAndMessages(null);
        if (this.mAudioTrack != null) {
            this.mAudioTrack.release();
            this.mAudioTrack = null;
        }
        if (this.mExtractor != null) {
            this.mExtractor.release();
            this.mExtractor = null;
        }
        if (this.mCodec != null) {
            try {
                this.mCodec.stop();
            } catch (Exception unused) {
                CoreHelper.writeTraceEntry(TAG, "MediaCodec reset failed - Codec invalid state.");
            }
            this.mCodec.release();
            this.mCodec = null;
        }
        if (this.mSonic != null) {
            this.mSonic.close();
            this.mSonic = null;
        }
        this.mSonicInBuffer = null;
        this.mSonicOutBuffer = null;
    }

    public void setAudioStreamType(int i) {
        if (this.mAudioTrack != null) {
            this.mAudioTrack.setAudioStreamType(i);
        }
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

    public void setPlaybackSpeed(float f) {
        if (this.mSonic != null) {
            this.mSonic.setSpeed(f);
        }
    }

    public float getPlaybackSpeed() {
        if (this.mSonic != null) {
            return this.mSonic.getSpeed();
        }
        return 1.0f;
    }

    public void setVolumeBoost(float f) {
        if (this.mSonic != null) {
            this.mSonic.setVolume(f);
        }
    }

    public void setPitch(float f) {
        if (this.mSonic != null) {
            this.mSonic.setPitch(f);
        }
    }

    public float getPitch() {
        if (this.mSonic != null) {
            return this.mSonic.getPitch();
        }
        return 1.0f;
    }

    public void setVolume(float f, float f2) {
        if (this.mAudioTrack != null) {
            this.mAudioTrack.setVolume(f, f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(21)
    public void playInternal() {
        ByteBuffer[] byteBufferArr;
        ByteBuffer outputBuffer;
        ByteBuffer inputBuffer;
        int i;
        long sampleTime;
        if (this.mExtractor == null || this.mAudioTrack == null || this.mCodec == null) {
            throw new IllegalStateException("Data source not prepared!");
        }
        ByteBuffer[] byteBufferArr2 = null;
        int i2 = 21;
        if (CoreHelper.apiLevel() < 21) {
            byteBufferArr2 = this.mCodec.getInputBuffers();
            byteBufferArr = this.mCodec.getOutputBuffers();
        } else {
            byteBufferArr = null;
        }
        ByteBuffer[] byteBufferArr3 = byteBufferArr;
        boolean z = false;
        while (true) {
            try {
                if (Thread.interrupted()) {
                    break;
                }
                if (this.mMustSeekToPosition >= 0) {
                    this.mCodec.flush();
                    this.mAudioTrack.flush();
                    this.mSonic.flush();
                    this.mExtractor.seekTo(this.mMustSeekToPosition, 2);
                    this.mMustSeekToPosition = -1L;
                    this.mAudioTrack.play();
                    postEvent(4);
                }
                if (!this.mAudioTrack.isPlaying()) {
                    CoreHelper.writeTraceEntry(TAG, "Playing runnable found that the audioTrack is not Playing. Stopping the playback loop...");
                    break;
                }
                int dequeueInputBuffer = this.mCodec.dequeueInputBuffer(TIMEOUT_US);
                if (dequeueInputBuffer >= 0) {
                    if (CoreHelper.apiLevel() < i2 && byteBufferArr2 != null) {
                        inputBuffer = byteBufferArr2[dequeueInputBuffer];
                    } else {
                        inputBuffer = this.mCodec.getInputBuffer(dequeueInputBuffer);
                    }
                    int readSampleData = this.mExtractor.readSampleData(inputBuffer, 0);
                    if (readSampleData < 0) {
                        i = 0;
                        z = true;
                        sampleTime = 0;
                    } else {
                        i = readSampleData;
                        sampleTime = this.mExtractor.getSampleTime();
                    }
                    this.mCodec.queueInputBuffer(dequeueInputBuffer, 0, i, sampleTime, z ? 4 : 0);
                    if (z) {
                        break;
                    } else {
                        this.mExtractor.advance();
                    }
                }
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                int dequeueOutputBuffer = this.mCodec.dequeueOutputBuffer(bufferInfo, TIMEOUT_US);
                if (dequeueOutputBuffer >= 0) {
                    if (this.mSonicInBuffer == null || this.mSonicInBuffer.length < bufferInfo.size) {
                        this.mSonicInBuffer = new byte[bufferInfo.size * 2];
                    }
                    if (CoreHelper.apiLevel() < i2 && byteBufferArr3 != null) {
                        outputBuffer = byteBufferArr3[dequeueOutputBuffer];
                    } else {
                        outputBuffer = this.mCodec.getOutputBuffer(dequeueOutputBuffer);
                    }
                    if (outputBuffer != null) {
                        outputBuffer.get(this.mSonicInBuffer, 0, bufferInfo.size);
                        outputBuffer.clear();
                    }
                    if (bufferInfo.size > 0) {
                        this.mSonic.putBytes(this.mSonicInBuffer, bufferInfo.size);
                    }
                    playSonicBuffer();
                    this.mCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                } else if (dequeueOutputBuffer == -3) {
                    if (CoreHelper.apiLevel() < i2) {
                        byteBufferArr3 = this.mCodec.getOutputBuffers();
                    }
                } else if (dequeueOutputBuffer == -2) {
                    MediaFormat outputFormat = this.mCodec.getOutputFormat();
                    int integer = outputFormat.getInteger("sample-rate");
                    int integer2 = outputFormat.getInteger("channel-count");
                    if (integer != this.mSampleRate || integer2 != this.mChannelCount) {
                        CoreHelper.writeTraceEntry(TAG, String.format(" Media format changed from sampleRate: form %s => %s, Channels: from %s => %s", Integer.valueOf(this.mSampleRate), Integer.valueOf(integer), Integer.valueOf(this.mChannelCount), Integer.valueOf(integer2)));
                        this.mSampleRate = integer;
                        this.mChannelCount = integer2;
                        postEvent(200, this.mSampleRate, this.mChannelCount);
                        this.mSonic.setSampleRate(this.mSampleRate);
                        this.mSonic.setNumChannels(this.mChannelCount);
                        this.mAudioTrack.setRateAndChannels(this.mSampleRate, this.mChannelCount);
                        if (!this.mAudioTrack.isInitialized()) {
                            this.mState = -1;
                            postEvent(100);
                            return;
                        }
                    }
                } else if (dequeueOutputBuffer == -1) {
                    CoreHelper.writeTraceEntry(TAG, "Playback timeout... waiting for more data at: " + this.mExtractor.getSampleTime());
                }
                i2 = 21;
            } catch (Exception unused) {
                this.mState = -1;
                postEvent(100);
                return;
            }
        }
        if (z) {
            int i3 = 15;
            do {
                int playSonicBuffer = playSonicBuffer();
                if (playSonicBuffer > 0) {
                    Thread.sleep(100L);
                    CoreHelper.writeTraceEntry(TAG, "Waiting for Sonic to finish...");
                    i3--;
                }
                if (playSonicBuffer <= 0) {
                    break;
                }
            } while (i3 > 0);
            int headPosition = this.mAudioTrack.getHeadPosition();
            int i4 = 0;
            while (i4 != 10) {
                Thread.sleep(500L);
                int headPosition2 = this.mAudioTrack.getHeadPosition();
                if (headPosition == headPosition2) {
                    break;
                }
                CoreHelper.writeTraceEntry(TAG, "Waiting for AudioTrack to finish... " + headPosition2);
                i4++;
                headPosition = headPosition2;
            }
            this.mCodec.flush();
            this.mAudioTrack.flush();
            postEvent(2);
            this.mState = 7;
        }
    }

    private int playSonicBuffer() throws Exception {
        int availableBytes = this.mSonic.availableBytes();
        if (availableBytes > 0) {
            if (this.mSonicOutBuffer == null || this.mSonicOutBuffer.length < availableBytes) {
                this.mSonicOutBuffer = new byte[availableBytes * 2];
            }
            this.mSonic.receiveBytes(this.mSonicOutBuffer, availableBytes);
            int writeSamples = this.mAudioTrack.writeSamples(this.mSonicOutBuffer, availableBytes);
            if (writeSamples < 0) {
                if (writeSamples == -4) {
                    CoreHelper.writeTraceEntry(TAG, "AudioTrack writeSamples failed with PERMISSION_DENIED. Ignoring...");
                    return writeSamples;
                }
                Exception exc = new Exception("AudioTrack writeSamples failed! Error: " + writeSamples);
                CoreHelper.writeTraceEntry(TAG, exc.getMessage());
                throw exc;
            }
        }
        return availableBytes;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class EventHandler extends Handler {
        private SonicPlayer mMediaPlayer;

        public EventHandler(SonicPlayer sonicPlayer, Looper looper) {
            super(looper);
            this.mMediaPlayer = sonicPlayer;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 100) {
                CoreHelper.writeTraceErrorInDebug(SonicPlayer.TAG, "Error (" + message.arg1 + "," + message.arg2 + ")");
                boolean onError = SonicPlayer.this.mOnErrorListener != null ? SonicPlayer.this.mOnErrorListener.onError(this.mMediaPlayer, message.arg1, message.arg2) : false;
                if (SonicPlayer.this.mOnCompletionListener != null && !onError) {
                    SonicPlayer.this.mOnCompletionListener.onCompletion(this.mMediaPlayer);
                }
                SonicPlayer.this.stayAwake(false);
                return;
            }
            if (i != 200) {
                switch (i) {
                    case 0:
                        return;
                    case 1:
                        if (SonicPlayer.this.mOnPreparedListener != null) {
                            SonicPlayer.this.mOnPreparedListener.onPrepared(this.mMediaPlayer);
                            return;
                        }
                        return;
                    case 2:
                        if (SonicPlayer.this.mOnCompletionListener != null) {
                            SonicPlayer.this.mOnCompletionListener.onCompletion(this.mMediaPlayer);
                        }
                        SonicPlayer.this.stayAwake(false);
                        return;
                    case 3:
                        if (SonicPlayer.this.mOnBufferingUpdateListener != null) {
                            SonicPlayer.this.mOnBufferingUpdateListener.onBufferingUpdate(this.mMediaPlayer, message.arg1);
                            return;
                        }
                        return;
                    case 4:
                        if (SonicPlayer.this.mOnSeekCompleteListener != null) {
                            SonicPlayer.this.mOnSeekCompleteListener.onSeekComplete(this.mMediaPlayer);
                            return;
                        }
                        return;
                    case 5:
                        if (SonicPlayer.this.mOnVideoSizeChangedListener != null) {
                            SonicPlayer.this.mOnVideoSizeChangedListener.onVideoSizeChanged(this.mMediaPlayer, message.arg1, message.arg2);
                            return;
                        }
                        return;
                    default:
                        CoreHelper.writeTraceEntry(SonicPlayer.TAG, "Unknown message type " + message.what);
                        return;
                }
            }
            if (message.arg1 != 700) {
                CoreHelper.writeTraceEntry(SonicPlayer.TAG, "Info (" + message.arg1 + "," + message.arg2 + ")");
            }
            if (SonicPlayer.this.mOnInfoListener != null) {
                SonicPlayer.this.mOnInfoListener.onInfo(this.mMediaPlayer, message.arg1, message.arg2);
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

    public static boolean isSonicLibraryInstalled() {
        return Configuration.enableSonicAudioPlugin();
    }
}
