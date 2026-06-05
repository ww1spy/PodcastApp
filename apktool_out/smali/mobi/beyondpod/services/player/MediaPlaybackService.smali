.class public Lmobi/beyondpod/services/player/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;
    }
.end annotation


# static fields
.field public static final CMDDUCK:Ljava/lang/String; = "duck"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDOPEN_AND_PLAY:Ljava/lang/String; = "open"

.field public static final CMDOPTION:Ljava/lang/String; = "commandOption"

.field public static final CMDOPTIONPLAY:Ljava/lang/String; = "play"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDRESUME:Ljava/lang/String; = "resume"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMD_CLOSE_VIDEO_PLAYER:Ljava/lang/String; = "closeVideoPlayer"

.field public static final CMD_FORCE_LOAD_ON_LOAD:Ljava/lang/String; = "forceLoadOnLoad"

.field public static final CMD_LOAD_CURRENT_TRACK:Ljava/lang/String; = "loadcurrenttrack"

.field public static final CMD_PLAY_NEXT:Ljava/lang/String; = "playnext"

.field public static final CMD_PLAY_PREVIOUS:Ljava/lang/String; = "playprevious"

.field public static final CMD_SEEK_TO_LOCATION:Ljava/lang/String; = "seekToLocation"

.field public static final CMD_SET_PLAYBACK_SPEED_1:Ljava/lang/String; = "setPlaybackSpeedSpeed1"

.field public static final CMD_SET_PLAYBACK_SPEED_2:Ljava/lang/String; = "setPlaybackSpeedSpeed2"

.field public static final CMD_SET_PLAYBACK_SPEED_NORMAL:Ljava/lang/String; = "setPlaybackSpeedNormal"

.field public static final CMD_SKIP_BACKWARD:Ljava/lang/String; = "skipbackword"

.field public static final CMD_SKIP_FORWARD:Ljava/lang/String; = "skipforward"

.field public static final CMD_SKIP_TO_END:Ljava/lang/String; = "skiptoend"

.field public static final CMD_START_PLAYBACK_ON_LOAD:Ljava/lang/String; = "startPlaybackOnLoad"

.field public static final CMD_STOP_SERVICE:Ljava/lang/String; = "stopService"

.field private static final FADEIN:I = 0x6

.field private static FADE_IN_TICK:I = 0x64

.field private static final IDLE_DELAY:I = 0xea60

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field private static final PLAYBACK_ERROR_OCCURED:I = 0x7

.field private static final PLAY_POSITION_CHANGED:I = 0x4

.field private static final RELEASE_WAKELOCK:I = 0x2

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "mobi.beyondpod.services.musicservicecommand"

.field public static final SERVICE_NOTIFICATION_CMD_PLAY_PAUSE:Ljava/lang/String; = "mobi.beyondpod.services.musicservicewidgetcommand.playpause.notification"

.field public static final SERVICE_STATUS:I = 0x1

.field public static final SERVICE_WIDGET_CMD_NEXT_TRACK:Ljava/lang/String; = "mobi.beyondpod.services.musicservicewidgetcommand.nexttrack"

.field public static final SERVICE_WIDGET_CMD_PLAY_PAUSE:Ljava/lang/String; = "mobi.beyondpod.services.musicservicewidgetcommand.playpause"

.field public static final SERVICE_WIDGET_CMD_SKIP_BACK:Ljava/lang/String; = "mobi.beyondpod.services.musicservicewidgetcommand.skipback"

.field public static final SERVICE_WIDGET_CMD_SKIP_FORWARD:Ljava/lang/String; = "mobi.beyondpod.services.musicservicewidgetcommand.skipforward"

.field public static final SERVICE_WIDGET_CMD_SKIP_TO_END:Ljava/lang/String; = "mobi.beyondpod.services.musicservicewidgetcommand.skiptoend"

.field public static final SERVICE_WIDGET_CMD_START_SMARTPLAY:Ljava/lang/String; = "mobi.beyondpod.services.musicservicewidgetcommand.startsmartplay"

.field public static final SERVICE_WIDGET_CMD_STOP:Ljava/lang/String; = "mobi.beyondpod.services.musicservicewidgetcommand.stop"

.field private static final SLEEP_TIMEOUT_TICK:I = 0x5

.field public static ServiceIsRunning:Z = false

.field private static TAG:Ljava/lang/String; = "MediaPlaybackService"

.field public static final TRACKPOS:Ljava/lang/String; = "trackPos"

.field private static final TRACK_ENDED:I = 0x1

.field private static _LastBufferPercent:I = -0x1

.field private static _wakeHandler:Landroid/os/Handler;


# instance fields
.field private _BatteryStateReceiver:Landroid/content/BroadcastReceiver;

.field _BufferingUpdateListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

.field private _CloseVideoPlayerIntent:Landroid/content/Intent;

.field private _DelayedStopHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field _IdleStateStartTime:J

.field _InfoListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;

.field private _IntentReceiver:Landroid/content/BroadcastReceiver;

.field private _IsPreparing:Z

.field private _IsSeeking:Z

.field private _LoadDataStartTime:J

.field private _MediaplayerHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private _MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

.field private _Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

.field private _ResumeAfterCall:Z

.field _SeekCompleteListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;

.field private _ServiceInUse:Z

.field private _ServiceStartId:I

.field private _StartPlaybackAfterPrepare:Z

.field protected _StartPlaybackAfterSeek:Z

.field private _TimeToSleep:I

.field _UIVisibilityListener:Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEventListener;

.field _UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

.field private _WakeLock:Landroid/os/PowerManager$WakeLock;

.field _preparedlistener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;

.field private volatile _started:Z

.field private final mBinder:Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 541
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ServiceStartId:I

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ServiceInUse:Z

    .line 133
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ResumeAfterCall:Z

    .line 134
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    .line 135
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IsPreparing:Z

    .line 136
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IsSeeking:Z

    .line 139
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_started:Z

    .line 148
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$1;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$2;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IntentReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$3;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    .line 509
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$4;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    .line 544
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$5;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_UIVisibilityListener:Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEventListener;

    .line 566
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$6;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

    .line 900
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$7;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_preparedlistener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;

    .line 998
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$8;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$8;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_InfoListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;

    .line 1035
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$9;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$9;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_BufferingUpdateListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    .line 1054
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$10;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_SeekCompleteListener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;

    .line 2228
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$11;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->mBinder:Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;
    .locals 0

    .line 73
    iget-object p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lmobi/beyondpod/services/player/MediaPlaybackService;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->preparePlaybackSource(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method static synthetic access$1100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/rsscore/Track;
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/TrackMetadataPublisher;
    .locals 0

    .line 73
    iget-object p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    return-object p0
.end method

.method static synthetic access$1300(Lmobi/beyondpod/services/player/MediaPlaybackService;)I
    .locals 0

    .line 73
    iget p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_TimeToSleep:I

    return p0
.end method

.method static synthetic access$1302(Lmobi/beyondpod/services/player/MediaPlaybackService;I)I
    .locals 0

    .line 73
    iput p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_TimeToSleep:I

    return p1
.end method

.method static synthetic access$1310(Lmobi/beyondpod/services/player/MediaPlaybackService;)I
    .locals 2

    .line 73
    iget v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_TimeToSleep:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_TimeToSleep:I

    return v0
.end method

.method static synthetic access$1400(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->gotoIdleState(Z)V

    return-void
.end method

.method static synthetic access$1500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 73
    iget-object p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_WakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1600(Lmobi/beyondpod/services/player/MediaPlaybackService;Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/rsscore/Track;I)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/services/player/MediaPlaybackService;->verifyCurrentTrack(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/rsscore/Track;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->stop(Z)V

    return-void
.end method

.method static synthetic access$1900(Lmobi/beyondpod/services/player/MediaPlaybackService;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->scheduleSleepTick()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    return p0
.end method

.method static synthetic access$2002(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    return p1
.end method

.method static synthetic access$2100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IsPreparing:Z

    return p0
.end method

.method static synthetic access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IsPreparing:Z

    return p1
.end method

.method static synthetic access$2200(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ResumeAfterCall:Z

    return p0
.end method

.method static synthetic access$2300(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ServiceInUse:Z

    return p0
.end method

.method static synthetic access$2400(Lmobi/beyondpod/services/player/MediaPlaybackService;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->checkCanStop()V

    return-void
.end method

.method static synthetic access$2500(Lmobi/beyondpod/services/player/MediaPlaybackService;)I
    .locals 0

    .line 73
    iget p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ServiceStartId:I

    return p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lmobi/beyondpod/services/player/MediaPlaybackService;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startPlaybackIfNeeded()V

    return-void
.end method

.method static synthetic access$3200(Lmobi/beyondpod/services/player/MediaPlaybackService;J)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->seekAtStart(J)V

    return-void
.end method

.method static synthetic access$3300()I
    .locals 1

    .line 73
    sget v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_LastBufferPercent:I

    return v0
.end method

.method static synthetic access$3302(I)I
    .locals 0

    .line 73
    sput p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_LastBufferPercent:I

    return p0
.end method

.method static synthetic access$3402(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IsSeeking:Z

    return p1
.end method

.method static synthetic access$3700(Lmobi/beyondpod/services/player/MediaPlaybackService;)I
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->getTimeToSleep()I

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lmobi/beyondpod/services/player/MediaPlaybackService;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->goToSleepIn(I)V

    return-void
.end method

.method static synthetic access$3900(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->canChangePlaybackSpeed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4000(Lmobi/beyondpod/services/player/MediaPlaybackService;)F
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->getCurrentPlaybackSpeed()F

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->supportsSpeedAlteration()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;
    .locals 0

    .line 73
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/services/player/MediaPlaybackService;ZZ)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->loadCurrentTrack(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lmobi/beyondpod/services/player/MediaPlaybackService;FF)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->setPlaybackSpeed(FF)V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .line 73
    sget v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->FADE_IN_TICK:I

    return v0
.end method

.method private canChangePlaybackSpeed()Z
    .locals 1

    .line 1705
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->canChangePlaybackSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkCanStop()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 586
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_started:Z

    if-nez v0, :cond_0

    .line 588
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 589
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 590
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 591
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "service"

    .line 592
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x2

    .line 593
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_update:I

    .line 594
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 595
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 596
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 598
    sget-object v2, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting foreground service (MediaPlaybackService) and passing notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x65

    .line 599
    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 600
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_started:Z

    :cond_0
    return-void
.end method

.method private currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;
    .locals 1

    .line 1663
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    return-object v0
.end method

.method private doFunkyHTCIncredibleHack()V
    .locals 2

    .line 968
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->supportsSpeedAlteration()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 972
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 973
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->start()V

    const-wide/16 v0, 0xa

    .line 976
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :catch_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->pause()V

    .line 983
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    return-void
.end method

.method private getCurrentPlaybackSpeed()F
    .locals 1

    .line 1684
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->getCurrentPlaybackSpeed()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getDefaultSpeedForTrack(Lmobi/beyondpod/rsscore/Track;)F
    .locals 1

    .line 893
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->preferredPlaybackSpeed()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    return p1

    .line 897
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultPlaybackSpeed()F

    move-result p1

    return p1
.end method

.method private getTimeToSleep()I
    .locals 1

    .line 1639
    iget v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_TimeToSleep:I

    return v0
.end method

.method private goToSleepIn(I)V
    .locals 1

    .line 1644
    iput p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_TimeToSleep:I

    if-lez p1, :cond_0

    .line 1647
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->scheduleSleepTick()V

    goto :goto_0

    .line 1651
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method private gotoIdleState(Z)V
    .locals 4

    .line 1294
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "Service autoshutdown scheduled from gotoIdleState"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1296
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1297
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1299
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->stopForeground(Landroid/app/Service;I)V

    if-nez p1, :cond_1

    .line 1302
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->setPlayerPauseNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :cond_1
    return-void
.end method

.method private handleCommand(Landroid/content/Intent;I)V
    .locals 3

    .line 713
    iput p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ServiceStartId:I

    .line 716
    sget-object p2, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v0, "Service autoshutdown scheduled from onStart"

    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 718
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 719
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 721
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->handleCommandInternal(Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 722
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->handleCommandWhenPlaylistLoads(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private handleCommandInternal(Landroid/content/Intent;)Z
    .locals 2

    .line 727
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 731
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 735
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.playpause"

    .line 737
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.playpause.notification"

    .line 738
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.skiptoend"

    .line 739
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.startsmartplay"

    .line 740
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.skipback"

    .line 741
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.skipforward"

    .line 742
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.nexttrack"

    .line 743
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    :cond_1
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->handleWidgetCommandInternal(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private handleCommandWhenPlaylistLoads(Landroid/content/Intent;)V
    .locals 6

    .line 759
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_LoadDataStartTime:J

    .line 761
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 765
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "Loading feeds..."

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getDefaultNotificationForService(Landroid/app/Service;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 767
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->startForegroundAndShowNotification(Landroid/app/Service;ILandroid/app/Notification;)V

    .line 770
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******* MediaPlaybackService HandleCommand found that repository is not loaded! (repo state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Loading repository..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 770
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->initializeAndLoadRepository()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    sget-object p1, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v0, "MediaPlayBack Service - the repository failed to load! Giving Up!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->refreshWidgets()V

    .line 780
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->checkCanStop()V

    .line 781
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->stopSelf()V

    return-void

    .line 786
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_LoadDataStartTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x4e20

    cmp-long v2, v4, v0

    if-gez v2, :cond_2

    .line 788
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->handleCommandInternal(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 791
    :cond_1
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "MediaPlayBack Service - Repository is still loading..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 792
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 797
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "MediaPlayBack Service - failed to process Command!"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 800
    :cond_2
    sget-object p1, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v0, "MediaPlayBack Service - is taking too long to load! Giving Up!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->checkCanStop()V

    .line 802
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->stopSelf()V

    return-void
.end method

.method private handleWidgetCommandInternal(Landroid/content/Intent;)V
    .locals 5

    .line 1118
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onWidgetCommand(Ljava/lang/String;)V

    .line 1120
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    if-eqz v0, :cond_c

    .line 1121
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.startsmartplay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 1148
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1151
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v0

    .line 1152
    sget-object v2, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget command received. Resuming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_1
    sget-object v2, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v3, "Widget command received. No Current track. Starting from track 0"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "mobi.beyondpod.services.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobi.beyondpod.services.musicservicewidgetcommand.playpause"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1159
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobi.beyondpod.services.musicservicewidgetcommand.playpause.notification"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1174
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.skiptoend"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "command"

    const-string v0, "skiptoend"

    .line 1176
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1178
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.skipback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "command"

    const-string v0, "skipbackword"

    .line 1180
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1182
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.skipforward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "command"

    const-string v0, "skipforward"

    .line 1184
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1186
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.nexttrack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "command"

    const-string v0, "playnext"

    .line 1188
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1190
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mobi.beyondpod.services.musicservicewidgetcommand.stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1192
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1193
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->disconnect()V

    :cond_7
    const-string p1, "command"

    const-string v0, "stop"

    .line 1195
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1161
    :cond_8
    :goto_1
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_9

    goto :goto_2

    .line 1169
    :cond_9
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "Widget command received invoked TogglePlayPause"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "command"

    const-string v1, "togglepause"

    .line 1170
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "commandOption"

    .line 1171
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1163
    :cond_a
    :goto_2
    sget-object p1, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "Widget command received invoked OpenAndPlay"

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "command"

    const-string v1, "open"

    .line 1164
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "trackPos"

    .line 1165
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1199
    :cond_b
    :goto_3
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmobi/beyondpod/BeyondPodApplication;->sendCommandToVideoPlayer(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1200
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6

    .line 1123
    :cond_c
    :goto_4
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "mobi.beyondpod.playlist.NAME"

    .line 1128
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_d

    .line 1131
    invoke-static {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylistByName(Ljava/lang/String;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1133
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v0

    goto :goto_5

    :cond_d
    move v0, v2

    :goto_5
    if-ne v0, v2, :cond_e

    const-string v0, "mobi.beyondpod.playlist.id"

    .line 1138
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1140
    :cond_e
    sget-object p1, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget command received. Playlist is empty or forced smartPlay id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " . Starting SmartPlay..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-static {v0, p0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->CmdPlaySmartPlayList(ILandroid/content/Context;)Z

    :cond_f
    :goto_6
    return-void
.end method

.method private isMultiPlayerInitialized()Z
    .locals 2

    .line 1626
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    if-nez v0, :cond_0

    .line 1628
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Player operation invoked but the Player instance is NULL! Reinitializing the Player!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->initializePlayer()V

    .line 1634
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method private loadCurrentTrack(ZZ)V
    .locals 2

    .line 807
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 811
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    if-eqz p2, :cond_1

    .line 813
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->getCurrentMediaPath()Ljava/lang/String;

    move-result-object p2

    .line 814
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 815
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 817
    :cond_0
    sget-object p1, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string p2, "   loadCurrentTrack found that the track is already loaded. Ignoring..."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 823
    :cond_1
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    .line 824
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->preparePlaybackSource(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 828
    :cond_2
    sget-object p1, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string p2, "  loadCurrentTrack found that there is no Current track. Ignoring..."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openAndPlayCurrentTrack()V
    .locals 1

    .line 1444
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1448
    :cond_0
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->openAndPlay(I)V

    return-void
.end method

.method private playList()Lmobi/beyondpod/services/player/PlayList;
    .locals 1

    .line 1668
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    return-object v0
.end method

.method private preparePlaybackSource(Lmobi/beyondpod/rsscore/Track;)V
    .locals 10

    const-wide/16 v0, 0x0

    .line 834
    iput-wide v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IdleStateStartTime:J

    .line 836
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    .line 840
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Preparing playback to a Chromecast device! ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "Chromecast Player can handle only internet media!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 844
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    return-void

    .line 848
    :cond_0
    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/Track;->setBufferedPercent(I)V

    .line 849
    invoke-virtual {p1, v3}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 850
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    new-instance v1, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v6

    .line 851
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 850
    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2700(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V

    .line 852
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    invoke-virtual {v0, p1, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 853
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmobi/beyondpod/BeyondPodApplication;->setPlayerNotification(Landroid/app/Service;Lmobi/beyondpod/rsscore/Track;)V

    return-void

    .line 859
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/services/player/PlayList;->allowStreaming(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_4

    .line 860
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowVideosInPlaylist()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_1

    .line 868
    :cond_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 870
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->getDefaultSpeedForTrack(Lmobi/beyondpod/rsscore/Track;)F

    move-result v0

    .line 871
    sget-object v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Preparing playback source Sync! ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Playback Speed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {p1, v3}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 874
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2900(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_0

    .line 878
    :cond_3
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Preparing playback source Async! ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/Track;->setBufferedPercent(I)V

    .line 880
    invoke-virtual {p1, v3}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 881
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$3000(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Ljava/lang/String;)V

    .line 885
    :goto_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_CloseVideoPlayerIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->sendCommandToVideoPlayer(Landroid/content/Intent;)Z

    .line 887
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    invoke-virtual {v0, p1, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    return-void

    .line 862
    :cond_4
    :goto_1
    invoke-virtual {p1, v4}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 863
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2800(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/rsscore/Track;)V

    .line 864
    invoke-direct {p0, v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->gotoIdleState(Z)V

    return-void
.end method

.method private scheduleSleepTick()V
    .locals 4

    .line 1657
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1658
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private seekAtStart(J)V
    .locals 2

    .line 952
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 954
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterSeek:Z

    const/4 v0, 0x0

    .line 955
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    .line 959
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getInternalPlayerSupportedFileExtensions()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blipstart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->doFunkyHTCIncredibleHack()V

    .line 962
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->seek(J)J

    return-void
.end method

.method private setPlaybackSpeed(FF)V
    .locals 1

    .line 1673
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1675
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1676
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlaybackSpeed(F)V

    .line 1677
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setPlaybackSpeed(FF)V

    .line 1678
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    :cond_1
    return-void
.end method

.method private startPlaybackIfNeeded()V
    .locals 1

    .line 988
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 990
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    .line 992
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startAndFadeIn()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 995
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->gotoIdleState(Z)V

    :goto_0
    return-void
.end method

.method private stop(Z)V
    .locals 3

    .line 1453
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1454
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1456
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    invoke-virtual {p0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->pause(Z)V

    .line 1459
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1462
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 1465
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 1466
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    invoke-virtual {v2, v0, v1}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    goto :goto_0

    .line 1469
    :cond_2
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to stop playback, but there was no current track. Ignoring..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 1472
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->gotoIdleState(Z)V

    goto :goto_1

    .line 1474
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->stopForeground(Landroid/app/Service;I)V

    :goto_1
    return-void
.end method

.method private supportsSpeedAlteration()Z
    .locals 1

    .line 1692
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->supportsSpeedAlteration()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private verifyCurrentTrack(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/rsscore/Track;I)Z
    .locals 1

    .line 492
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->getCurrentMediaPath()Ljava/lang/String;

    move-result-object p1

    .line 493
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    .line 496
    :cond_0
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public duck()V
    .locals 5

    .line 1528
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1529
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1531
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1533
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1534
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1536
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->verifyCurrentTrack(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/rsscore/Track;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1537
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    :cond_0
    const/4 v1, 0x0

    .line 1539
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 1541
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IdleStateStartTime:J

    .line 1542
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setPlayerPauseNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :cond_2
    return-void
.end method

.method public duration()J
    .locals 8

    .line 1563
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1565
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 1570
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v4

    .line 1571
    iget-boolean v5, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IsPreparing:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IsSeeking:Z

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    .line 1572
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :cond_1
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method initializePlayer()V
    .locals 2

    .line 673
    new-instance v0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;-><init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    .line 674
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 675
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "MultiPlayer Initialized!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1554
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 1244
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1245
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 1246
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x1

    .line 1247
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ServiceInUse:Z

    .line 1248
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->mBinder:Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 609
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 610
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 612
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 613
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 614
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "service"

    .line 615
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x2

    .line 616
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_pause:I

    goto :goto_0

    :cond_0
    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_play:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 619
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 621
    sget-object v2, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting foreground service (MediaPlaybackService) and passing notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x65

    .line 622
    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 623
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_started:Z

    .line 626
    :cond_1
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v2, "--------------------------- MediaPlayback Service is Created!---------------------------"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_wakeHandler:Landroid/os/Handler;

    .line 631
    sput-boolean v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->ServiceIsRunning:Z

    .line 633
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->initializePlayer()V

    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v2, "mobi.beyondpod.services.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_CloseVideoPlayerIntent:Landroid/content/Intent;

    .line 635
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_CloseVideoPlayerIntent:Landroid/content/Intent;

    const-string v2, "command"

    const-string v3, "closeVideoPlayer"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showPlayerPausedNotication()Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->clearNotification(Landroid/content/Context;I)V

    .line 641
    :cond_2
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_UIVisibilityListener:Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEventListener;

    const-class v3, Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 642
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

    const-class v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v0, "power"

    .line 644
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 646
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_WakeLock:Landroid/os/PowerManager$WakeLock;

    .line 647
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_WakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 650
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "mobi.beyondpod.services.musicservicecommand"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lmobi/beyondpod/services/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 652
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 653
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 656
    invoke-static {}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getInstance()Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    .line 659
    invoke-direct {p0, v2, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->loadCurrentTrack(ZZ)V

    .line 664
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "Service auto shutdown scheduled from onCreate"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1207
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->releasePlayer()V

    .line 1217
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1218
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1220
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_UIVisibilityListener:Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEventListener;

    const-class v2, Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1221
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

    const-class v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1223
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->release()V

    .line 1224
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1225
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1226
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_WakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1229
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showPlayerPausedNotication()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->isNotificationShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setPlayerPauseNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    .line 1233
    :cond_1
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "--------------------------- MediaPlayback service is Destroyed! ---------------------------"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1236
    sput-boolean v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->ServiceIsRunning:Z

    .line 1238
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    .line 1254
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1255
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 1256
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x1

    .line 1257
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ServiceInUse:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 691
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 692
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 693
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 694
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v1, -0x1

    .line 695
    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const-string v1, "service"

    .line 696
    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v1, -0x2

    .line 697
    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 698
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lmobi/beyondpod/R$drawable;->ic_notification_pause:I

    goto :goto_0

    :cond_0
    sget v1, Lmobi/beyondpod/R$drawable;->ic_notification_play:I

    :goto_0
    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 699
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 700
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 701
    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 702
    sget-object v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting foreground service (MediaPlaybackService) and passing notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x65

    .line 703
    invoke-virtual {p0, v1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 704
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_started:Z

    .line 707
    :cond_1
    invoke-direct {p0, p1, p3}, Lmobi/beyondpod/services/player/MediaPlaybackService;->handleCommand(Landroid/content/Intent;I)V

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    const/4 p1, 0x0

    .line 1263
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ServiceInUse:Z

    .line 1265
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ResumeAfterCall:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1276
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1285
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->checkCanStop()V

    .line 1286
    iget p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_ServiceStartId:I

    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->stopSelf(I)V

    return v0

    .line 1278
    :cond_2
    :goto_0
    sget-object p1, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "Service autoshutdown scheduled from onUnbind"

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 1280
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_DelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public openAndPlay(I)V
    .locals 2

    .line 1307
    monitor-enter p0

    .line 1310
    :try_start_0
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackAtPosition(I)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1312
    monitor-exit p0

    return-void

    .line 1314
    :cond_0
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 1316
    invoke-virtual {p0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->pause(Z)V

    .line 1319
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1320
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->clearPlayed()V

    .line 1323
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/beyondpod/services/player/PlayList;->setCurrentTrack(I)Lmobi/beyondpod/rsscore/Track;

    const/4 p1, 0x1

    .line 1325
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    .line 1326
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->preparePlaybackSource(Lmobi/beyondpod/rsscore/Track;)V

    .line 1328
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pause(Z)V
    .locals 7

    .line 1498
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->getInstance()Lmobi/beyondpod/services/player/AudioFocusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/AudioFocusHelper;->releaseAudioFocus()V

    .line 1499
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1501
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1503
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1505
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1506
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1508
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v0, v4}, Lmobi/beyondpod/services/player/MediaPlaybackService;->verifyCurrentTrack(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/rsscore/Track;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1509
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    .line 1511
    :cond_0
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 1512
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    invoke-virtual {v3, v0, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    const/16 v0, 0xf

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1514
    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromSeconds(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleSyncTaskIfSyncIsEnabled(ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Z

    .line 1516
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    goto :goto_0

    .line 1519
    :cond_1
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v3, "Trying to pause track that is null or not playing. Ignoring..."

    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IdleStateStartTime:J

    if-nez p1, :cond_2

    .line 1522
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showPlayerPausedNotication()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->gotoIdleState(Z)V

    :cond_3
    return-void
.end method

.method public play()Z
    .locals 15

    .line 1336
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1338
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v2, "MediaPlaybackService play() is called but the feed repository is not initialized! Command Ignoried!"

    .line 1339
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1344
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1346
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 1347
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 1349
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->openAndPlayCurrentTrack()V

    goto/16 :goto_0

    .line 1351
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1354
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "command"

    const-string v5, "pause"

    .line 1355
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    invoke-virtual {p0, v3}, Lmobi/beyondpod/services/player/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v0, :cond_a

    .line 1360
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1362
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v3, "MediaPlaybackService play() was called while the player is preparing! Playback will start after Prepare is Complete!"

    .line 1363
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iput-boolean v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterPrepare:Z

    return v1

    .line 1369
    :cond_3
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->getInstance()Lmobi/beyondpod/services/player/AudioFocusHelper;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/AudioFocusHelper;->trySetAudioFocus()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1371
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getInternalPlayerSupportedFileExtensions()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ignorefocus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 1375
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IdleStateStartTime:J

    sub-long v7, v3, v5

    .line 1376
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->resumeReplayDuration()I

    move-result v3

    if-lez v3, :cond_5

    .line 1378
    sget-object v4, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replay on resume is enabled for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sec. We were idle for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x3e8

    if-lez v3, :cond_7

    .line 1380
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v11

    if-nez v11, :cond_7

    const-wide/32 v11, 0xea60

    cmp-long v13, v7, v11

    if-lez v13, :cond_7

    .line 1382
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v7

    int-to-long v11, v3

    sub-long v13, v7, v11

    mul-long v7, v13, v9

    cmp-long v11, v7, v5

    if-gez v11, :cond_6

    move-wide v7, v5

    .line 1387
    :cond_6
    sget-object v11, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "### Replaying the last "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " secs. Moving from: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->position()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->position()J

    move-result-wide v13

    div-long/2addr v13, v9

    invoke-static {v13, v14}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") to "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v13, v7, v9

    .line 1389
    invoke-static {v13, v14}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1387
    invoke-static {v11, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IdleStateStartTime:J

    .line 1392
    iput-boolean v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterSeek:Z

    .line 1393
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3, v7, v8}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->seek(J)J

    .line 1397
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->playerType()I

    move-result v3

    if-eq v3, v4, :cond_7

    return v1

    .line 1402
    :cond_7
    sget-object v3, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting volume boost to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->playbackVolumeBoost()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->playbackVolumeBoost()F

    move-result v7

    invoke-virtual {v3, v7}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setVolumeBoost(F)V

    .line 1404
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->start()V

    .line 1406
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->playerType()I

    move-result v3

    if-ne v3, v4, :cond_8

    return v2

    .line 1409
    :cond_8
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 1410
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->getCurrentPlaybackSpeed()F

    move-result v3

    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlaybackSpeed(F)V

    .line 1411
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    invoke-virtual {v3, v0, v1}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 1413
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-gtz v1, :cond_9

    .line 1414
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v3

    div-long/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Lmobi/beyondpod/rsscore/Track;->setTotalTime(J)V

    .line 1416
    :cond_9
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setPlayerNotification(Landroid/app/Service;Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 1420
    :cond_a
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v2, "MediaPlaybackService play() was called with \'null\' currentPlayingTrack()"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1428
    :cond_b
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    if-lez v0, :cond_c

    .line 1430
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->openAndPlayCurrentTrack()V

    :goto_0
    return v2

    .line 1434
    :cond_c
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v2, "MediaPlaybackService play() was called with empty playlist"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method protected playerType()I
    .locals 1

    .line 1697
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->playerType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public position()J
    .locals 8

    .line 1586
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1588
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 1593
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->currentPlayingTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v4

    .line 1594
    iget-boolean v5, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IsPreparing:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_IsSeeking:Z

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    .line 1595
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :cond_1
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method releasePlayer()V
    .locals 2

    .line 680
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    .line 684
    sget-object v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "MultiPlayer Released!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public seek(J)J
    .locals 3

    .line 1611
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isMultiPlayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 1616
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 1617
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 1619
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide p1

    return-wide p1

    :cond_2
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public startAndFadeIn()V
    .locals 4

    .line 1479
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableFadeInOnPlaybackStart()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_Player:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->playerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService;->_MediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    sget v2, Lmobi/beyondpod/services/player/MediaPlaybackService;->FADE_IN_TICK:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1482
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->play()Z

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 1490
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->stop(Z)V

    return-void
.end method
