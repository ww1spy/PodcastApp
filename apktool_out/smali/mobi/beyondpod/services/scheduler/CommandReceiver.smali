.class public Lmobi/beyondpod/services/scheduler/CommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CommandReceiver.java"


# static fields
.field public static final ALL_COMMANDS:[Ljava/lang/String;

.field public static final CMD_INVALIDATE_TOKEN:Ljava/lang/String; = "mobi.beyondpod.command.SIMULATE_INVALID_READER_TOKEN"

.field public static final CMD_PAUSE:Ljava/lang/String; = "mobi.beyondpod.command.PAUSE"

.field public static final CMD_PLAY:Ljava/lang/String; = "mobi.beyondpod.command.PLAY"

.field public static final CMD_PLAY_NEXT:Ljava/lang/String; = "mobi.beyondpod.command.PLAY_NEXT"

.field public static final CMD_PLAY_PAUSE:Ljava/lang/String; = "mobi.beyondpod.command.PLAY_PAUSE"

.field public static final CMD_PLAY_PREVIOUS:Ljava/lang/String; = "mobi.beyondpod.command.PLAY_PREVIOUS"

.field public static final CMD_SET_PLAYBACK_SPEED_1:Ljava/lang/String; = "mobi.beyondpod.command.SET_PLAYBACK_SPEED_1"

.field public static final CMD_SET_PLAYBACK_SPEED_2:Ljava/lang/String; = "mobi.beyondpod.command.SET_PLAYBACK_SPEED_2"

.field public static final CMD_SET_PLAYBACK_SPEED_NORMAL:Ljava/lang/String; = "mobi.beyondpod.command.SET_PLAYBACK_SPEED_NORMAL"

.field public static final CMD_SKIP_BACKWARD:Ljava/lang/String; = "mobi.beyondpod.command.SKIP_BACKWARD"

.field public static final CMD_SKIP_FORWARD:Ljava/lang/String; = "mobi.beyondpod.command.SKIP_FORWARD"

.field public static final CMD_SKIP_TO_END:Ljava/lang/String; = "mobi.beyondpod.command.SKIP_TO_END"

.field public static final CMD_START_SMART_PLAY:Ljava/lang/String; = "mobi.beyondpod.command.START_SMART_PLAY"

.field public static final CMD_START_SYNC:Ljava/lang/String; = "mobi.beyondpod.command.START_SYNC"

.field public static final CMD_UPDATE_UPDATE_CATEGORY:Ljava/lang/String; = "mobi.beyondpod.command.UPDATE_CATEGORY"

.field public static final CMD_UPDATE_UPDATE_SMART_PLAY:Ljava/lang/String; = "mobi.beyondpod.command.UPDATE_SMART_PLAY"

.field public static final EXTRA_PLAYLIST_ID:Ljava/lang/String; = "mobi.beyondpod.playlist.id"

.field public static final EXTRA_PLAYLIST_NAME:Ljava/lang/String; = "mobi.beyondpod.playlist.NAME"

.field private static TAG:Ljava/lang/String; = "CommandReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "mobi.beyondpod.command.SIMULATE_INVALID_READER_TOKEN"

    const-string v1, "mobi.beyondpod.command.PAUSE"

    const-string v2, "mobi.beyondpod.command.PLAY"

    const-string v3, "mobi.beyondpod.command.PLAY_NEXT"

    const-string v4, "mobi.beyondpod.command.PLAY_PAUSE"

    const-string v5, "mobi.beyondpod.command.PLAY_PREVIOUS"

    const-string v6, "mobi.beyondpod.command.SET_PLAYBACK_SPEED_1"

    const-string v7, "mobi.beyondpod.command.SET_PLAYBACK_SPEED_2"

    const-string v8, "mobi.beyondpod.command.SET_PLAYBACK_SPEED_NORMAL"

    const-string v9, "mobi.beyondpod.command.SKIP_BACKWARD"

    const-string v10, "mobi.beyondpod.command.SKIP_FORWARD"

    const-string v11, "mobi.beyondpod.command.SKIP_TO_END"

    const-string v12, "mobi.beyondpod.command.START_SMART_PLAY"

    const-string v13, "mobi.beyondpod.command.START_SYNC"

    const-string v14, "mobi.beyondpod.command.UPDATE_CATEGORY"

    const-string v15, "mobi.beyondpod.command.UPDATE_SMART_PLAY"

    .line 34
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/scheduler/CommandReceiver;->ALL_COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, p2, v0, v0}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private callMediaPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 162
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.startsmartplay"

    .line 164
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "mobi.beyondpod.services.musicservicewidgetcommand.startsmartplay"

    .line 165
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    .line 169
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :goto_0
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 174
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 178
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 185
    sget-object p2, Lmobi/beyondpod/services/scheduler/CommandReceiver;->TAG:Ljava/lang/String;

    const-string p3, "failed to start player command!"

    invoke-static {p2, p3, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static startScheduledTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 139
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->bringApplicationToForeground()V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 152
    sget-object v0, Lmobi/beyondpod/services/scheduler/CommandReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command Receiver failed to start scheduled task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v1, Lmobi/beyondpod/services/scheduler/CommandReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### External Command received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mobi.beyondpod.command.UPDATE_CATEGORY"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "category"

    .line 66
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object p1, Lmobi/beyondpod/services/scheduler/CommandReceiver;->TAG:Ljava/lang/String;

    const-string p2, "###### mobi.beyondpod.command.UPDATE_CATEGORY was invoked without specifying a category! (Did you forget to specify the \'category\' string extra ?)"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    invoke-static {p2}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildAdHockCategoryUpdateTaskID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->startScheduledTask(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "mobi.beyondpod.command.UPDATE_SMART_PLAY"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "smartplay"

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    sget-object v0, Lmobi/beyondpod/services/scheduler/CommandReceiver;->TAG:Ljava/lang/String;

    const-string v1, "###### mobi.beyondpod.command.UPDATE_SMART_PLAY was invoked without specifying a smartPlay. Updating default SmartPlay! (Did you forget to specify the \'smartplay\' string extra ?)"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_2
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "#$DEF$#"

    .line 83
    :cond_3
    invoke-static {p2}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildAdHockSmartPlayUpdateTaskID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->startScheduledTask(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "mobi.beyondpod.command.PLAY"

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p2, "resume"

    .line 86
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "mobi.beyondpod.command.START_SMART_PLAY"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "smartplay"

    .line 89
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    sget-object v0, Lmobi/beyondpod/services/scheduler/CommandReceiver;->TAG:Ljava/lang/String;

    const-string v1, "###### mobi.beyondpod.command.START_SMART_PLAY was invoked without specifying a smartPlay. Starting default SmartPlay! (Did you forget to specify the \'smartplay\' string extra ?)"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "mobi.beyondpod.services.musicservicewidgetcommand.startsmartplay"

    const-string v1, "mobi.beyondpod.playlist.NAME"

    .line 93
    invoke-direct {p0, p1, v0, v1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string p2, "mobi.beyondpod.command.PAUSE"

    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "pause"

    .line 96
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string p2, "mobi.beyondpod.command.PLAY_PAUSE"

    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "togglepause"

    .line 99
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string p2, "mobi.beyondpod.command.PLAY_NEXT"

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "playnext"

    .line 102
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string p2, "mobi.beyondpod.command.PLAY_PREVIOUS"

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "playprevious"

    .line 105
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string p2, "mobi.beyondpod.command.SKIP_FORWARD"

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p2, "skipforward"

    .line 108
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string p2, "mobi.beyondpod.command.SKIP_BACKWARD"

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "skipbackword"

    .line 111
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string p2, "mobi.beyondpod.command.SKIP_TO_END"

    .line 113
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "skiptoend"

    .line 114
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    const-string p2, "mobi.beyondpod.command.SET_PLAYBACK_SPEED_NORMAL"

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p2, "setPlaybackSpeedNormal"

    .line 117
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    const-string p2, "mobi.beyondpod.command.SET_PLAYBACK_SPEED_1"

    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p2, "setPlaybackSpeedSpeed1"

    .line 120
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_10
    const-string p2, "mobi.beyondpod.command.SET_PLAYBACK_SPEED_2"

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p2, "setPlaybackSpeedSpeed2"

    .line 123
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->callMediaPlayer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_11
    const-string p2, "mobi.beyondpod.command.SIMULATE_INVALID_READER_TOKEN"

    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 126
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->simulateInvalidToken()V

    goto :goto_0

    :cond_12
    const-string p2, "mobi.beyondpod.command.START_SYNC"

    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    const-string p2, "BPT#SYNC_CHANGE_TRACKING"

    .line 129
    invoke-static {p1, p2}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->startScheduledTask(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    :goto_0
    return-void
.end method
