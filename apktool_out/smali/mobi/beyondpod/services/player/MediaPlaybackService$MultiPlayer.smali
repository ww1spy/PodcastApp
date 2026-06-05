.class Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field private _CurrentMediaPath:Ljava/lang/String;

.field _CurrentWakeMode:I

.field private _Handler:Landroid/os/Handler;

.field private _IsInitialized:Z

.field private _MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

.field _completionListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;

.field _errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

.field final synthetic this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V
    .locals 0

    .line 1720
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1714
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->createPlayer(Landroid/content/Context;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    const/4 p1, 0x0

    .line 1716
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    const/4 p1, -0x1

    .line 1762
    iput p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    .line 2068
    new-instance p1, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_completionListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;

    .line 2113
    new-instance p1, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    .line 1721
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDevicePlugged()Z

    move-result p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->updatePlayerWakeMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Z)V
    .locals 0

    .line 1712
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->updatePlayerWakeMode(Z)V

    return-void
.end method

.method static synthetic access$1800(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;J)V
    .locals 0

    .line 1712
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 0

    .line 1712
    iget-object p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_Handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2700(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V
    .locals 0

    .line 1712
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setDataSourceChromecast(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V

    return-void
.end method

.method static synthetic access$2800(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 1712
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setDataSourceVideoTrack(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method static synthetic access$2900(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 1712
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic access$3000(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Ljava/lang/String;)V
    .locals 0

    .line 1712
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)V
    .locals 0

    .line 1712
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->recreatePlayer()V

    return-void
.end method

.method static synthetic access$3600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;
    .locals 0

    .line 1712
    iget-object p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    return-object p0
.end method

.method private configureSelectedPlayer(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v0, v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_preparedlistener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V

    .line 1964
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V

    .line 1965
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v0, v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_SeekCompleteListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V

    .line 1966
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v0, v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_InfoListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V

    .line 1967
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v0, v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_BufferingUpdateListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V

    .line 1969
    iput-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentMediaPath:Ljava/lang/String;

    .line 1970
    invoke-interface {p1, p2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 1972
    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->supportsSpeedAlteration()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 1974
    iput-boolean p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    .line 1975
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->initializeOnCompletionListener()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1979
    invoke-interface {p1, p2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V

    :goto_0
    const/4 p2, 0x3

    .line 1982
    invoke-interface {p1, p2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setAudioStreamType(I)V

    .line 1983
    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->prepare()V

    return-void
.end method

.method private handlePrepareException(Ljava/lang/Exception;)V
    .locals 4

    .line 1988
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1989
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    .line 1990
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to setDataSource! reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    if-eqz p1, :cond_0

    .line 1993
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;->onError(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;II)Z

    :cond_0
    return-void
.end method

.method private queueNextRefresh(J)V
    .locals 3

    .line 2036
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2037
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_Handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2038
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private recreatePlayer()V
    .locals 3

    const/4 v0, 0x0

    .line 2171
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    .line 2172
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 2173
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3402(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 2174
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->release()V

    .line 2178
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->createPlayer(Landroid/content/Context;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    const/4 v0, 0x1

    .line 2179
    iput v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    .line 2180
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    invoke-interface {v0, v1, v2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setWakeMode(Landroid/content/Context;I)V

    .line 2181
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "******** Media Player was recreated due to internal Error!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setDataSource(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 8

    const/4 v0, 0x1

    .line 1913
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1914
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1917
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1919
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->reset()V

    .line 1921
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v4, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget v5, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    move v3, p3

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->switchToLocalPlayerIfNeeded(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;FLandroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    .line 1924
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-direct {p0, p2, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->configureSelectedPlayer(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1950
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->handlePrepareException(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p2

    .line 1928
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->playerType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1930
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Mpg123 player was unable to handle media! Switching to Android player..."

    invoke-static {p2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    invoke-static {p2, v1, v2}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->switchToStreamingPlayerIfNeeded(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;Landroid/content/Context;I)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    .line 1936
    :try_start_1
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-direct {p0, p2, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->configureSelectedPlayer(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1940
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->handlePrepareException(Ljava/lang/Exception;)V

    return-void

    .line 1945
    :cond_1
    invoke-direct {p0, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->handlePrepareException(Ljava/lang/Exception;)V

    .line 1954
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {p1, p3}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setPlaybackSpeed(F)V

    .line 1956
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    const/4 p1, 0x0

    .line 1957
    invoke-static {p1, p3}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onAudioPlaybackStarted(ZF)V

    return-void
.end method

.method private setDataSourceAsync(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 1869
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1870
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1873
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1875
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->reset()V

    .line 1877
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    invoke-static {v1, v2, v3}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->switchToStreamingPlayerIfNeeded(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;Landroid/content/Context;I)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    .line 1880
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentMediaPath:Ljava/lang/String;

    .line 1881
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1, p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 1882
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setAudioStreamType(I)V

    .line 1883
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_preparedlistener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V

    .line 1884
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V

    .line 1899
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V

    .line 1900
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_SeekCompleteListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V

    .line 1901
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_InfoListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V

    .line 1902
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_BufferingUpdateListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V

    .line 1904
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1906
    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onAudioPlaybackStarted(ZF)V

    return-void

    .line 1888
    :catch_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1889
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    .line 1890
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unable to setDataSourceAsync! reason: "

    invoke-static {p1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    if-eqz p1, :cond_1

    .line 1893
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {p1, v2, v0, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;->onError(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;II)Z

    :cond_1
    return-void
.end method

.method private setDataSourceChromecast(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V
    .locals 4

    const/4 v0, 0x1

    .line 1805
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1806
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1809
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1811
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->reset()V

    .line 1813
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    invoke-static {v1, v2, v3}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->switchToChromecastPlayerIfNeeded(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;Landroid/content/Context;I)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    .line 1816
    iget-object v1, p1, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->TrackURL:Ljava/lang/String;

    iput-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentMediaPath:Ljava/lang/String;

    .line 1817
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1, p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setDataSource(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V

    .line 1818
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setAudioStreamType(I)V

    .line 1819
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_preparedlistener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V

    .line 1820
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V

    .line 1835
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V

    .line 1836
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_SeekCompleteListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V

    .line 1837
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_InfoListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V

    .line 1838
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_BufferingUpdateListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    invoke-interface {p1, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V

    .line 1840
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    .line 1842
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onChromecastPlaybackStarted()V

    return-void

    :catch_0
    move-exception p1

    .line 1824
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1825
    iput-boolean v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    .line 1826
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unable to setDataSourceChromecast! reason: "

    invoke-static {v1, v3, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1827
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    if-eqz p1, :cond_1

    .line 1829
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {p1, v1, v0, v2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;->onError(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;II)Z

    :cond_1
    return-void
.end method

.method private setDataSourceVideoTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 1847
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1848
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1850
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1851
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3402(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1852
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->reset()V

    .line 1853
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->release()V

    .line 1855
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;

    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v2, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerTrackBacked;-><init>(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    const/4 p1, 0x1

    .line 1856
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    .line 1858
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1860
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2002(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1861
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->start()V

    :cond_1
    return-void
.end method

.method private updatePlayerWakeMode(Z)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1769
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 1773
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    if-eqz v1, :cond_5

    .line 1777
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerPlaybackScreenPowerState()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 1779
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerPlaybackScreenPowerState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 1781
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerPlaybackScreenPowerState()I

    move-result v1

    if-ne v1, v3, :cond_3

    if-eqz p1, :cond_3

    goto :goto_1

    .line 1784
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerPlaybackScreenPowerState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    .line 1788
    :goto_1
    iget p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    if-eq p1, v0, :cond_5

    .line 1790
    iput v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    .line 1791
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentWakeMode:I

    invoke-interface {p1, v0, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setWakeMode(Landroid/content/Context;I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public canChangePlaybackSpeed()Z
    .locals 1

    .line 1750
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->canSetSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->canSetPitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public duration()J
    .locals 2

    .line 2186
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getCurrentMediaPath()Ljava/lang/String;
    .locals 1

    .line 1730
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_CurrentMediaPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPlaybackSpeed()F
    .locals 1

    .line 1745
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->getCurrentSpeedMultiplier()F

    move-result v0

    return v0
.end method

.method public initializeOnCompletionListener()V
    .locals 2

    .line 1999
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_completionListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;

    invoke-interface {v0, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 2004
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 2060
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .line 2053
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2054
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->pause()V

    .line 2055
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** Player Paused!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playerType()I
    .locals 1

    .line 1735
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->playerType()I

    move-result v0

    return v0
.end method

.method public position()J
    .locals 2

    .line 2191
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .line 2223
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->stop()V

    .line 2224
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->release()V

    return-void
.end method

.method public seek(J)J
    .locals 3

    .line 2196
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Media Player Seeking to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3402(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 2201
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2205
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  failed to seek! reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3402(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 2065
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_Handler:Landroid/os/Handler;

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    .line 1756
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v1, p2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setPlaybackPitch(F)V

    :cond_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 1759
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {p2, p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setPlaybackSpeed(F)V

    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 2215
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0, p1, p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setVolume(FF)V

    return-void
.end method

.method public setVolumeBoost(F)V
    .locals 1

    .line 1726
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0, p1}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setVolumeBoost(F)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 2011
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->start()V

    .line 2012
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** Player Started!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    .line 2013
    invoke-direct {p0, v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->queueNextRefresh(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2017
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start playback! reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_errorListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;->onError(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;II)Z

    :cond_0
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 2043
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_IsInitialized:Z

    .line 2044
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 2045
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3402(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 2046
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2047
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->reset()V

    .line 2048
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** Player Stopped (reset)!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public supportsSpeedAlteration()Z
    .locals 1

    .line 1740
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->_MediaPlayer:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->supportsSpeedAlteration()Z

    move-result v0

    return v0
.end method
