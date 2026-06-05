.class public Lmobi/beyondpod/ui/views/player/PlayerPanel;
.super Landroid/widget/FrameLayout;
.source "PlayerPanel.java"

# interfaces
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;
.implements Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;
.implements Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;
.implements Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;,
        Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;
    }
.end annotation


# static fields
.field private static final REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlayerPanel"


# instance fields
.field private _AutoShowPlayerOnNextPlay:Z

.field private _Duration:J

.field private _FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

.field private final _Handler:Landroid/os/Handler;

.field protected _LastSeekEventTime:J

.field protected _ManualSeekInProgress:Z

.field private _MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

.field private _Osc:Landroid/content/ServiceConnection;

.field private _Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

.field private _PlaybackSpeedFormat:Ljava/text/DecimalFormat;

.field private _PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

.field private _PosOverride:J

.field private _SeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private _StartSeekPos:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "#.##x"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_AutoShowPlayerOnNextPlay:Z

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    .line 82
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;-><init>(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Osc:Landroid/content/ServiceConnection;

    const-wide/16 p1, 0x0

    .line 114
    iput-wide p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_StartSeekPos:J

    const-wide/16 p1, -0x1

    .line 115
    iput-wide p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    .line 117
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;-><init>(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_SeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 169
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerPanel$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$3;-><init>(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/services/player/IMediaPlaybackService;
    .locals 0

    .line 69
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    return-object p0
.end method

.method static synthetic access$002(Lmobi/beyondpod/ui/views/player/PlayerPanel;Lmobi/beyondpod/services/player/IMediaPlaybackService;)Lmobi/beyondpod/services/player/IMediaPlaybackService;
    .locals 0

    .line 69
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J
    .locals 2

    .line 69
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1002(Lmobi/beyondpod/ui/views/player/PlayerPanel;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_AutoShowPlayerOnNextPlay:Z

    return p1
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/player/PlayerPanel;J)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;
    .locals 0

    .line 69
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    return-wide v0
.end method

.method static synthetic access$602(Lmobi/beyondpod/ui/views/player/PlayerPanel;J)J
    .locals 0

    .line 69
    iput-wide p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    return-wide p1
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    return-wide v0
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen;
    .locals 0

    .line 69
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    return-object p0
.end method

.method static synthetic access$900(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/ui/views/player/PlayerMini;
    .locals 0

    .line 69
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    return-object p0
.end method

.method private autoShowPlayerIfNeeded()V
    .locals 3

    .line 678
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 679
    invoke-static {v1}, Lmobi/beyondpod/rsscore/ConfigurationHD;->setPlayerDismissedByUser(Z)V

    .line 681
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigurationHD;->isPlayerDismissedByUser()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 684
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 685
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->showPlayer(Z)V

    .line 688
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerExpanded()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    .line 690
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_3

    .line 692
    new-instance v0, Lmobi/beyondpod/ui/views/player/PlayerPanel$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$6;-><init>(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    invoke-virtual {p0, v0, v1, v2}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 702
    :cond_3
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_AutoShowPlayerOnNextPlay:Z

    if-eqz v0, :cond_4

    .line 704
    new-instance v0, Lmobi/beyondpod/ui/views/player/PlayerPanel$7;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$7;-><init>(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    invoke-virtual {p0, v0, v1, v2}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private currentTrack()Lmobi/beyondpod/rsscore/Track;
    .locals 1

    .line 539
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    return-object v0
.end method

.method private doCleanup()V
    .locals 2

    .line 263
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 264
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 266
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/services/player/PlayerUtils;->unbindFromService(Landroid/content/Context;)V

    .line 269
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->doCleanup()V

    .line 270
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->doCleanup()V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .line 518
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->pause()V

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->startAndFadeIn()V

    .line 528
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->refreshNow()J

    .line 529
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->setPauseButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private getCurrentPlaybackSpeed()F
    .locals 1

    .line 771
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->getCurrentPlaybackSpeed()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private isCurrentlyPlaying()Z
    .locals 2

    .line 331
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 336
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method private queueNextRefresh(J)V
    .locals 1

    .line 553
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->scheduleRefreshIn(J)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshNow()J
    .locals 14

    .line 568
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const-wide/16 v3, 0x1f4

    .line 574
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getTimeToSleep()I

    move-result v5

    invoke-virtual {v0, v5}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->setSleepTime(I)V

    .line 576
    iget-wide v5, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->position()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    iget-wide v5, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    :goto_0
    cmp-long v0, v5, v7

    if-ltz v0, :cond_6

    .line 579
    iget-wide v9, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    cmp-long v0, v9, v7

    if-lez v0, :cond_6

    const-wide/32 v9, 0x59682f00

    cmp-long v0, v5, v9

    if-gez v0, :cond_6

    iget-wide v11, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    cmp-long v0, v11, v9

    if-gez v0, :cond_6

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 584
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableAudioPlugins()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 586
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->supportsSpeedAlteration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->getCurrentPlaybackSpeed()F

    move-result v0

    .line 589
    iget-object v9, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    float-to-double v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 591
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeedNormal()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v0, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 594
    :cond_3
    :goto_1
    iget-object v9, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v9, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->updatePlaybackSpeed(Ljava/lang/String;)V

    .line 597
    div-long v9, v5, v1

    const/4 v0, 0x1

    invoke-static {v9, v10, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v9

    .line 599
    iget-wide v10, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    cmp-long v12, v10, v7

    if-nez v12, :cond_4

    const-string v0, ""

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    sub-long v12, v10, v5

    div-long/2addr v12, v1

    .line 600
    invoke-static {v12, v13, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    mul-long v7, v1, v5

    .line 602
    iget-wide v10, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    div-long/2addr v7, v10

    long-to-int v7, v7

    .line 604
    iget-object v8, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v8, v7, v9, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->updateCurrentPosition(ILjava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v8, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-virtual {v8, v7, v9, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->updateCurrentPosition(ILjava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    rem-long/2addr v5, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v3, v1, v5

    goto :goto_3

    :cond_5
    move-wide v3, v1

    :cond_6
    :goto_3
    return-wide v3

    :catch_0
    return-wide v3
.end method

.method private scheduleRefreshIn(J)V
    .locals 3

    .line 561
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 562
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setPauseButtonImage()V
    .locals 2

    .line 546
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isCurrentlyPlaying()Z

    move-result v0

    .line 547
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->setPlayPauseButtonImage(Z)V

    .line 548
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->setPlayPauseButtonImage(Z)V

    return-void
.end method

.method private showSpeedAlterationNotSupported()V
    .locals 3

    .line 871
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f10016f

    goto :goto_0

    :cond_0
    const v0, 0x7f10016e

    .line 874
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifAutoRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aocate/media/MediaPlayer;->isPrestoLibraryInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f100163

    .line 879
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showSpeedAlterationPromo()V
    .locals 3

    .line 859
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isSonicSpeedAlterationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifPlaybackSpeedRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100163

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 866
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;->showDialog(Landroid/content/Context;)V

    return-void
.end method

.method private supportsSpeedAlteration()Z
    .locals 1

    .line 845
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->supportsSpeedAlteration()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateTrackInfo()V
    .locals 12

    .line 622
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, ""

    .line 633
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_5

    .line 636
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->autoShowPlayerIfNeeded()V

    .line 638
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x0

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 640
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v4

    cmp-long v11, v4, v9

    if-lez v11, :cond_1

    .line 642
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    mul-long/2addr v2, v7

    iput-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    .line 644
    invoke-interface {v4}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->position()J

    move-result-wide v4

    sub-long v9, v2, v4

    div-long/2addr v9, v7

    invoke-static {v9, v10, v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 648
    :cond_1
    iput-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    goto :goto_1

    .line 653
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->duration()J

    move-result-wide v2

    iput-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    .line 654
    iget-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    cmp-long v0, v2, v9

    if-gez v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->position()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    .line 655
    :goto_0
    iget-wide v4, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    cmp-long v0, v4, v9

    if-nez v0, :cond_4

    const-string v0, ""

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    sub-long v9, v4, v2

    div-long/2addr v9, v7

    .line 656
    invoke-static {v9, v10, v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 661
    :cond_5
    iput-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Duration:J

    .line 663
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 664
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v2}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->dismissPlayer()V

    .line 667
    :cond_6
    :goto_1
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v2, v1, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->updateTrackInfo(Lmobi/beyondpod/rsscore/Track;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerMini;->updateTrackInfo(Lmobi/beyondpod/rsscore/Track;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 672
    sget-object v1, Lmobi/beyondpod/ui/views/player/PlayerPanel;->TAG:Ljava/lang/String;

    const-string v2, "failed to update TrackInfo!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public collapsePlayer()V
    .locals 1

    .line 914
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->collapsePlayer()V

    :cond_0
    return-void
.end method

.method public dismissPlayer()V
    .locals 1

    .line 921
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->dismissPlayer()V

    :cond_0
    return-void
.end method

.method public doSkipBack()V
    .locals 6

    .line 352
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->position()J

    move-result-wide v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getBackwardSkipInterval()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 360
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0, v4, v5}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 364
    :cond_1
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v2, v0, v1}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public doSkipForward()V
    .locals 7

    .line 377
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->position()J

    move-result-wide v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getForwardSkipInterval()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 381
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->duration()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 384
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    const-wide/16 v3, 0x3e8

    sub-long v5, v0, v3

    invoke-interface {v2, v5, v6}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0, v4, v5}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public driveViewVisibilityChanged(Z)V
    .locals 1

    .line 975
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->driveViewVisibilityChanged(Z)V

    return-void
.end method

.method public expandPlayer()V
    .locals 1

    .line 907
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->expandPlayer()V

    :cond_0
    return-void
.end method

.method public bridge synthetic getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    move-result-object v0

    return-object v0
.end method

.method public getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;
    .locals 1

    .line 981
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    move-result-object v0

    return-object v0
.end method

.method public getSeekListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 346
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_SeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method public getSlideDragTarget(Z)Landroid/view/View;
    .locals 0

    if-eqz p1, :cond_0

    .line 886
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    :goto_0
    return-object p1
.end method

.method public getTimeToSleep()I
    .locals 2

    .line 735
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 740
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->gettimetosleep()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public hide()V
    .locals 1

    .line 927
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onDeActivated()V

    .line 928
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->onDeActivated()V

    const/16 v0, 0x8

    .line 929
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->setVisibility(I)V

    return-void
.end method

.method public initialize(Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    return-void
.end method

.method public isPlayerExpanded()Z
    .locals 1

    .line 951
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public isPlayerVisible()Z
    .locals 1

    .line 946
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivated()V
    .locals 3

    .line 229
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/PlayerUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unable to bind to the player service!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 236
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 238
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    new-instance v0, Lmobi/beyondpod/ui/views/player/PlayerPanel$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$4;-><init>(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    .line 279
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->doCleanup()V

    return-void
.end method

.method public onBeforeActivate()V
    .locals 1

    .line 222
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onBeforeActivate()V

    return-void
.end method

.method public onCyclePlaybackSpeed()V
    .locals 3

    .line 786
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->isSpeedAlterationPlayerInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->showSpeedAlterationPromo()V

    return-void

    .line 792
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->supportsSpeedAlteration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->showSpeedAlterationNotSupported()V

    goto :goto_0

    .line 798
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getCurrentPlaybackSpeed()F

    move-result v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeedNormal()F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_2

    .line 800
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed1()F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->setPlaybackSpeed(FF)V

    goto :goto_0

    .line 802
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getCurrentPlaybackSpeed()F

    move-result v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed1()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 804
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed2()F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->setPlaybackSpeed(FF)V

    goto :goto_0

    .line 808
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeedNormal()F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->setPlaybackSpeed(FF)V

    :goto_0
    return-void
.end method

.method public onDeActivated()V
    .locals 0

    .line 257
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->doCleanup()V

    return-void
.end method

.method public onDrawWhenSliding(F)V
    .locals 5

    .line 892
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v1

    .line 895
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 897
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    sub-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->setAlpha(F)V

    .line 898
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v1, p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->setAlpha(F)V

    .line 900
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-lez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v0, v3}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->setVisibility(I)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 211
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    const v0, 0x7f090181

    .line 213
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/player/PlayerMini;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    const v0, 0x7f090149

    .line 214
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    .line 216
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->setPlayerOwner(Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;)V

    .line 217
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->setPlayerOwner(Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;)V

    return-void
.end method

.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    new-instance v0, Lmobi/beyondpod/ui/views/player/PlayerPanel$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$5;-><init>(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayerCollapsed()V
    .locals 1

    .line 963
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onDeActivated()V

    .line 964
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->onActivated()V

    return-void
.end method

.method public onPlayerExpanded()V
    .locals 2

    .line 956
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onActivated()V

    .line 957
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->onDeActivated()V

    .line 958
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->refreshNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->scheduleRefreshIn(J)V

    return-void
.end method

.method public onPlayerSlide(F)V
    .locals 1

    .line 969
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onPlayerSlide(F)V

    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 308
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 310
    iget-object v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 313
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->refreshNow()J

    .line 317
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->setPauseButtonImage()V

    .line 318
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->updateTrackInfo()V

    .line 322
    :cond_1
    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 324
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLoadCurrentTrack()V

    :cond_2
    return-void
.end method

.method public onSelectPlaybackSpeed()V
    .locals 2

    .line 816
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->isSpeedAlterationPlayerInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->showSpeedAlterationPromo()V

    goto :goto_0

    .line 820
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->supportsSpeedAlteration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->showSpeedAlterationNotSupported()V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 829
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v1}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->getCurrentPlaybackSpeed()F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 836
    :catch_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->showPlaybackSpeedCharm(F)V

    :goto_0
    return-void
.end method

.method public openTrackFeed(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 1011
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->openTrackFeed(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method public openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 1

    .line 993
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0, p1, p2}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 987
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scanBackward(IJ)V
    .locals 8

    .line 396
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    .line 402
    :try_start_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_StartSeekPos:J

    .line 403
    iput-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    goto :goto_3

    :cond_1
    const-wide/16 v2, 0x1388

    cmp-long v4, p2, v2

    if-gez v4, :cond_2

    const-wide/16 v2, 0xa

    mul-long/2addr p2, v2

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v2

    const-wide/16 p2, 0x28

    mul-long/2addr v6, p2

    add-long p2, v4, v6

    .line 420
    :goto_0
    iget-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_StartSeekPos:J

    sub-long v4, v2, p2

    cmp-long v2, v4, v0

    if-gez v2, :cond_3

    .line 423
    iput-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_StartSeekPos:J

    .line 424
    iget-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_StartSeekPos:J

    add-long v2, v4, v0

    goto :goto_1

    :cond_3
    move-wide v2, v4

    .line 427
    :goto_1
    iget-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    sub-long v4, p2, v0

    const-wide/16 v0, 0xfa

    cmp-long v6, v4, v0

    if-gtz v6, :cond_4

    if-gez p1, :cond_5

    .line 429
    :cond_4
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0, v2, v3}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->seek(J)J

    .line 430
    iput-wide p2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    :cond_5
    if-ltz p1, :cond_6

    .line 435
    iput-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    goto :goto_2

    :cond_6
    const-wide/16 p1, -0x1

    .line 439
    iput-wide p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    .line 441
    :goto_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->refreshNow()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_3
    return-void
.end method

.method public scanForward(IJ)V
    .locals 7

    .line 452
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 458
    :try_start_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_StartSeekPos:J

    const-wide/16 p1, 0x0

    .line 459
    iput-wide p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    goto :goto_2

    :cond_1
    const-wide/16 v0, 0x1388

    cmp-long v2, p2, v0

    if-gez v2, :cond_2

    const-wide/16 v0, 0xa

    mul-long/2addr p2, v0

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0xc350

    sub-long v4, p2, v0

    const-wide/16 p2, 0x28

    mul-long/2addr v4, p2

    add-long p2, v2, v4

    .line 476
    :goto_0
    iget-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_StartSeekPos:J

    add-long v2, v0, p2

    .line 477
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->duration()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_3

    const-wide/16 v2, 0x3e8

    sub-long v4, v0, v2

    .line 481
    iput-wide v4, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_StartSeekPos:J

    .line 482
    iget-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_StartSeekPos:J

    .line 485
    :cond_3
    iget-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    sub-long v4, p2, v0

    const-wide/16 v0, 0xfa

    cmp-long v6, v4, v0

    if-gtz v6, :cond_4

    if-gez p1, :cond_5

    .line 487
    :cond_4
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0, v2, v3}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->seek(J)J

    .line 488
    iput-wide p2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    :cond_5
    if-ltz p1, :cond_6

    .line 493
    iput-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    goto :goto_1

    :cond_6
    const-wide/16 p1, -0x1

    .line 497
    iput-wide p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PosOverride:J

    .line 499
    :goto_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->refreshNow()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public setAutoShowPlayerOnNextPlay()V
    .locals 1

    const/4 v0, 0x1

    .line 1096
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_AutoShowPlayerOnNextPlay:Z

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 1

    .line 753
    :try_start_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setDefaultPlaybackSpeed(F)V

    .line 755
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0, p1, p2}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->setPlaybackSpeed(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :catch_0
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->refreshNow()J

    return-void
.end method

.method public setSleepTo(I)V
    .locals 1

    .line 720
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-nez v0, :cond_0

    return-void

    .line 725
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_PlayerService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    invoke-interface {v0, p1}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->gotosleepin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    .line 934
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->setVisibility(I)V

    .line 936
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onActivated()V

    goto :goto_0

    .line 939
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_MiniPlayer:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->onActivated()V

    .line 941
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->refreshNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->queueNextRefresh(J)V

    return-void
.end method

.method public skipToEnd()V
    .locals 0

    .line 999
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdSkipToEnd()V

    return-void
.end method

.method public togglePlayPause()V
    .locals 1

    .line 510
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->doPauseResume()V

    :cond_0
    return-void
.end method

.method public togglePlaylistDrawer()V
    .locals 1

    .line 1005
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->togglePlaylistDrawer()V

    return-void
.end method

.method public turnOffPlaylistPagerIfNeeded()Z
    .locals 1

    .line 1016
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1019
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_FullPlayer:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->turnOffPlaylistPagerIfNeeded()Z

    move-result v0

    return v0
.end method
