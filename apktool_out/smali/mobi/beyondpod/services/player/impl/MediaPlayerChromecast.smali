.class public Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;
.super Ljava/lang/Object;
.source "MediaPlayerChromecast.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerChromecast"


# instance fields
.field _MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->TAG:Ljava/lang/String;

    const-string v1, "Created Chromecast MediaPlayer"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-direct {v0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

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

    .line 37
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentSpeedMultiplier()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 49
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->isPlaying()Z

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
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->pause()V

    return-void
.end method

.method public playerType()I
    .locals 1

    const/4 v0, 0x5

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
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 79
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->reset()V

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
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->seekTo(I)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setAudioStreamType(I)V

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
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use setDataSource(TrackMetadata)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setDataSource(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$1;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;)V

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$2;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$2;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;)V

    :goto_0
    return-void
.end method

.method public setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$3;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$3;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnErrorListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnErrorListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;)V

    :goto_0
    return-void
.end method

.method public setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$4;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$4;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnInfoListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnInfoListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;)V

    :goto_0
    return-void
.end method

.method public setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$5;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$5;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnPreparedListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnPreparedListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;)V

    :goto_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$6;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$6;-><init>(Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;)V

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

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setVolume(FF)V

    return-void
.end method

.method public setVolumeBoost(F)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 250
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 256
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->stop()V

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
