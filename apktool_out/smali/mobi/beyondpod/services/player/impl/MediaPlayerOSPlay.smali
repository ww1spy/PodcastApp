.class public Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;
.super Ljava/lang/Object;
.source "MediaPlayerOSPlay.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;
    }
.end annotation


# static fields
.field private static final DELAY_WARNING:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "MediaPlayerOSPlay"


# instance fields
.field private _GetCurrentPositionRunnable:Ljava/lang/Runnable;

.field private _GetDurationRunnable:Ljava/lang/Runnable;

.field private _IsPlaying:Z

.field private _IsPlayingRunnable:Ljava/lang/Runnable;

.field private _LastDuration:I

.field private _LastDurationCheck:J

.field private _LastMultiplier:F

.field private _LastPosition:I

.field private _LastSeekPos:I

.field private _MediaPlayer:Lcom/aocate/media/MediaPlayer;

.field private _PauseRunnable:Ljava/lang/Runnable;

.field private _SeekRunnable:Ljava/lang/Runnable;

.field private _SetPlaybackSpeedRunnable:Ljava/lang/Runnable;

.field private _Worker:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;

.field private _isReleased:Z

.field private final _syncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastMultiplier:F

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastPosition:I

    const/4 v1, -0x1

    iput v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastDuration:I

    .line 23
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_isReleased:Z

    .line 24
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_IsPlaying:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_syncLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$1;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_Worker:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;

    .line 133
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$1;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_PauseRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$2;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_GetCurrentPositionRunnable:Ljava/lang/Runnable;

    .line 183
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$3;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_GetDurationRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$4;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_SetPlaybackSpeedRunnable:Ljava/lang/Runnable;

    .line 232
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$5;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_SeekRunnable:Ljava/lang/Runnable;

    .line 256
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$6;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_IsPlayingRunnable:Ljava/lang/Runnable;

    .line 52
    sget-object v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v1, "Created OSPlay MediaPlayer"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/aocate/media/MediaPlayer;

    invoke-direct {v0, p1}, Lcom/aocate/media/MediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    .line 56
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_Worker:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;

    const-string v0, "Presto Worker Thread"

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->setName(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_Worker:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->setPriority(I)V

    .line 58
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_Worker:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->start()V

    .line 59
    :catch_0
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_Worker:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->access$200(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0xa

    .line 63
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)Lcom/aocate/media/MediaPlayer;
    .locals 0

    .line 13
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$502(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;I)I
    .locals 0

    .line 13
    iput p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastPosition:I

    return p1
.end method

.method static synthetic access$602(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;I)I
    .locals 0

    .line 13
    iput p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastDuration:I

    return p1
.end method

.method static synthetic access$700(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)F
    .locals 0

    .line 13
    iget p0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastMultiplier:F

    return p0
.end method

.method static synthetic access$800(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)I
    .locals 0

    .line 13
    iget p0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastSeekPos:I

    return p0
.end method

.method static synthetic access$902(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_IsPlaying:Z

    return p1
.end method


# virtual methods
.method public PrestoHandler()Landroid/os/Handler;
    .locals 1

    .line 32
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_Worker:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->access$100(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public canSetPitch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSetSpeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 78
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_GetCurrentPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_GetCurrentPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    iget v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastPosition:I

    return v0
.end method

.method public getCurrentSpeedMultiplier()F
    .locals 1

    .line 299
    iget v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastMultiplier:F

    return v0
.end method

.method public getDuration()I
    .locals 6

    .line 87
    iget v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastDuration:I

    if-gez v0, :cond_0

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_GetDurationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    iget-wide v2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastDurationCheck:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x1388

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_GetDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_GetDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :cond_1
    :goto_0
    iget v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastDuration:I

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_IsPlayingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_IsPlayingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_IsPlaying:Z

    return v0
.end method

.method public declared-synchronized isReleased()Z
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSpeedAlterationLibraryInstalled()Z
    .locals 3

    .line 577
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayer;->isPrestoLibraryInstalled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 581
    sget-object v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v2, "OSPlay isPrestoLibraryInstalled failed"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_IsPlaying:Z

    .line 129
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_PauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_PauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playerType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 422
    :try_start_0
    iput-wide v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastDurationCheck:J

    .line 423
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 427
    sget-object v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v2, "OSPlay prepare failed"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public prepareAsync()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 436
    :try_start_0
    iput-wide v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastDurationCheck:J

    .line 437
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 441
    sget-object v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v2, "OSPlay prepareAsync failed"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 342
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_isReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 348
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_syncLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :try_start_1
    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v1}, Lcom/aocate/media/MediaPlayer;->release()V

    const/4 v1, 0x1

    .line 350
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_isReleased:Z

    .line 351
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 355
    sget-object v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v2, "OSPlay release failed"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 335
    sget-object v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v2, "OSPlay reset failed"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 319
    iput p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastSeekPos:I

    .line 320
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_SeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_SeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2

    .line 364
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 368
    sget-object v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v1, "OSPlay setAudioStreamType failed"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/aocate/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lcom/aocate/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 449
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$7;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$7;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V

    invoke-virtual {v0, v1}, Lcom/aocate/media/MediaPlayer;->setOnBufferingUpdateListener(Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aocate/media/MediaPlayer;->setOnBufferingUpdateListener(Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;)V

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$8;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$8;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Lcom/aocate/media/MediaPlayer;->setOnCompletionListener(Lcom/aocate/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aocate/media/MediaPlayer;->setOnCompletionListener(Lcom/aocate/media/MediaPlayer$OnCompletionListener;)V

    :goto_0
    return-void
.end method

.method public setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$9;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$9;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/aocate/media/MediaPlayer;->setOnErrorListener(Lcom/aocate/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 491
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aocate/media/MediaPlayer;->setOnErrorListener(Lcom/aocate/media/MediaPlayer$OnErrorListener;)V

    :goto_0
    return-void
.end method

.method public setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 498
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$10;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$10;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V

    invoke-virtual {v0, v1}, Lcom/aocate/media/MediaPlayer;->setOnInfoListener(Lcom/aocate/media/MediaPlayer$OnInfoListener;)V

    goto :goto_0

    .line 507
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aocate/media/MediaPlayer;->setOnInfoListener(Lcom/aocate/media/MediaPlayer$OnInfoListener;)V

    :goto_0
    return-void
.end method

.method public setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$11;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$11;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Lcom/aocate/media/MediaPlayer;->setOnPreparedListener(Lcom/aocate/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aocate/media/MediaPlayer;->setOnPreparedListener(Lcom/aocate/media/MediaPlayer$OnPreparedListener;)V

    :goto_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 531
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$12;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$12;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/aocate/media/MediaPlayer;->setOnSeekCompleteListener(Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_0

    .line 540
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aocate/media/MediaPlayer;->setOnSeekCompleteListener(Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;)V

    :goto_0
    return-void
.end method

.method public setPlaybackPitch(F)V
    .locals 0

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 305
    iput p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_LastMultiplier:F

    .line 306
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_SetPlaybackSpeedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->PrestoHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_SetPlaybackSpeedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 377
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/aocate/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 381
    sget-object p2, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v0, "OSPlay setVolume failed"

    invoke-static {p2, v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setVolumeBoost(F)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 390
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/aocate/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 394
    sget-object p2, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v0, "OSPlay setWakeMode failed"

    invoke-static {p2, v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x1

    .line 116
    :try_start_0
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_IsPlaying:Z

    .line 117
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v2, "OSPlay start failed"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->_MediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/aocate/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    sget-object v1, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->TAG:Ljava/lang/String;

    const-string v2, "OSPlay stop failed"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public supportsFileFormatFor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public supportsSpeedAlteration()Z
    .locals 1

    .line 589
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->isSpeedAlterationLibraryInstalled()Z

    move-result v0

    return v0
.end method
