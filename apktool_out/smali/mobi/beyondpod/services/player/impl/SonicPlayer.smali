.class public Lmobi/beyondpod/services/player/impl/SonicPlayer;
.super Ljava/lang/Object;
.source "SonicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;,
        Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;,
        Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;,
        Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;,
        Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;,
        Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;,
        Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;,
        Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;,
        Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;
    }
.end annotation


# static fields
.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final PLAYER_STATE_ERROR:I = -0x1

.field private static final PLAYER_STATE_IDLE:I = 0x0

.field private static final PLAYER_STATE_INITIALIZED:I = 0x1

.field private static final PLAYER_STATE_PAUSED:I = 0x5

.field private static final PLAYER_STATE_PLAYBACK_COMPLETED:I = 0x7

.field private static final PLAYER_STATE_PREPARED:I = 0x3

.field private static final PLAYER_STATE_PREPARING:I = 0x2

.field private static final PLAYER_STATE_RELEASED:I = -0x2

.field private static final PLAYER_STATE_STARTED:I = 0x4

.field private static final PLAYER_STATE_STOPPED:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SonicPlayer"

.field private static final TIMEOUT_US:J = 0x2710L


# instance fields
.field private _DataSource:Ljava/lang/String;

.field private _SelectedTrack:I

.field private volatile _isReleased:Z

.field private final _syncLock:Ljava/lang/Object;

.field private mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

.field private mChannelCount:I

.field private mCodec:Landroid/media/MediaCodec;

.field private mDuration:J

.field private mEventHandler:Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

.field private mExtractor:Landroid/media/MediaExtractor;

.field private mMustSeekToPosition:J

.field private mOnBufferingUpdateListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;

.field private mOnErrorListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;

.field private mOnInfoListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;

.field private mOnPreparedListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;

.field private mPlayerWorker:Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;

.field private mSampleRate:I

.field private mSonic:Lorg/vinuxproject/sonic/Sonic;

.field private mSonicInBuffer:[B

.field private mSonicOutBuffer:[B

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private playingRunnable:Ljava/lang/Runnable;

.field private preparingRunnable:Ljava/lang/Runnable;

.field private seekingRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, -0x1

    .line 63
    iput-wide v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mDuration:J

    .line 71
    iput-wide v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mMustSeekToPosition:J

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    .line 76
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->_isReleased:Z

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->_syncLock:Ljava/lang/Object;

    .line 267
    new-instance v1, Lmobi/beyondpod/services/player/impl/SonicPlayer$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$1;-><init>(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V

    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playingRunnable:Ljava/lang/Runnable;

    .line 285
    new-instance v1, Lmobi/beyondpod/services/player/impl/SonicPlayer$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$2;-><init>(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V

    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->seekingRunnable:Ljava/lang/Runnable;

    .line 305
    new-instance v1, Lmobi/beyondpod/services/player/impl/SonicPlayer$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$3;-><init>(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V

    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->preparingRunnable:Ljava/lang/Runnable;

    .line 91
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v2, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;-><init>(Lmobi/beyondpod/services/player/impl/SonicPlayer;Lmobi/beyondpod/services/player/impl/SonicPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    new-instance v2, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;-><init>(Lmobi/beyondpod/services/player/impl/SonicPlayer;Lmobi/beyondpod/services/player/impl/SonicPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

    goto :goto_0

    .line 101
    :cond_1
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

    .line 104
    :goto_0
    new-instance v1, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;

    invoke-direct {v1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;-><init>(Lmobi/beyondpod/services/player/impl/SonicPlayer$1;)V

    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mPlayerWorker:Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mPlayerWorker:Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;

    const-string v1, "SonicPlayer Worker Thread"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mPlayerWorker:Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->start()V

    .line 107
    :catch_0
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mPlayerWorker:Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->access$100(Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0xa

    .line 111
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lmobi/beyondpod/services/player/impl/SonicPlayer;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$1100(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnBufferingUpdateListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$1200(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnSeekCompleteListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$1300(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnVideoSizeChangedListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$1400(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnErrorListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1500(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnInfoListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playInternal()V

    return-void
.end method

.method static synthetic access$402(Lmobi/beyondpod/services/player/impl/SonicPlayer;I)I
    .locals 0

    .line 41
    iput p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    return p1
.end method

.method static synthetic access$500(Lmobi/beyondpod/services/player/impl/SonicPlayer;[I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->postEvent([I)V

    return-void
.end method

.method static synthetic access$600(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Landroid/media/MediaExtractor;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/services/player/impl/SonicPlayer;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mMustSeekToPosition:J

    return-wide v0
.end method

.method static synthetic access$702(Lmobi/beyondpod/services/player/impl/SonicPlayer;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mMustSeekToPosition:J

    return-wide p1
.end method

.method static synthetic access$800(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnPreparedListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$900(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnCompletionListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;

    return-object p0
.end method

.method public static isSonicLibraryInstalled()Z
    .locals 1

    .line 1332
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableSonicAudioPlugin()Z

    move-result v0

    return v0
.end method

.method private playInternal()V
    .locals 25
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v0, p0

    .line 645
    iget-object v1, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    goto/16 :goto_b

    .line 651
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    .line 653
    iget-object v1, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 654
    iget-object v1, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v4, 0x0

    move-object v5, v1

    move v1, v4

    :goto_1
    const/16 v6, 0x64

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 661
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    const/4 v10, 0x2

    if-nez v9, :cond_12

    .line 663
    iget-wide v11, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mMustSeekToPosition:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    const/4 v11, 0x4

    if-ltz v9, :cond_2

    .line 665
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->flush()V

    .line 666
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v9}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->flush()V

    .line 667
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    invoke-virtual {v9}, Lorg/vinuxproject/sonic/Sonic;->flush()V

    .line 668
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    iget-wide v13, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mMustSeekToPosition:J

    invoke-virtual {v9, v13, v14, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-wide/16 v12, -0x1

    .line 669
    iput-wide v12, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mMustSeekToPosition:J

    .line 670
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v9}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->play()V

    .line 671
    new-array v9, v8, [I

    aput v11, v9, v4

    invoke-direct {v0, v9}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->postEvent([I)V

    .line 674
    :cond_2
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v9}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->isPlaying()Z

    move-result v9

    if-nez v9, :cond_3

    const-string v2, "SonicPlayer"

    const-string v3, "Playing runnable found that the audioTrack is not Playing. Stopping the playback loop..."

    .line 676
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 681
    :cond_3
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_7

    .line 686
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v14

    if-ge v14, v3, :cond_4

    if-eqz v2, :cond_4

    .line 688
    aget-object v14, v2, v9

    goto :goto_2

    .line 691
    :cond_4
    iget-object v14, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v14, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 694
    :goto_2
    iget-object v15, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15, v14, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    if-gez v14, :cond_5

    move/from16 v20, v4

    move v1, v8

    const-wide/16 v21, 0x0

    goto :goto_3

    .line 703
    :cond_5
    iget-object v15, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v15

    move/from16 v20, v14

    move-wide/from16 v21, v15

    .line 706
    :goto_3
    iget-object v14, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    const/16 v19, 0x0

    if-eqz v1, :cond_6

    move/from16 v23, v11

    goto :goto_4

    :cond_6
    move/from16 v23, v4

    :goto_4
    move-object/from16 v17, v14

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v23}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v1, :cond_12

    .line 711
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->advance()Z

    .line 719
    :cond_7
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 720
    iget-object v14, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v14, v9, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12

    if-ltz v12, :cond_d

    .line 724
    iget-object v11, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicInBuffer:[B

    if-eqz v11, :cond_8

    iget-object v11, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicInBuffer:[B

    array-length v11, v11

    iget v13, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v11, v13, :cond_9

    .line 725
    :cond_8
    iget v11, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int/2addr v11, v10

    new-array v10, v11, [B

    iput-object v10, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicInBuffer:[B

    .line 728
    :cond_9
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v10

    if-ge v10, v3, :cond_a

    if-eqz v5, :cond_a

    .line 730
    aget-object v10, v5, v12

    goto :goto_5

    .line 733
    :cond_a
    iget-object v10, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v10, v12}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    :goto_5
    if-eqz v10, :cond_b

    .line 737
    iget-object v11, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicInBuffer:[B

    iget v13, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v10, v11, v4, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 738
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 741
    :cond_b
    iget v10, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v10, :cond_c

    .line 742
    iget-object v10, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    iget-object v11, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicInBuffer:[B

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v10, v11, v9}, Lorg/vinuxproject/sonic/Sonic;->putBytes([BI)Z

    .line 744
    :cond_c
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playSonicBuffer()I

    .line 746
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9, v12, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_6

    :cond_d
    const/4 v9, -0x3

    if-ne v12, v9, :cond_e

    .line 751
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v9

    if-ge v9, v3, :cond_11

    .line 752
    iget-object v5, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto/16 :goto_6

    :cond_e
    const/4 v9, -0x2

    if-ne v12, v9, :cond_10

    .line 757
    iget-object v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    const-string v12, "sample-rate"

    .line 758
    invoke-virtual {v9, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    const-string v13, "channel-count"

    .line 759
    invoke-virtual {v9, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    .line 761
    iget v13, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSampleRate:I

    if-ne v12, v13, :cond_f

    iget v13, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mChannelCount:I

    if-eq v9, v13, :cond_11

    :cond_f
    const-string v13, "SonicPlayer"

    const-string v14, " Media format changed from sampleRate: form %s => %s, Channels: from %s => %s"

    .line 763
    new-array v11, v11, [Ljava/lang/Object;

    iget v15, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSampleRate:I

    .line 764
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v8

    iget v15, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mChannelCount:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v3, 0x3

    aput-object v15, v11, v3

    .line 763
    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iput v12, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSampleRate:I

    iput v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mChannelCount:I

    .line 767
    new-array v3, v3, [I

    const/16 v9, 0xc8

    aput v9, v3, v4

    iget v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSampleRate:I

    aput v9, v3, v8

    iget v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mChannelCount:I

    aput v9, v3, v10

    invoke-direct {v0, v3}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->postEvent([I)V

    .line 769
    iget-object v3, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    iget v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSampleRate:I

    invoke-virtual {v3, v9}, Lorg/vinuxproject/sonic/Sonic;->setSampleRate(I)V

    .line 770
    iget-object v3, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    iget v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mChannelCount:I

    invoke-virtual {v3, v9}, Lorg/vinuxproject/sonic/Sonic;->setNumChannels(I)V

    .line 771
    iget-object v3, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    iget v9, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSampleRate:I

    iget v10, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mChannelCount:I

    invoke-virtual {v3, v9, v10}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->setRateAndChannels(II)V

    .line 773
    iget-object v3, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v3}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_11

    .line 775
    iput v7, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    .line 776
    new-array v1, v8, [I

    aput v6, v1, v4

    invoke-direct {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->postEvent([I)V

    return-void

    :cond_10
    if-ne v12, v7, :cond_11

    const-string v3, "SonicPlayer"

    .line 783
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Playback timeout... waiting for more data at: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    .line 784
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 783
    invoke-static {v3, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_6
    const/16 v3, 0x15

    goto/16 :goto_1

    :cond_12
    :goto_7
    if-eqz v1, :cond_18

    const/16 v1, 0xf

    .line 794
    :cond_13
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playSonicBuffer()I

    move-result v2

    if-lez v2, :cond_14

    const-wide/16 v11, 0x64

    .line 797
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    const-string v3, "SonicPlayer"

    const-string v5, "Waiting for Sonic to finish..."

    .line 798
    invoke-static {v3, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    :cond_14
    if-lez v2, :cond_15

    if-gtz v1, :cond_13

    .line 804
    :cond_15
    iget-object v1, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v1}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->getHeadPosition()I

    move-result v1

    move v2, v1

    move v1, v4

    :goto_8
    const/16 v3, 0xa

    if-eq v1, v3, :cond_17

    const-wide/16 v11, 0x1f4

    .line 807
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 808
    iget-object v3, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v3}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->getHeadPosition()I

    move-result v3

    if-ne v2, v3, :cond_16

    goto :goto_9

    :cond_16
    const-string v2, "SonicPlayer"

    .line 814
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waiting for AudioTrack to finish... "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_8

    .line 818
    :cond_17
    :goto_9
    iget-object v1, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V

    .line 819
    iget-object v1, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v1}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->flush()V

    .line 820
    new-array v1, v8, [I

    aput v10, v1, v4

    invoke-direct {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->postEvent([I)V

    const/4 v1, 0x7

    .line 821
    iput v1, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 826
    :catch_0
    iput v7, v0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    .line 827
    new-array v1, v8, [I

    aput v6, v1, v4

    invoke-direct {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->postEvent([I)V

    :cond_18
    :goto_a
    return-void

    .line 646
    :cond_19
    :goto_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Data source not prepared!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private playSonicBuffer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    invoke-virtual {v0}, Lorg/vinuxproject/sonic/Sonic;->availableBytes()I

    move-result v0

    if-lez v0, :cond_3

    .line 837
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicOutBuffer:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicOutBuffer:[B

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 839
    new-array v1, v1, [B

    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicOutBuffer:[B

    .line 841
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicOutBuffer:[B

    invoke-virtual {v1, v2, v0}, Lorg/vinuxproject/sonic/Sonic;->receiveBytes([BI)I

    .line 843
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicOutBuffer:[B

    invoke-virtual {v1, v2, v0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->writeSamples([BI)I

    move-result v1

    if-gez v1, :cond_3

    const/4 v0, -0x4

    if-ne v1, v0, :cond_2

    const-string v0, "SonicPlayer"

    const-string v2, "AudioTrack writeSamples failed with PERMISSION_DENIED. Ignoring..."

    .line 848
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 852
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack writeSamples failed! Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v1, "SonicPlayer"

    .line 853
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    throw v0

    :cond_3
    return v0
.end method

.method private playerPlaybackHandler()Landroid/os/Handler;
    .locals 1

    .line 163
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mPlayerWorker:Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->access$200(Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private varargs postEvent([I)V
    .locals 3

    .line 589
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 593
    array-length v2, p1

    if-le v2, v1, :cond_0

    .line 594
    aget v1, p1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    :cond_0
    const/4 v1, 0x2

    .line 595
    array-length v2, p1

    if-le v2, v1, :cond_1

    .line 596
    aget p1, p1, v1

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 598
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private resetInternal()V
    .locals 3

    const/4 v0, 0x0

    .line 526
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->stayAwake(Z)V

    .line 531
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 532
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playerPlaybackHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->release()V

    .line 537
    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    .line 540
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 543
    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    .line 546
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 551
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SonicPlayer"

    const-string v2, "MediaCodec reset failed - Codec invalid state."

    .line 555
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 558
    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    .line 561
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    invoke-virtual {v0}, Lorg/vinuxproject/sonic/Sonic;->close()V

    .line 564
    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    .line 567
    :cond_3
    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicInBuffer:[B

    .line 568
    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonicOutBuffer:[B

    return-void
.end method

.method private stayAwake(Z)V
    .locals 1

    .line 393
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 395
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 399
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 5

    .line 450
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 453
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 455
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v2, 0x3e8

    .line 457
    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getDuration()I
    .locals 5

    .line 467
    iget-wide v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mDuration:J

    :goto_0
    long-to-int v0, v0

    return v0
.end method

.method public getPitch()F
    .locals 1

    .line 630
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    invoke-virtual {v0}, Lorg/vinuxproject/sonic/Sonic;->getPitch()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 610
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    invoke-virtual {v0}, Lorg/vinuxproject/sonic/Sonic;->getSpeed()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 417
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isReleased()Z
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->_isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->stayAwake(Z)V

    .line 344
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->pause()V

    const/4 v0, 0x5

    .line 345
    iput v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    return-void
.end method

.method public prepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() invoked from invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->_DataSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    .line 190
    :goto_0
    iget-object v3, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 192
    iget-object v3, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "SonicPlayer"

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepare found track: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mime"

    .line 194
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio/"

    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    iput v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->_SelectedTrack:I

    .line 198
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    iget v5, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->_SelectedTrack:I

    invoke-virtual {v2, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 199
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    .line 200
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const-string v2, "durationUs"

    .line 201
    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mDuration:J

    const-string v2, "channel-count"

    .line 202
    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mChannelCount:I

    const-string v2, "sample-rate"

    .line 203
    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSampleRate:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_2
    :goto_1
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    const/16 v3, 0x64

    const/4 v4, -0x1

    if-nez v2, :cond_3

    .line 211
    iput v4, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    .line 212
    new-array v1, v1, [I

    aput v3, v1, v0

    invoke-direct {p0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->postEvent([I)V

    return-void

    .line 216
    :cond_3
    new-instance v2, Lorg/vinuxproject/sonic/Sonic;

    iget v5, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSampleRate:I

    iget v6, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mChannelCount:I

    invoke-direct {v2, v5, v6}, Lorg/vinuxproject/sonic/Sonic;-><init>(II)V

    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    .line 217
    new-instance v2, Lorg/vinuxproject/sonic/AndroidAudioDevice;

    iget v5, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSampleRate:I

    iget v6, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mChannelCount:I

    invoke-direct {v2, v5, v6}, Lorg/vinuxproject/sonic/AndroidAudioDevice;-><init>(II)V

    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    .line 219
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v2}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    .line 221
    iput v4, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    .line 222
    new-array v1, v1, [I

    aput v3, v1, v0

    invoke-direct {p0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->postEvent([I)V

    return-void

    .line 226
    :cond_4
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    const/4 v2, 0x3

    .line 228
    iput v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    .line 229
    new-array v2, v1, [I

    aput v1, v2, v0

    invoke-direct {p0, v2}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->postEvent([I)V

    return-void
.end method

.method public prepareAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 234
    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() invoked from invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    .line 237
    iput v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    .line 238
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playerPlaybackHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->preparingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playerPlaybackHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->preparingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 488
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->resetInternal()V

    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnBufferingUpdateListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;

    .line 495
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnCompletionListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;

    .line 496
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnErrorListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;

    .line 497
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnInfoListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;

    .line 498
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnPreparedListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;

    .line 499
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnSeekCompleteListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;

    .line 500
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnVideoSizeChangedListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;

    const/4 v1, -0x2

    .line 502
    iput v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    .line 503
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mPlayerWorker:Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->release()V

    .line 504
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mPlayerWorker:Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;

    .line 506
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->_syncLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 507
    :try_start_0
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->_isReleased:Z

    .line 508
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SonicPlayer"

    const-string v1, "SonicPlayer Released!"

    .line 509
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 508
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2

    .line 519
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->resetInternal()V

    const/4 v0, 0x0

    .line 520
    iput v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const-string v0, "SonicPlayer"

    const-string v1, "SonicPlayer Reset!"

    .line 521
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 430
    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 431
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "seekTo() invoked without first calling prepare()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    int-to-long v0, p1

    .line 433
    iput-wide v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mMustSeekToPosition:J

    .line 434
    iget-wide v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mMustSeekToPosition:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mMustSeekToPosition:J

    .line 436
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 438
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playerPlaybackHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->seekingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playerPlaybackHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->seekingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 583
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v0, p1}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->setAudioStreamType(I)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 169
    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    if-eqz v0, :cond_0

    .line 170
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource() invoked from invalid state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->_DataSource:Ljava/lang/String;

    .line 174
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->reset()V

    .line 177
    :cond_1
    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mExtractor:Landroid/media/MediaExtractor;

    const/4 p1, 0x1

    .line 178
    iput p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    return-void
.end method

.method public setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnBufferingUpdateListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnCompletionListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;)V
    .locals 0

    .line 1197
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnErrorListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;)V
    .locals 0

    .line 1325
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnInfoListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnPreparedListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnSeekCompleteListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mOnVideoSizeChangedListener:Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPitch(F)V
    .locals 1

    .line 624
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    invoke-virtual {v0, p1}, Lorg/vinuxproject/sonic/Sonic;->setPitch(F)V

    :cond_0
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 604
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    invoke-virtual {v0, p1}, Lorg/vinuxproject/sonic/Sonic;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 638
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v0, p1, p2}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public setVolumeBoost(F)V
    .locals 1

    .line 618
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mSonic:Lorg/vinuxproject/sonic/Sonic;

    invoke-virtual {v0, p1}, Lorg/vinuxproject/sonic/Sonic;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3

    .line 371
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 377
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    .line 379
    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "power"

    .line 382
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    .line 383
    const-class v2, Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 384
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_2

    .line 387
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 252
    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 255
    :cond_0
    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() invoked from invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 258
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->stayAwake(Z)V

    .line 259
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->play()V

    .line 261
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playerPlaybackHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playerPlaybackHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->playingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    iput v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 330
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->stayAwake(Z)V

    .line 331
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mAudioTrack:Lorg/vinuxproject/sonic/AndroidAudioDevice;

    invoke-virtual {v0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->stop()V

    const/4 v0, 0x6

    .line 332
    iput v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer;->mState:I

    return-void
.end method
