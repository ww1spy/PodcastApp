.class public abstract Lcom/aocate/media/MediaPlayerImpl;
.super Ljava/lang/Object;
.source "MediaPlayerImpl.java"


# static fields
.field private static final MPI_TAG:Ljava/lang/String; = "AocateMediaPlayerImpl"


# instance fields
.field protected lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

.field protected lockMuteOnSeekCount:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final mContext:Landroid/content/Context;

.field protected muteOnPreparedCount:I

.field protected muteOnSeekCount:I

.field protected final owningMediaPlayer:Lcom/aocate/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/aocate/media/MediaPlayer;Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/aocate/media/MediaPlayerImpl;->muteOnPreparedCount:I

    .line 29
    iput v0, p0, Lcom/aocate/media/MediaPlayerImpl;->muteOnSeekCount:I

    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/aocate/media/MediaPlayerImpl;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/aocate/media/MediaPlayerImpl;->lockMuteOnSeekCount:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    iput-object p1, p0, Lcom/aocate/media/MediaPlayerImpl;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    .line 34
    iput-object p2, p0, Lcom/aocate/media/MediaPlayerImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract canSetPitch()Z
.end method

.method public abstract canSetSpeed()Z
.end method

.method public abstract getCurrentPitchStepsAdjustment()F
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentSpeedMultiplier()F
.end method

.method public abstract getDuration()I
.end method

.method public abstract getMaxSpeedMultiplier()F
.end method

.method public abstract getMinSpeedMultiplier()F
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public muteNextOnPrepare()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/aocate/media/MediaPlayerImpl;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "AocateMediaPlayerImpl"

    const-string v1, "muteNextOnPrepare()"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    iget v0, p0, Lcom/aocate/media/MediaPlayerImpl;->muteOnPreparedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aocate/media/MediaPlayerImpl;->muteOnPreparedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/aocate/media/MediaPlayerImpl;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayerImpl;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 104
    throw v0
.end method

.method public muteNextSeek()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/aocate/media/MediaPlayerImpl;->lockMuteOnSeekCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "AocateMediaPlayerImpl"

    const-string v1, "muteNextOnSeek()"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_0
    iget v0, p0, Lcom/aocate/media/MediaPlayerImpl;->muteOnSeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aocate/media/MediaPlayerImpl;->muteOnSeekCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Lcom/aocate/media/MediaPlayerImpl;->lockMuteOnSeekCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayerImpl;->lockMuteOnSeekCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 116
    throw v0
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setEnableSpeedAdjustment(Z)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setPitchStepsAdjustment(F)V
.end method

.method public abstract setPlaybackPitch(F)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract setSpeedAdjustmentAlgorithm(I)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
