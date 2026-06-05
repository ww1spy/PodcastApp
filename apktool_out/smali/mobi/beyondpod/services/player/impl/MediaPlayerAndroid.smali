.class public Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;
.super Ljava/lang/Object;
.source "MediaPlayerAndroid.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerAndroid"


# instance fields
.field private _MediaPlayer:Landroid/media/MediaPlayer;

.field private volatile _isReleased:Z

.field private final _syncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_isReleased:Z

    .line 20
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_syncLock:Ljava/lang/Object;

    .line 24
    sget-object p1, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->TAG:Ljava/lang/String;

    const-string v0, "Created Android MediaPlayer"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public canSetPitch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSetSpeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSpeedMultiplier()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 77
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isReleased()Z
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_isReleased:Z
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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public playerType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->TAG:Ljava/lang/String;

    const-string v1, "Cannot prepareAsync. Player has been released."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 124
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_syncLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 125
    :try_start_0
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_isReleased:Z

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 147
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 152
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

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

    .line 162
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

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

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

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

    .line 208
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$1;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$2;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$2;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :goto_0
    return-void
.end method

.method public setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$3;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$3;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :goto_0
    return-void
.end method

.method public setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$4;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$4;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :goto_0
    return-void
.end method

.method public setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$5;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$5;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :goto_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$6;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$6;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    :goto_0
    return-void
.end method

.method public setPlaybackPitch(F)V
    .locals 0

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    sget-object p1, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->TAG:Ljava/lang/String;

    const-string p2, "Cannot setVolume. Player is released!"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setVolumeBoost(F)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 305
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start player since it has been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 312
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isCGBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 319
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public supportsFileFormatFor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public supportsSpeedAlteration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
