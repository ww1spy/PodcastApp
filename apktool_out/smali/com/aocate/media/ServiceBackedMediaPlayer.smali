.class public Lcom/aocate/media/ServiceBackedMediaPlayer;
.super Lcom/aocate/media/MediaPlayerImpl;
.source "ServiceBackedMediaPlayer.java"


# static fields
.field static final INTENT_NAME:Ljava/lang/String; = "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8"

.field private static final SBMP_TAG:Ljava/lang/String; = "AocateServiceBackedMediaPlayer"


# instance fields
.field private isErroring:Z

.field private mAudioStreamType:I

.field private mOnBufferingUpdateCallback:Lcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8$Stub;

.field private mOnCompletionCallback:Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8$Stub;

.field private mOnErrorCallback:Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8$Stub;

.field private mOnInfoCallback:Lcom/aocate/presto/service/IOnInfoListenerCallback_0_8$Stub;

.field private mOnPitchAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8$Stub;

.field private mOnPreparedCallback:Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;

.field private mOnSeekCompleteCallback:Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8$Stub;

.field private mOnSpeedAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8$Stub;

.field private mPlayMediaServiceConnection:Landroid/content/ServiceConnection;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeMode:I

.field private playMediaServiceIntent:Landroid/content/Intent;

.field protected pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

.field private pmLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private pmWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private sessionId:J


# direct methods
.method public constructor <init>(Lcom/aocate/media/MediaPlayer;Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/aocate/media/MediaPlayerImpl;-><init>(Lcom/aocate/media/MediaPlayer;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mPlayMediaServiceConnection:Landroid/content/ServiceConnection;

    .line 63
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    .line 64
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->playMediaServiceIntent:Landroid/content/Intent;

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    const/4 p2, 0x0

    .line 70
    iput-boolean p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->isErroring:Z

    const/4 v0, 0x3

    .line 71
    iput v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mAudioStreamType:I

    .line 72
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 76
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1340
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnBufferingUpdateCallback:Lcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8$Stub;

    .line 1376
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnCompletionCallback:Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8$Stub;

    .line 1425
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnErrorCallback:Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8$Stub;

    .line 1465
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnInfoCallback:Lcom/aocate/presto/service/IOnInfoListenerCallback_0_8$Stub;

    .line 1501
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnPitchAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8$Stub;

    .line 1538
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnPreparedCallback:Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;

    .line 1591
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnSeekCompleteCallback:Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8$Stub;

    .line 1637
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnSpeedAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8$Stub;

    const-string p1, "AocateServiceBackedMediaPlayer"

    const-string v0, "Instantiating ServiceBackedMediaPlayer 87"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 90
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 92
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->playMediaServiceIntent:Landroid/content/Intent;

    .line 93
    new-instance p1, Lcom/aocate/media/ServiceBackedMediaPlayer$1;

    invoke-direct {p1, p0, p3}, Lcom/aocate/media/ServiceBackedMediaPlayer$1;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer;Landroid/content/ServiceConnection;)V

    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mPlayMediaServiceConnection:Landroid/content/ServiceConnection;

    const-string p1, "AocateServiceBackedMediaPlayer"

    const-string p3, "Connecting PlayMediaService 124"

    .line 165
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :cond_0
    return-void
.end method

.method private ConnectPlayMediaService()Z
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "ConnectPlayMediaService()"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mContext:Landroid/content/Context;

    const-string v1, "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8"

    invoke-static {v0, v1}, Lcom/aocate/media/MediaPlayer;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v2, "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8 is available"

    .line 178
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v3, "Binding service"

    .line 183
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->playMediaServiceIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mPlayMediaServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1

    :cond_0
    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "Service already bound"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v2, "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8 is not available"

    .line 197
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic access$0(Lcom/aocate/media/ServiceBackedMediaPlayer;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/aocate/media/ServiceBackedMediaPlayer;J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    return-void
.end method

.method static synthetic access$10(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 0

    .line 1639
    invoke-direct {p0, p1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnSpeedAdjustmentAvailableChangedCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    return-void
.end method

.method static synthetic access$11(Lcom/aocate/media/ServiceBackedMediaPlayer;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$2(Lcom/aocate/media/ServiceBackedMediaPlayer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object p0
.end method

.method static synthetic access$3(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 0

    .line 1342
    invoke-direct {p0, p1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnBufferingUpdateCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    return-void
.end method

.method static synthetic access$4(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 0

    .line 1378
    invoke-direct {p0, p1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnCompletionCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    return-void
.end method

.method static synthetic access$5(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 0

    .line 1427
    invoke-direct {p0, p1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnErrorCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    return-void
.end method

.method static synthetic access$6(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 0

    .line 1467
    invoke-direct {p0, p1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnInfoCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    return-void
.end method

.method static synthetic access$7(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnPitchAdjustmentAvailableChangedListener(Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    return-void
.end method

.method static synthetic access$8(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 0

    .line 1540
    invoke-direct {p0, p1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnPreparedCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    return-void
.end method

.method static synthetic access$9(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 0

    .line 1593
    invoke-direct {p0, p1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnSeekCompleteCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    return-void
.end method

.method private setOnBufferingUpdateCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 3

    .line 1346
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnBufferingUpdateCallback:Lcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8$Stub;

    if-nez v0, :cond_0

    .line 1348
    new-instance v0, Lcom/aocate/media/ServiceBackedMediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/aocate/media/ServiceBackedMediaPlayer$2;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer;)V

    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnBufferingUpdateCallback:Lcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8$Stub;

    .line 1368
    :cond_0
    iget-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnBufferingUpdateCallback:Lcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8$Stub;

    invoke-interface {p1, v0, v1, v2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->registerOnBufferingUpdateCallback(JLcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1371
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1372
    invoke-virtual {p0, p1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :goto_0
    return-void
.end method

.method private setOnCompletionCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 3

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnCompletionCallback:Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8$Stub;

    if-nez v0, :cond_0

    .line 1384
    new-instance v0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;

    invoke-direct {v0, p0}, Lcom/aocate/media/ServiceBackedMediaPlayer$3;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer;)V

    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnCompletionCallback:Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8$Stub;

    .line 1417
    :cond_0
    iget-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnCompletionCallback:Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8$Stub;

    invoke-interface {p1, v0, v1, v2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->registerOnCompletionCallback(JLcom/aocate/presto/service/IOnCompletionListenerCallback_0_8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1420
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1421
    invoke-virtual {p0, p1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :goto_0
    return-void
.end method

.method private setOnErrorCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 3

    .line 1431
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnErrorCallback:Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8$Stub;

    if-nez v0, :cond_0

    .line 1433
    new-instance v0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;

    invoke-direct {v0, p0}, Lcom/aocate/media/ServiceBackedMediaPlayer$4;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer;)V

    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnErrorCallback:Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8$Stub;

    .line 1457
    :cond_0
    iget-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnErrorCallback:Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8$Stub;

    invoke-interface {p1, v0, v1, v2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->registerOnErrorCallback(JLcom/aocate/presto/service/IOnErrorListenerCallback_0_8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1460
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1461
    invoke-virtual {p0, p1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :goto_0
    return-void
.end method

.method private setOnInfoCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 3

    .line 1471
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnInfoCallback:Lcom/aocate/presto/service/IOnInfoListenerCallback_0_8$Stub;

    if-nez v0, :cond_0

    .line 1473
    new-instance v0, Lcom/aocate/media/ServiceBackedMediaPlayer$5;

    invoke-direct {v0, p0}, Lcom/aocate/media/ServiceBackedMediaPlayer$5;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer;)V

    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnInfoCallback:Lcom/aocate/presto/service/IOnInfoListenerCallback_0_8$Stub;

    .line 1493
    :cond_0
    iget-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnInfoCallback:Lcom/aocate/presto/service/IOnInfoListenerCallback_0_8$Stub;

    invoke-interface {p1, v0, v1, v2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->registerOnInfoCallback(JLcom/aocate/presto/service/IOnInfoListenerCallback_0_8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1496
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1497
    invoke-virtual {p0, p1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :goto_0
    return-void
.end method

.method private setOnPitchAdjustmentAvailableChangedListener(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 3

    .line 1507
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnPitchAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8$Stub;

    if-nez v0, :cond_0

    .line 1509
    new-instance v0, Lcom/aocate/media/ServiceBackedMediaPlayer$6;

    invoke-direct {v0, p0}, Lcom/aocate/media/ServiceBackedMediaPlayer$6;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer;)V

    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnPitchAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8$Stub;

    .line 1529
    :cond_0
    iget-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    .line 1530
    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnPitchAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8$Stub;

    .line 1529
    invoke-interface {p1, v0, v1, v2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->registerOnPitchAdjustmentAvailableChangedCallback(JLcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1533
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1534
    invoke-virtual {p0, p1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :goto_0
    return-void
.end method

.method private setOnPreparedCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 3

    .line 1544
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnPreparedCallback:Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;

    if-nez v0, :cond_0

    .line 1546
    new-instance v0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;

    invoke-direct {v0, p0}, Lcom/aocate/media/ServiceBackedMediaPlayer$7;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer;)V

    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnPreparedCallback:Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;

    .line 1583
    :cond_0
    iget-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnPreparedCallback:Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;

    invoke-interface {p1, v0, v1, v2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->registerOnPreparedCallback(JLcom/aocate/presto/service/IOnPreparedListenerCallback_0_8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1586
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1587
    invoke-virtual {p0, p1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :goto_0
    return-void
.end method

.method private setOnSeekCompleteCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 3

    .line 1597
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnSeekCompleteCallback:Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8$Stub;

    if-nez v0, :cond_0

    .line 1599
    new-instance v0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;

    invoke-direct {v0, p0}, Lcom/aocate/media/ServiceBackedMediaPlayer$8;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer;)V

    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnSeekCompleteCallback:Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8$Stub;

    .line 1629
    :cond_0
    iget-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnSeekCompleteCallback:Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8$Stub;

    invoke-interface {p1, v0, v1, v2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->registerOnSeekCompleteCallback(JLcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1632
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1633
    invoke-virtual {p0, p1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :goto_0
    return-void
.end method

.method private setOnSpeedAdjustmentAvailableChangedCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
    .locals 3

    :try_start_0
    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "Setting the service of on speed adjustment available changed"

    .line 1643
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnSpeedAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8$Stub;

    if-nez v0, :cond_0

    .line 1646
    new-instance v0, Lcom/aocate/media/ServiceBackedMediaPlayer$9;

    invoke-direct {v0, p0}, Lcom/aocate/media/ServiceBackedMediaPlayer$9;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer;)V

    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnSpeedAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8$Stub;

    .line 1666
    :cond_0
    iget-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    .line 1667
    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnSpeedAdjustmentAvailableChangedCallback:Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8$Stub;

    .line 1666
    invoke-interface {p1, v0, v1, v2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->registerOnSpeedAdjustmentAvailableChangedCallback(JLcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1670
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1671
    invoke-virtual {p0, p1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public canSetPitch()Z
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "canSetPitch() 155"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->canSetPitch(J)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 230
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 231
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 237
    throw v0
.end method

.method public canSetSpeed()Z
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "canSetSpeed() 180"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->canSetSpeed(J)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 268
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 269
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 275
    throw v0
.end method

.method error(II)V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 285
    :try_start_0
    iget-boolean v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->isErroring:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 287
    iput-boolean v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->isErroring:Z

    .line 288
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    sget-object v2, Lcom/aocate/media/MediaPlayer$State;->ERROR:Lcom/aocate/media/MediaPlayer$State;

    iput-object v2, v1, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    .line 289
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/MediaPlayer;->onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/MediaPlayer;->onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {v1, v2, p1, p2}, Lcom/aocate/media/MediaPlayer$OnErrorListener;->onError(Lcom/aocate/media/MediaPlayer;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 303
    iput-boolean v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->isErroring:Z

    .line 304
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 296
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onCompletionListener:Lcom/aocate/media/MediaPlayer$OnCompletionListener;

    if-eqz p1, :cond_1

    .line 298
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onCompletionListener:Lcom/aocate/media/MediaPlayer$OnCompletionListener;

    iget-object p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {p1, p2}, Lcom/aocate/media/MediaPlayer$OnCompletionListener;->onCompletion(Lcom/aocate/media/MediaPlayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :cond_1
    iput-boolean v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->isErroring:Z

    .line 304
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 303
    iput-boolean v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->isErroring:Z

    .line 304
    iget-object p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "finalize() 224"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 318
    throw v0
.end method

.method public getCurrentPitchStepsAdjustment()F
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "getCurrentPitchStepsAdjustment() 240"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 347
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->getCurrentPitchStepsAdjustment(J)F

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 350
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 351
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 357
    throw v0
.end method

.method public getCurrentPosition()I
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 383
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->getCurrentPosition(J)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 386
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 387
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 393
    throw v0
.end method

.method public getCurrentSpeedMultiplier()F
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "getCurrentSpeedMultiplier() 286"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 421
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->getCurrentSpeedMultiplier(J)F

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 424
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 425
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 431
    throw v0
.end method

.method public getDuration()I
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "getDuration() 311"

    .line 443
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 458
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->getDuration(J)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 461
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 462
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 468
    throw v0
.end method

.method public getMaxSpeedMultiplier()F
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "getMaxSpeedMultiplier() 332"

    .line 480
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 496
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->getMaxSpeedMultiplier(J)F

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 499
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 500
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 506
    throw v0
.end method

.method public getMinSpeedMultiplier()F
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "getMinSpeedMultiplier() 357"

    .line 518
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 534
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->getMinSpeedMultiplier(J)F

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 537
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 538
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 544
    throw v0
.end method

.method public getServiceVersionCode()I
    .locals 3

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "getVersionCode"

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    invoke-interface {v0}, Lcom/aocate/presto/service/IPlayMedia_0_8;->getVersionCode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 566
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 567
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    :goto_0
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 572
    throw v0
.end method

.method public getServiceVersionName()Ljava/lang/String;
    .locals 3

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "getVersionName"

    .line 578
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 593
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    invoke-interface {v0}, Lcom/aocate/presto/service/IPlayMedia_0_8;->getVersionName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catch_0
    move-exception v0

    .line 596
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 597
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const-string v0, ""

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 603
    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLooping()Z
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "isLooping() 382"

    .line 620
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 635
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->isLooping(J)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 638
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 639
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 645
    throw v0
.end method

.method public isPlaying()Z
    .locals 5

    .line 657
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 659
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 671
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->isPlaying(J)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catch_0
    move-exception v0

    .line 674
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 675
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 681
    throw v0
.end method

.method public pause()V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "pause() 424"

    .line 692
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 711
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->pause(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 714
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 715
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 720
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 721
    throw v0
.end method

.method public prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "prepare() 444"

    .line 731
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPreparedCallback is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mOnPreparedCallback:Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, "non-null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v3, "prepare: pmInterface is null"

    .line 735
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v3, "prepare: Failed to connect play media service"

    .line 738
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    if-eqz v0, :cond_3

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v3, "prepare: pmInterface isn\'t null"

    .line 751
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "prepare: Remote invoke pmInterface.prepare("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 755
    iget-wide v4, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 754
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->prepare(J)V

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v3, "prepare: prepared"

    .line 757
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "AocateServiceBackedMediaPlayer"

    const-string v4, "prepare: RemoteException"

    .line 760
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 762
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 767
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "Done with prepare()"

    .line 769
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 767
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 768
    throw v0
.end method

.method public prepareAsync()V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "prepareAsync() 469"

    .line 779
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 794
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->prepareAsync(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 797
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 798
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 803
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 804
    throw v0
.end method

.method public release()V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "release() 492"

    .line 814
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 817
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    if-eqz v0, :cond_2

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v3, "release() 500"

    .line 831
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->release(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 837
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 838
    invoke-virtual {p0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 840
    :goto_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mPlayMediaServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 842
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 843
    iput-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const-wide/16 v0, 0x0

    .line 844
    iput-wide v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 851
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "Releasing wakelock"

    .line 853
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 848
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 849
    throw v0
.end method

.method public reset()V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "reset() 523"

    .line 865
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 868
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 884
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->reset(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 887
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 888
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 893
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 894
    throw v0
.end method

.method public seekTo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 919
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8;->seekTo(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 922
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 923
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 928
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 929
    throw p1
.end method

.method public setAudioStreamType(I)V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAudioStreamType("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result p1

    if-nez p1, :cond_0

    .line 944
    invoke-virtual {p0, v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 947
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 950
    :try_start_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 954
    :try_start_1
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    iget v4, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mAudioStreamType:I

    invoke-interface {p1, v2, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setAudioStreamType(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 957
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 958
    invoke-virtual {p0, v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 963
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 964
    throw p1
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "AocateServiceBackedMediaPlayer"

    const-string v0, "setDataSource(context, uri)"

    .line 975
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 978
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result p1

    if-nez p1, :cond_0

    .line 980
    invoke-virtual {p0, v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 983
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 986
    :try_start_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 990
    :try_start_1
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {p1, v2, v3, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setDataSourceUri(JLandroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 993
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 994
    invoke-virtual {p0, v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 999
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1000
    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "setDataSource(path)"

    .line 1010
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1013
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1022
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    if-nez v0, :cond_1

    .line 1024
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1029
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setDataSourceString(JLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1032
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1033
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1038
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1039
    throw p1
.end method

.method public setEnableSpeedAdjustment(Z)V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "setEnableSpeedAdjustment(enableSpeedAdjustment)"

    .line 1053
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1056
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1069
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    .line 1070
    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setEnableSpeedAdjustment(JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1073
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1074
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1079
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1080
    throw p1
.end method

.method public setLooping(Z)V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLooping("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1094
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1106
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setLooping(JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1109
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1110
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1115
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1116
    throw p1
.end method

.method public setPitchStepsAdjustment(F)V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPitchStepsAdjustment("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1133
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1147
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setPitchStepsAdjustment(JF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1150
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1151
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1156
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1157
    throw p1
.end method

.method public setPlaybackPitch(F)V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPlaybackPitch("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1174
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1182
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1187
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setPlaybackPitch(JF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1190
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1191
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1196
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1197
    throw p1
.end method

.method public setPlaybackSpeed(F)V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPlaybackSpeed("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1213
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1215
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1222
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1227
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setPlaybackSpeed(JF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1230
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1231
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1236
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1237
    throw p1
.end method

.method public setSpeedAdjustmentAlgorithm(I)V
    .locals 5

    .line 1243
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1245
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1253
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1257
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setSpeedAdjustmentAlgorithm(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1260
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1261
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1266
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1267
    throw p1
.end method

.method public setVolume(FF)V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVolume("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1280
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1293
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->setVolume(JFF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1296
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1297
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1302
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1303
    throw p1
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setWakeMode(context, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1322
    :cond_0
    iput p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeMode:I

    if-eqz p2, :cond_2

    .line 1325
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    const-string v0, "power"

    .line 1327
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 1330
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1333
    :cond_1
    invoke-virtual {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1335
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "start()"

    .line 1682
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1685
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1687
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1690
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1693
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 1695
    iget v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeMode:I

    if-nez v0, :cond_1

    .line 1697
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1699
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1706
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 1710
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->start(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1713
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1714
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1719
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1720
    throw v0
.end method

.method public stop()V
    .locals 5

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "stop()"

    .line 1730
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1733
    invoke-direct {p0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->ConnectPlayMediaService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1735
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1741
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1745
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 1749
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;

    iget-wide v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->sessionId:J

    invoke-interface {v0, v3, v4}, Lcom/aocate/presto/service/IPlayMedia_0_8;->stop(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1752
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1753
    invoke-virtual {p0, v2, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1758
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1759
    throw v0
.end method
