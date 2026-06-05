.class public Lmobi/beyondpod/services/player/impl/ChromecastPlayer;
.super Ljava/lang/Object;
.source "ChromecastPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;,
        Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;,
        Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;,
        Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;,
        Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;,
        Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;,
        Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;,
        Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;
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

.field public static final MSG_ERROR_CHROMECAST:I = 0x18a92

.field public static final MSG_ERROR_EXTRA_INVALID_MESSAGE_STREAM:I = 0x64

.field public static final MSG_ERROR_EXTRA_SESSION_INTERRUPTED:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ChromecastPlayer"


# instance fields
.field private _DataSource:Ljava/lang/String;

.field private _IsPlaying:Z

.field private _LastKnownPosition:I

.field private _MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

.field private _MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

.field private _MediaInfo:Lcom/google/android/gms/cast/MediaInfo;

.field private mEventHandler:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

.field private mOnBufferingUpdateListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;

.field private mOnErrorListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;

.field private mOnInfoListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;

.field private mOnPreparedListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_LastKnownPosition:I

    .line 40
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_IsPlaying:Z

    .line 58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    new-instance p1, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

    invoke-direct {p1, p0, p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Landroid/os/Looper;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    new-instance p1, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

    invoke-direct {p1, p0, p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Landroid/os/Looper;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

    goto :goto_0

    .line 68
    :cond_1
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

    .line 72
    :goto_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getMediaControlChannel()Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    .line 73
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V

    .line 74
    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->setNotificationListener(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;)V

    .line 110
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getMediaFeedbackChannel()Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    .line 111
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->setNotificationListener(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;[I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->postEvent([I)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_DataSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnInfoListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnPreparedListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnCompletionListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$500(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnBufferingUpdateListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnSeekCompleteListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnVideoSizeChangedListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$802(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_IsPlaying:Z

    return p1
.end method

.method static synthetic access$900(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnErrorListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;

    return-object p0
.end method

.method private varargs postEvent([I)V
    .locals 3

    .line 510
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 514
    array-length v2, p1

    if-le v2, v1, :cond_0

    .line 515
    aget v1, p1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    :cond_0
    const/4 v1, 0x2

    .line 516
    array-length v2, p1

    if-le v2, v1, :cond_1

    .line 517
    aget p1, p1, v1

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 519
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private resetInternal()V
    .locals 2

    const/4 v0, 0x0

    .line 484
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->stayAwake(Z)V

    .line 490
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mEventHandler:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private stayAwake(Z)V
    .locals 1

    .line 324
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 330
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 4

    .line 391
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 395
    iget v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_LastKnownPosition:I

    return v0

    .line 398
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getApproximateStreamPosition()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_LastKnownPosition:I

    .line 399
    iget v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_LastKnownPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ChromecastPlayer"

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== Unable to getPosition from remote media!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 4

    .line 419
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getStreamDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ChromecastPlayer"

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== Unable to getDuration from remote media!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_IsPlaying:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->stop()V

    return-void
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareAsync()V
    .locals 4

    const-string v0, "ChromecastPlayer"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chromecast Prepare Started for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_DataSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 188
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->postEvent([I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 194
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->hasRemotePlayerLoadedMedia()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_DataSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ChromecastPlayer"

    const-string v3, "Found that media is already loaded! Nothing to do."

    .line 199
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-array v2, v1, [I

    aput v1, v2, v0

    invoke-direct {p0, v2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->postEvent([I)V

    return-void

    .line 204
    :cond_1
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    iget-object v3, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2, v3}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->load(Lcom/google/android/gms/cast/MediaInfo;)V

    const/4 v2, 0x2

    .line 205
    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->postEvent([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 210
    new-array v1, v1, [I

    const/16 v3, 0x64

    aput v3, v1, v0

    invoke-direct {p0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->postEvent([I)V

    const-string v0, "ChromecastPlayer"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open remote media!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0x18a92
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x28
    .end array-data
.end method

.method public release()V
    .locals 2

    .line 448
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->resetInternal()V

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnBufferingUpdateListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;

    .line 451
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnCompletionListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;

    .line 452
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnErrorListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;

    .line 453
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnInfoListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;

    .line 454
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnPreparedListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;

    .line 455
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnSeekCompleteListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;

    .line 456
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnVideoSizeChangedListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;

    .line 458
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->setNotificationListener(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;)V

    .line 461
    :cond_0
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    .line 463
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->setNotificationListener(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;)V

    .line 466
    :cond_1
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    const-string v0, "ChromecastPlayer"

    const-string v1, "Chromecast Player Released!"

    .line 468
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 478
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->resetInternal()V

    const-string v0, "ChromecastPlayer"

    const-string v1, "Chromecast Player Reset!"

    .line 479
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->getCurrentPosition()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 366
    new-array p1, v3, [I

    const/4 v0, 0x4

    aput v0, p1, v2

    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->postEvent([I)V

    return-void

    .line 372
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    int-to-long v4, p1

    invoke-virtual {v0, v1, v4, v5}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->seek(Lcom/google/android/gms/cast/MediaInfo;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 376
    new-array v0, v3, [I

    const/16 v1, 0x64

    aput v1, v0, v2

    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->postEvent([I)V

    const-string v0, "ChromecastPlayer"

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== Unable to seek remote media!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setDataSource(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 165
    iget-object v0, p1, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->TrackURL:Ljava/lang/String;

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_DataSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_LastKnownPosition:I

    .line 168
    new-instance v0, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v0}, Lcom/google/android/gms/cast/MediaMetadata;-><init>()V

    .line 169
    new-instance v1, Lcom/google/android/gms/common/images/WebImage;

    iget-object v2, p1, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->TrackImageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->addImage(Lcom/google/android/gms/common/images/WebImage;)V

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    .line 170
    iget-object v2, p1, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->TrackName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 171
    iget-object v2, p1, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->TrackDate:Ljava/util/Date;

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo$Builder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_DataSource:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v1

    iget-object p1, p1, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->MimeType:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo$Builder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaInfo:Lcom/google/android/gms/cast/MediaInfo;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnBufferingUpdateListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnCompletionListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnErrorListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;)V
    .locals 0

    .line 994
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnInfoListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnPreparedListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnSeekCompleteListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mOnVideoSizeChangedListener:Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3

    .line 299
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 305
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    .line 307
    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "power"

    .line 310
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_2

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    .line 312
    const-class v2, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 313
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_2

    .line 315
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 227
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-eqz v1, :cond_0

    .line 235
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_IsPlaying:Z

    .line 236
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->play()V

    .line 238
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->stayAwake(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 243
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x64

    aput v3, v0, v2

    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->postEvent([I)V

    const-string v0, "ChromecastPlayer"

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== Unable to start remote media!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 256
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ChromecastPlayer"

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== Unable to stop remote media!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->stayAwake(Z)V

    .line 265
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->_IsPlaying:Z

    return-void
.end method
