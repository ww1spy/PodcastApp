.class public Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;
.super Ljava/lang/Object;
.source "MediaPlayerTrackBacked.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerTrackBacked"


# instance fields
.field _Context:Landroid/content/Context;

.field _CurrentTrack:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->TAG:Ljava/lang/String;

    const-string v1, "Created TrackBacked MediaPlayer"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    .line 23
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->_Context:Landroid/content/Context;

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
    .locals 4

    .line 42
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getCurrentSpeedMultiplier()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getDuration()I
    .locals 4

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpeedAlterationLibraryInstalled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public playerType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public prepareAsync()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

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
    .locals 0

    return-void
.end method

.method public setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
    .locals 0

    return-void
.end method

.method public setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V
    .locals 0

    return-void
.end method

.method public setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
    .locals 0

    return-void
.end method

.method public setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
    .locals 0

    return-void
.end method

.method public setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
    .locals 0

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
    .locals 0

    return-void
.end method

.method public setVolumeBoost(F)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 187
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-static {v0}, Lmobi/beyondpod/services/player/PlayList;->allowStreaming(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->TAG:Ljava/lang/String;

    const-string v1, "Trying to play a streamed track when streaming is not allowed! Ignoring..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    return-void

    .line 195
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->startVideoPlayback(Lmobi/beyondpod/rsscore/Track;)V

    .line 196
    sget-object v0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========> Mock Video Player - Started Playback of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 0

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
