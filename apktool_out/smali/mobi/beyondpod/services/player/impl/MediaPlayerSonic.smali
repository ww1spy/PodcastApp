.class public Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;
.super Ljava/lang/Object;
.source "MediaPlayerSonic.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerSonic"


# instance fields
.field _MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object p1, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->TAG:Ljava/lang/String;

    const-string v0, "Created Sonic MediaPlayer"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p1, Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-direct {p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    return-void
.end method


# virtual methods
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
    .locals 1

    .line 37
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentSpeedMultiplier()F
    .locals 1

    .line 43
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->getPlaybackSpeed()F

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 49
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isSpeedAlterationLibraryInstalled()Z
    .locals 2

    .line 61
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 67
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->pause()V

    return-void
.end method

.method public playerType()I
    .locals 1

    const/4 v0, 0x3

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

    .line 73
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 79
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->reset()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->seekTo(I)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
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

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setDataSource(Ljava/lang/String;)V

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

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$1;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;)V

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$2;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$2;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;)V

    :goto_0
    return-void
.end method

.method public setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$3;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$3;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnErrorListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnErrorListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;)V

    :goto_0
    return-void
.end method

.method public setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$4;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$4;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnInfoListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnInfoListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;)V

    :goto_0
    return-void
.end method

.method public setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$5;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$5;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnPreparedListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnPreparedListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;)V

    :goto_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$6;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$6;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;)V

    :goto_0
    return-void
.end method

.method public setPlaybackPitch(F)V
    .locals 1

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setPitch(F)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 134
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setVolume(FF)V

    return-void
.end method

.method public setVolumeBoost(F)V
    .locals 1

    .line 279
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setVolumeBoost(F)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 250
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 256
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->stop()V

    return-void
.end method

.method public supportsFileFormatFor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public supportsSpeedAlteration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
