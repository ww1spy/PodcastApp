.class public Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;
.super Ljava/lang/Object;
.source "MediaPlayerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlayer(Landroid/content/Context;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;
    .locals 1

    .line 14
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 17
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableAudioPlugins()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->isSpeedAlterationPlayerInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->useAudioPluginForConfiguredFeedsOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-static {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->getSpeedCapableMediaPlayer(Landroid/content/Context;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 25
    :cond_2
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getSpeedCapableMediaPlayer(Landroid/content/Context;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;
    .locals 2

    .line 92
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enablePresto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/aocate/media/MediaPlayer;->isPrestoLibraryInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 95
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifPlaybackSpeedRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 98
    :cond_1
    invoke-static {}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->isSonicLibraryInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    new-instance v0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static isSpeedAlterationPlayerInstalled(Landroid/content/Context;)Z
    .locals 1

    .line 30
    invoke-static {}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->isSonicLibraryInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enablePresto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/aocate/media/MediaPlayer;->isPrestoLibraryInstalled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static switchToChromecastPlayerIfNeeded(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;Landroid/content/Context;I)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;
    .locals 2

    .line 106
    invoke-interface {p0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->playerType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 108
    invoke-interface {p0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->release()V

    .line 110
    new-instance p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-interface {p0, p1, p2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setWakeMode(Landroid/content/Context;I)V

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static switchToLocalPlayerIfNeeded(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;FLandroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;
    .locals 3

    .line 51
    invoke-static {p2}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->isSpeedAlterationPlayerInstalled(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 53
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->useAudioPluginForConfiguredFeedsOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-interface {p0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->supportsSpeedAlteration()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableAudioPlugins()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    .line 57
    invoke-interface {p0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->release()V

    .line 58
    invoke-static {p2}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->getSpeedCapableMediaPlayer(Landroid/content/Context;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 61
    invoke-interface {p0, p4, p5}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->supportsFileFormatFor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    if-eqz p0, :cond_2

    .line 64
    invoke-interface {p0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->release()V

    .line 66
    :cond_2
    new-instance p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

    invoke-direct {p0, p2}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;-><init>(Landroid/content/Context;)V

    .line 69
    :cond_3
    invoke-interface {p0, p2, p3}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setWakeMode(Landroid/content/Context;I)V

    return-object p0

    .line 74
    :cond_4
    invoke-interface {p0, p4, p5}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->supportsFileFormatFor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    move p1, v1

    .line 78
    :cond_5
    invoke-interface {p0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->playerType()I

    move-result p4

    if-eqz p4, :cond_7

    .line 79
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableAudioPlugins()Z

    move-result p4

    if-eqz p4, :cond_6

    if-eqz v0, :cond_6

    if-eqz p1, :cond_7

    .line 81
    :cond_6
    invoke-interface {p0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->release()V

    .line 82
    new-instance p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

    invoke-direct {p0, p2}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-interface {p0, p2, p3}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setWakeMode(Landroid/content/Context;I)V

    return-object p0

    :cond_7
    return-object p0
.end method

.method public static switchToStreamingPlayerIfNeeded(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;Landroid/content/Context;I)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;
    .locals 1

    .line 36
    invoke-interface {p0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->playerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->release()V

    .line 40
    new-instance p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-interface {p0, p1, p2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->setWakeMode(Landroid/content/Context;I)V

    return-object p0

    :cond_0
    return-object p0
.end method
