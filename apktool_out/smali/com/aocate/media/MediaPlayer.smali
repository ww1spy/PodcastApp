.class public Lcom/aocate/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;,
        Lcom/aocate/media/MediaPlayer$OnCompletionListener;,
        Lcom/aocate/media/MediaPlayer$OnErrorListener;,
        Lcom/aocate/media/MediaPlayer$OnInfoListener;,
        Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;,
        Lcom/aocate/media/MediaPlayer$OnPreparedListener;,
        Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;,
        Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;,
        Lcom/aocate/media/MediaPlayer$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MP_TAG:Ljava/lang/String; = "AocateReplacementMediaPlayer"

.field private static final PITCH_STEP_CONSTANT:D = 1.0594630943593

.field private static SPEED_ADJUSTMENT_MARKET_URI:Landroid/net/Uri;

.field private static prestoMarketIntent:Landroid/content/Intent;


# instance fields
.field private amp:Lcom/aocate/media/AndroidMediaPlayer;

.field protected enableSpeedAdjustment:Z

.field private lastKnownPosition:I

.field lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mAudioStreamType:I

.field private mContext:Landroid/content/Context;

.field private mIsLooping:Z

.field private mLeftVolume:F

.field private mPitchStepsAdjustment:F

.field private mRightVolume:F

.field private mServiceDisconnectedHandler:Landroid/os/Handler;

.field private mSpeedMultiplier:F

.field private mWakeMode:I

.field mpi:Lcom/aocate/media/MediaPlayerImpl;

.field onBufferingUpdateListener:Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;

.field onCompletionListener:Lcom/aocate/media/MediaPlayer$OnCompletionListener;

.field onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;

.field onInfoListener:Lcom/aocate/media/MediaPlayer$OnInfoListener;

.field onPitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

.field onPreparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

.field onSeekCompleteListener:Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;

.field onSpeedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

.field protected pitchAdjustmentAvailable:Z

.field pitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

.field preparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

.field private sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

.field private speedAdjustmentAlgorithm:I

.field protected speedAdjustmentAvailable:Z

.field speedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

.field state:Lcom/aocate/media/MediaPlayer$State;

.field stringDataSource:Ljava/lang/String;

.field uriDataSource:Landroid/net/Uri;

.field private useService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "market://details?id=com.aocate.presto"

    .line 89
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    sput-object v0, Lcom/aocate/media/MediaPlayer;->SPEED_ADJUSTMENT_MARKET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/aocate/media/MediaPlayer;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lcom/aocate/media/MediaPlayer;->enableSpeedAdjustment:Z

    const/4 v1, 0x0

    .line 162
    iput v1, p0, Lcom/aocate/media/MediaPlayer;->lastKnownPosition:I

    .line 166
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x3

    .line 167
    iput v2, p0, Lcom/aocate/media/MediaPlayer;->mAudioStreamType:I

    .line 169
    iput-boolean v1, p0, Lcom/aocate/media/MediaPlayer;->mIsLooping:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 170
    iput v2, p0, Lcom/aocate/media/MediaPlayer;->mLeftVolume:F

    const/4 v3, 0x0

    .line 171
    iput v3, p0, Lcom/aocate/media/MediaPlayer;->mPitchStepsAdjustment:F

    .line 172
    iput v2, p0, Lcom/aocate/media/MediaPlayer;->mRightVolume:F

    .line 173
    iput v2, p0, Lcom/aocate/media/MediaPlayer;->mSpeedMultiplier:F

    .line 174
    iput v1, p0, Lcom/aocate/media/MediaPlayer;->mWakeMode:I

    .line 175
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    .line 176
    iput-boolean v1, p0, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailable:Z

    .line 177
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

    .line 178
    iput-boolean v1, p0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailable:Z

    .line 180
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->mServiceDisconnectedHandler:Landroid/os/Handler;

    .line 185
    sget-object v2, Lcom/aocate/media/MediaPlayer$State;->INITIALIZED:Lcom/aocate/media/MediaPlayer$State;

    iput-object v2, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    .line 186
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->stringDataSource:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->uriDataSource:Landroid/net/Uri;

    .line 188
    iput-boolean v1, p0, Lcom/aocate/media/MediaPlayer;->useService:Z

    .line 196
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onBufferingUpdateListener:Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;

    .line 197
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onCompletionListener:Lcom/aocate/media/MediaPlayer$OnCompletionListener;

    .line 198
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;

    .line 199
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onInfoListener:Lcom/aocate/media/MediaPlayer$OnInfoListener;

    .line 204
    new-instance v1, Lcom/aocate/media/MediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/aocate/media/MediaPlayer$1;-><init>(Lcom/aocate/media/MediaPlayer;)V

    iput-object v1, p0, Lcom/aocate/media/MediaPlayer;->onPitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

    .line 229
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

    .line 231
    new-instance v1, Lcom/aocate/media/MediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/aocate/media/MediaPlayer$2;-><init>(Lcom/aocate/media/MediaPlayer;)V

    iput-object v1, p0, Lcom/aocate/media/MediaPlayer;->onPreparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    .line 243
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->preparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    .line 244
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onSeekCompleteListener:Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;

    .line 249
    new-instance v1, Lcom/aocate/media/MediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/aocate/media/MediaPlayer$3;-><init>(Lcom/aocate/media/MediaPlayer;)V

    iput-object v1, p0, Lcom/aocate/media/MediaPlayer;->onSpeedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

    .line 274
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

    .line 276
    sget v0, Lcom/aocate/media/SpeedAdjustmentAlgorithm;->SONIC:I

    iput v0, p0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAlgorithm:I

    .line 283
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 284
    iput-boolean p2, p0, Lcom/aocate/media/MediaPlayer;->useService:Z

    .line 290
    new-instance p2, Lcom/aocate/media/AndroidMediaPlayer;

    invoke-direct {p2, p0, p1}, Lcom/aocate/media/AndroidMediaPlayer;-><init>(Lcom/aocate/media/MediaPlayer;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    iput-object p2, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    const-string p2, "AocateReplacementMediaPlayer"

    const-string v0, "setupMpi"

    .line 294
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, p1}, Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/aocate/media/MediaPlayer;)Lcom/aocate/media/AndroidMediaPlayer;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    return-object p0
.end method

.method static synthetic access$1(Lcom/aocate/media/MediaPlayer;)Lcom/aocate/media/ServiceBackedMediaPlayer;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/aocate/media/MediaPlayer;->sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

    return-object p0
.end method

.method static synthetic access$2(Lcom/aocate/media/MediaPlayer;Lcom/aocate/media/MediaPlayerImpl;Lcom/aocate/media/MediaPlayerImpl;)V
    .locals 0

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/aocate/media/MediaPlayer;->switchMediaPlayerImpl(Lcom/aocate/media/MediaPlayerImpl;Lcom/aocate/media/MediaPlayerImpl;)V

    return-void
.end method

.method static synthetic access$3(Lcom/aocate/media/MediaPlayer;Lcom/aocate/media/ServiceBackedMediaPlayer;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

    return-void
.end method

.method static synthetic access$4(Lcom/aocate/media/MediaPlayer;)Landroid/os/Handler;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/aocate/media/MediaPlayer;->mServiceDisconnectedHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5(Lcom/aocate/media/MediaPlayer;)Landroid/content/Context;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/aocate/media/MediaPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6(Lcom/aocate/media/MediaPlayer;Lcom/aocate/media/AndroidMediaPlayer;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    return-void
.end method

.method static synthetic access$7(Lcom/aocate/media/MediaPlayer;Landroid/os/Handler;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->mServiceDisconnectedHandler:Landroid/os/Handler;

    return-void
.end method

.method private static getPitchStepsAdjustment(F)F
    .locals 6

    float-to-double v0, p0

    .line 1056
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3ff0f38f92d97978L    # 1.0594630943593

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v2

    div-double/2addr v0, v4

    double-to-float p0, v0

    return p0
.end method

.method public static getPrestoMarketIntent()Landroid/content/Intent;
    .locals 3

    .line 137
    sget-object v0, Lcom/aocate/media/MediaPlayer;->prestoMarketIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 139
    sget-object v2, Lcom/aocate/media/MediaPlayer;->SPEED_ADJUSTMENT_MARKET_URI:Landroid/net/Uri;

    .line 138
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/aocate/media/MediaPlayer;->prestoMarketIntent:Landroid/content/Intent;

    .line 141
    :cond_0
    sget-object v0, Lcom/aocate/media/MediaPlayer;->prestoMarketIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private invalidServiceConnectionConfiguration()Z
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    instance-of v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 300
    iget-boolean v0, p0, Lcom/aocate/media/MediaPlayer;->useService:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aocate/media/MediaPlayer;->isPrestoLibraryInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "We could be using the service, but we\'re not 316"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v2, "this.mpi is not a ServiceBackedMediaPlayer, but we couldn\'t use it anyway 321"

    .line 309
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 313
    :cond_1
    iget-boolean v0, p0, Lcom/aocate/media/MediaPlayer;->useService:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aocate/media/MediaPlayer;->isPrestoLibraryInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v2, "We could be using a ServiceBackedMediaPlayer and we are 327"

    .line 315
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "We\'re trying to use a ServiceBackedMediaPlayer but we shouldn\'t be 332"

    .line 320
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000

    .line 114
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPrestoLibraryInstalled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.aocate.intent.PLAY_AUDIO_ADJUST_SPEED_0_8"

    .line 127
    invoke-static {p0, v0}, Lcom/aocate/media/MediaPlayer;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static openPrestoMarketIntent(Landroid/content/Context;)V
    .locals 1

    .line 151
    invoke-static {}, Lcom/aocate/media/MediaPlayer;->getPrestoMarketIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setupMpi(Landroid/content/Context;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "setupMpi 336"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-boolean v0, p0, Lcom/aocate/media/MediaPlayer;->useService:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aocate/media/MediaPlayer;->isPrestoLibraryInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    instance-of v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;

    if-eqz v0, :cond_0

    const-string p1, "AocateReplacementMediaPlayer"

    const-string v0, "Already using ServiceBackedMediaPlayer"

    .line 334
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

    if-nez v0, :cond_1

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "Instantiating new ServiceBackedMediaPlayer 346"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Lcom/aocate/media/ServiceBackedMediaPlayer;

    .line 340
    new-instance v1, Lcom/aocate/media/MediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/aocate/media/MediaPlayer$4;-><init>(Lcom/aocate/media/MediaPlayer;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;-><init>(Lcom/aocate/media/MediaPlayer;Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 339
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

    .line 424
    :cond_1
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-direct {p0, p1, v0}, Lcom/aocate/media/MediaPlayer;->switchMediaPlayerImpl(Lcom/aocate/media/MediaPlayerImpl;Lcom/aocate/media/MediaPlayerImpl;)V

    goto :goto_1

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    instance-of v0, v0, Lcom/aocate/media/AndroidMediaPlayer;

    if-eqz v0, :cond_3

    const-string p1, "AocateReplacementMediaPlayer"

    const-string v0, "Already using AndroidMediaPlayer"

    .line 428
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 431
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    if-nez v0, :cond_4

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "Instantiating new AndroidMediaPlayer (this should be impossible)"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Lcom/aocate/media/AndroidMediaPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aocate/media/AndroidMediaPlayer;-><init>(Lcom/aocate/media/MediaPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    .line 435
    :cond_4
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    invoke-direct {p0, p1, v0}, Lcom/aocate/media/MediaPlayer;->switchMediaPlayerImpl(Lcom/aocate/media/MediaPlayerImpl;Lcom/aocate/media/MediaPlayerImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :goto_1
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 439
    throw p1
.end method

.method private switchMediaPlayerImpl(Lcom/aocate/media/MediaPlayerImpl;Lcom/aocate/media/MediaPlayerImpl;)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "switchMediaPlayerImpl"

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, p2, :cond_f

    if-eqz p2, :cond_f

    .line 450
    instance-of v0, p2, Lcom/aocate/media/ServiceBackedMediaPlayer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->END:Lcom/aocate/media/MediaPlayer$State;

    if-ne v0, v1, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v0, "AocateReplacementMediaPlayer"

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchMediaPlayerImpl(), current state is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    invoke-virtual {v2}, Lcom/aocate/media/MediaPlayer$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->reset()V

    .line 468
    iget-boolean v0, p0, Lcom/aocate/media/MediaPlayer;->enableSpeedAdjustment:Z

    invoke-virtual {p2, v0}, Lcom/aocate/media/MediaPlayerImpl;->setEnableSpeedAdjustment(Z)V

    .line 472
    iget v0, p0, Lcom/aocate/media/MediaPlayer;->mAudioStreamType:I

    invoke-virtual {p2, v0}, Lcom/aocate/media/MediaPlayerImpl;->setAudioStreamType(I)V

    .line 473
    iget v0, p0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAlgorithm:I

    invoke-virtual {p2, v0}, Lcom/aocate/media/MediaPlayerImpl;->setSpeedAdjustmentAlgorithm(I)V

    .line 474
    iget-boolean v0, p0, Lcom/aocate/media/MediaPlayer;->mIsLooping:Z

    invoke-virtual {p2, v0}, Lcom/aocate/media/MediaPlayerImpl;->setLooping(Z)V

    .line 475
    iget v0, p0, Lcom/aocate/media/MediaPlayer;->mPitchStepsAdjustment:F

    invoke-virtual {p2, v0}, Lcom/aocate/media/MediaPlayerImpl;->setPitchStepsAdjustment(F)V

    const-string v0, "AocateReplacementMediaPlayer"

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting playback speed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aocate/media/MediaPlayer;->mSpeedMultiplier:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget v0, p0, Lcom/aocate/media/MediaPlayer;->mSpeedMultiplier:F

    invoke-virtual {p2, v0}, Lcom/aocate/media/MediaPlayerImpl;->setPlaybackSpeed(F)V

    .line 478
    iget v0, p0, Lcom/aocate/media/MediaPlayer;->mLeftVolume:F

    .line 479
    iget v1, p0, Lcom/aocate/media/MediaPlayer;->mRightVolume:F

    .line 478
    invoke-virtual {p2, v0, v1}, Lcom/aocate/media/MediaPlayerImpl;->setVolume(FF)V

    .line 480
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/aocate/media/MediaPlayer;->mWakeMode:I

    invoke-virtual {p2, v0, v1}, Lcom/aocate/media/MediaPlayerImpl;->setWakeMode(Landroid/content/Context;I)V

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "asserting at least one data source is null"

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->uriDataSource:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "switchMediaPlayerImpl(): uriDataSource != null"

    .line 486
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->uriDataSource:Landroid/net/Uri;

    invoke-virtual {p2, v0, v1}, Lcom/aocate/media/MediaPlayerImpl;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 497
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 500
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->stringDataSource:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "switchMediaPlayerImpl(): stringDataSource != null"

    .line 501
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    :try_start_3
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->stringDataSource:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/aocate/media/MediaPlayerImpl;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 513
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    .line 507
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 516
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->PREPARED:Lcom/aocate/media/MediaPlayer$State;

    if-eq v0, v1, :cond_4

    .line 517
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->PREPARING:Lcom/aocate/media/MediaPlayer$State;

    if-eq v0, v1, :cond_4

    .line 518
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->PAUSED:Lcom/aocate/media/MediaPlayer$State;

    if-eq v0, v1, :cond_4

    .line 519
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->STOPPED:Lcom/aocate/media/MediaPlayer$State;

    if-eq v0, v1, :cond_4

    .line 520
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->STARTED:Lcom/aocate/media/MediaPlayer$State;

    if-eq v0, v1, :cond_4

    .line 521
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->PLAYBACK_COMPLETED:Lcom/aocate/media/MediaPlayer$State;

    if-ne v0, v1, :cond_7

    :cond_4
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "switchMediaPlayerImpl(): prepare and seek"

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 526
    :try_start_5
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->muteNextOnPrepare()V

    .line 527
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->prepare()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_6
    move-exception v0

    .line 533
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_7
    move-exception v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 538
    invoke-virtual {p1}, Lcom/aocate/media/MediaPlayerImpl;->getCurrentPosition()I

    move-result v0

    goto :goto_3

    .line 539
    :cond_5
    iget v1, p0, Lcom/aocate/media/MediaPlayer;->lastKnownPosition:I

    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->getDuration()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 545
    iget v0, p0, Lcom/aocate/media/MediaPlayer;->lastKnownPosition:I

    .line 547
    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->muteNextSeek()V

    .line 548
    invoke-virtual {p2, v0}, Lcom/aocate/media/MediaPlayerImpl;->seekTo(I)V

    :cond_7
    if-eqz p1, :cond_8

    .line 551
    invoke-virtual {p1}, Lcom/aocate/media/MediaPlayerImpl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 552
    invoke-virtual {p1}, Lcom/aocate/media/MediaPlayerImpl;->pause()V

    .line 554
    :cond_8
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->STARTED:Lcom/aocate/media/MediaPlayer$State;

    if-eq p1, v0, :cond_9

    .line 555
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->PAUSED:Lcom/aocate/media/MediaPlayer$State;

    if-eq p1, v0, :cond_9

    .line 556
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->STOPPED:Lcom/aocate/media/MediaPlayer$State;

    if-ne p1, v0, :cond_a

    :cond_9
    const-string p1, "AocateReplacementMediaPlayer"

    const-string v0, "switchMediaPlayerImpl(): start"

    .line 557
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->start()V

    .line 563
    :cond_a
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->PAUSED:Lcom/aocate/media/MediaPlayer$State;

    if-ne p1, v0, :cond_b

    const-string p1, "AocateReplacementMediaPlayer"

    const-string v0, "switchMediaPlayerImpl(): paused"

    .line 564
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->pause()V

    goto :goto_4

    .line 568
    :cond_b
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->STOPPED:Lcom/aocate/media/MediaPlayer$State;

    if-ne p1, v0, :cond_c

    const-string p1, "AocateReplacementMediaPlayer"

    const-string v0, "switchMediaPlayerImpl(): stopped"

    .line 569
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->stop()V

    .line 575
    :cond_c
    :goto_4
    iput-object p2, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    .line 579
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->canSetPitch()Z

    move-result p1

    iget-boolean v0, p0, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailable:Z

    if-eq p1, v0, :cond_d

    .line 580
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->onPitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

    if-eqz p1, :cond_d

    .line 581
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->onPitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

    .line 583
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->canSetPitch()Z

    move-result v0

    .line 582
    invoke-interface {p1, p0, v0}, Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;->onPitchAdjustmentAvailableChanged(Lcom/aocate/media/MediaPlayer;Z)V

    .line 585
    :cond_d
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->canSetSpeed()Z

    move-result p1

    iget-boolean v0, p0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailable:Z

    if-eq p1, v0, :cond_e

    .line 586
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->onSpeedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

    if-eqz p1, :cond_e

    .line 587
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->onSpeedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

    .line 589
    invoke-virtual {p2}, Lcom/aocate/media/MediaPlayerImpl;->canSetSpeed()Z

    move-result p2

    .line 588
    invoke-interface {p1, p0, p2}, Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;->onSpeedAdjustmentAvailableChanged(Lcom/aocate/media/MediaPlayer;Z)V

    :cond_e
    const-string p1, "AocateReplacementMediaPlayer"

    .line 591
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "switchMediaPlayerImpl() 625 "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayer$State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 593
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 594
    throw p1
.end method


# virtual methods
.method public canSetPitch()Z
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->canSetPitch()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 608
    throw v0
.end method

.method public canSetSpeed()Z
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->canSetSpeed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 622
    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "finalize() 626"

    .line 628
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {p0}, Lcom/aocate/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 632
    throw v0
.end method

.method public getCurrentPitchStepsAdjustment()F
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->getCurrentPitchStepsAdjustment()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 648
    throw v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/aocate/media/MediaPlayer;->lastKnownPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 663
    throw v0
.end method

.method public getCurrentSpeedMultiplier()F
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->getCurrentSpeedMultiplier()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 677
    throw v0
.end method

.method public getDuration()I
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->getDuration()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 691
    throw v0
.end method

.method public getMaxSpeedMultiplier()F
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->getMaxSpeedMultiplier()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 705
    throw v0
.end method

.method public getMinSpeedMultiplier()F
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->getMinSpeedMultiplier()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 719
    throw v0
.end method

.method public getServiceVersionCode()I
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    instance-of v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    check-cast v0, Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->getServiceVersionCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 739
    throw v0
.end method

.method public getServiceVersionName()Ljava/lang/String;
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    instance-of v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    check-cast v0, Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->getServiceVersionName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 760
    throw v0
.end method

.method public isLooping()Z
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->isLooping()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 774
    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->isPlaying()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 788
    throw v0
.end method

.method public isPrestoLibraryInstalled()Z
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/aocate/media/MediaPlayer;->isPrestoLibraryInstalled(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public openPrestoMarketIntent()V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/aocate/media/MediaPlayer;->openPrestoMarketIntent(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 820
    :try_start_0
    invoke-direct {p0}, Lcom/aocate/media/MediaPlayer;->invalidServiceConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V

    .line 823
    :cond_0
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->PAUSED:Lcom/aocate/media/MediaPlayer$State;

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    .line 824
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 827
    throw v0
.end method

.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepare() 746 using "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    if-nez v2, :cond_0

    const-string v2, "null (this shouldn\'t happen)"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    invoke-virtual {v2}, Lcom/aocate/media/MediaPlayer$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AocateReplacementMediaPlayer"

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPreparedListener is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aocate/media/MediaPlayer;->onPreparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    if-nez v2, :cond_1

    const-string v2, "null"

    goto :goto_1

    :cond_1
    const-string v2, "non-null"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AocateReplacementMediaPlayer"

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preparedListener is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aocate/media/MediaPlayer;->preparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    if-nez v2, :cond_2

    const-string v2, "null"

    goto :goto_2

    :cond_2
    const-string v2, "non-null"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-direct {p0}, Lcom/aocate/media/MediaPlayer;->invalidServiceConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V

    .line 843
    :cond_3
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->prepare()V

    .line 844
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->PREPARED:Lcom/aocate/media/MediaPlayer$State;

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "prepare() finished 778"

    .line 845
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 848
    throw v0
.end method

.method public prepareAsync()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "prepareAsync() 779"

    .line 858
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-direct {p0}, Lcom/aocate/media/MediaPlayer;->invalidServiceConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V

    .line 862
    :cond_0
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->PREPARING:Lcom/aocate/media/MediaPlayer$State;

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    .line 863
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 866
    throw v0
.end method

.method public release()V
    .locals 3

    .line 874
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "Releasing MediaPlayer 791"

    .line 876
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->END:Lcom/aocate/media/MediaPlayer$State;

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    .line 879
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->amp:Lcom/aocate/media/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/AndroidMediaPlayer;->release()V

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->sbmp:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->release()V

    :cond_1
    const/4 v0, 0x0

    .line 886
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onBufferingUpdateListener:Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;

    .line 887
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onCompletionListener:Lcom/aocate/media/MediaPlayer$OnCompletionListener;

    .line 888
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;

    .line 889
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onInfoListener:Lcom/aocate/media/MediaPlayer$OnInfoListener;

    .line 890
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->preparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    .line 891
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onPitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

    .line 892
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

    const-string v1, "AocateReplacementMediaPlayer"

    const-string v2, "Setting onSeekCompleteListener to null 871"

    .line 893
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onSeekCompleteListener:Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;

    .line 895
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->onSpeedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

    .line 896
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 899
    throw v0
.end method

.method public reset()V
    .locals 2

    .line 907
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 909
    :try_start_0
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->IDLE:Lcom/aocate/media/MediaPlayer$State;

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    const/4 v0, 0x0

    .line 910
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->stringDataSource:Ljava/lang/String;

    .line 911
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->uriDataSource:Landroid/net/Uri;

    .line 912
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 915
    throw v0
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 925
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayerImpl;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 928
    throw p1
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 938
    :try_start_0
    iput p1, p0, Lcom/aocate/media/MediaPlayer;->mAudioStreamType:I

    .line 939
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayerImpl;->setAudioStreamType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 942
    throw p1
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 951
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In setDataSource(context, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-direct {p0}, Lcom/aocate/media/MediaPlayer;->invalidServiceConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V

    .line 957
    :cond_0
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->INITIALIZED:Lcom/aocate/media/MediaPlayer$State;

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    const/4 v0, 0x0

    .line 958
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->stringDataSource:Ljava/lang/String;

    .line 959
    iput-object p2, p0, Lcom/aocate/media/MediaPlayer;->uriDataSource:Landroid/net/Uri;

    .line 960
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/aocate/media/MediaPlayerImpl;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 963
    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In setDataSource(context, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-direct {p0}, Lcom/aocate/media/MediaPlayer;->invalidServiceConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V

    .line 978
    :cond_0
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->INITIALIZED:Lcom/aocate/media/MediaPlayer$State;

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    .line 979
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->stringDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 980
    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->uriDataSource:Landroid/net/Uri;

    .line 981
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayerImpl;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 984
    throw p1
.end method

.method public setEnableSpeedAdjustment(Z)V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 997
    :try_start_0
    iput-boolean p1, p0, Lcom/aocate/media/MediaPlayer;->enableSpeedAdjustment:Z

    .line 998
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayerImpl;->setEnableSpeedAdjustment(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1001
    throw p1
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1012
    :try_start_0
    iput-boolean p1, p0, Lcom/aocate/media/MediaPlayer;->mIsLooping:Z

    .line 1013
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayerImpl;->setLooping(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1016
    throw p1
.end method

.method public setOnBufferingUpdateListener(Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1149
    :try_start_0
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->onBufferingUpdateListener:Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1152
    throw p1
.end method

.method public setOnCompletionListener(Lcom/aocate/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1163
    :try_start_0
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->onCompletionListener:Lcom/aocate/media/MediaPlayer$OnCompletionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1166
    throw p1
.end method

.method public setOnErrorListener(Lcom/aocate/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1177
    :try_start_0
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1180
    throw p1
.end method

.method public setOnInfoListener(Lcom/aocate/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1191
    :try_start_0
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->onInfoListener:Lcom/aocate/media/MediaPlayer$OnInfoListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1194
    throw p1
.end method

.method public setOnPitchAdjustmentAvailableChangedListener(Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1205
    :try_start_0
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1208
    throw p1
.end method

.method public setOnPreparedListener(Lcom/aocate/media/MediaPlayer$OnPreparedListener;)V
    .locals 2

    .line 1217
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, " ++++++++++++++++++++++++++++++++++++++++++++ setOnPreparedListener"

    .line 1218
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :try_start_0
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->preparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1227
    throw p1
.end method

.method public setOnSeekCompleteListener(Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1239
    :try_start_0
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->onSeekCompleteListener:Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1242
    throw p1
.end method

.method public setOnSpeedAdjustmentAvailableChangedListener(Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;)V
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1253
    :try_start_0
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1256
    throw p1
.end method

.method public setPitchStepsAdjustment(F)V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1030
    :try_start_0
    iput p1, p0, Lcom/aocate/media/MediaPlayer;->mPitchStepsAdjustment:F

    .line 1031
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayerImpl;->setPitchStepsAdjustment(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1034
    throw p1
.end method

.method public setPlaybackPitch(F)V
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1070
    :try_start_0
    invoke-static {p1}, Lcom/aocate/media/MediaPlayer;->getPitchStepsAdjustment(F)F

    move-result v0

    iput v0, p0, Lcom/aocate/media/MediaPlayer;->mPitchStepsAdjustment:F

    .line 1071
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayerImpl;->setPlaybackPitch(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1074
    throw p1
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1087
    :try_start_0
    iput p1, p0, Lcom/aocate/media/MediaPlayer;->mSpeedMultiplier:F

    .line 1088
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayerImpl;->setPlaybackSpeed(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1091
    throw p1
.end method

.method public setSpeedAdjustmentAlgorithm(I)V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1045
    :try_start_0
    iput p1, p0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAlgorithm:I

    .line 1046
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayerImpl;->setSpeedAdjustmentAlgorithm(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1052
    throw p1
.end method

.method public setUseService(Z)V
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1104
    :try_start_0
    iput-boolean p1, p0, Lcom/aocate/media/MediaPlayer;->useService:Z

    .line 1105
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1108
    throw p1
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1118
    :try_start_0
    iput p1, p0, Lcom/aocate/media/MediaPlayer;->mLeftVolume:F

    .line 1119
    iput p2, p0, Lcom/aocate/media/MediaPlayer;->mRightVolume:F

    .line 1120
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/aocate/media/MediaPlayerImpl;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1123
    throw p1
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1134
    :try_start_0
    iput p2, p0, Lcom/aocate/media/MediaPlayer;->mWakeMode:I

    .line 1135
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/aocate/media/MediaPlayerImpl;->setWakeMode(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1138
    throw p1
.end method

.method public start()V
    .locals 2

    .line 1264
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "start() 1149"

    .line 1266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-direct {p0}, Lcom/aocate/media/MediaPlayer;->invalidServiceConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V

    .line 1270
    :cond_0
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->STARTED:Lcom/aocate/media/MediaPlayer$State;

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "start() 1154"

    .line 1271
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1275
    throw v0
.end method

.method public stop()V
    .locals 2

    .line 1283
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1285
    :try_start_0
    invoke-direct {p0}, Lcom/aocate/media/MediaPlayer;->invalidServiceConnectionConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V

    .line 1288
    :cond_0
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->STOPPED:Lcom/aocate/media/MediaPlayer$State;

    iput-object v0, p0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    .line 1289
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayerImpl;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1292
    throw v0
.end method
