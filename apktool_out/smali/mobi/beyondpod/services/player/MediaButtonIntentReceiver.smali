.class public Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field public static Instance:Lmobi/beyondpod/services/player/MediaButtonIntentReceiver; = null

.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static final MSG_LONGPRESS_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaButtonIntentReceiver"

.field private static _IsListening:Z = false

.field private static mDown:Z = false

.field private static mHandler:Landroid/os/Handler; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private static mLastClickTime:J = 0x0L

.field private static mLaunched:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;-><init>()V

    sput-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->Instance:Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;

    .line 52
    sget-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "****** Static Constructor Called *********"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 36
    sget-boolean v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 36
    sput-boolean p0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static publishMediaButtonEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 113
    sget-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***========> Media button receiver executing action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "command"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/BeyondPodApplication;->sendCommandToVideoPlayer(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public static startListeningForMediaButton()V
    .locals 1

    .line 62
    invoke-static {}, Lmobi/beyondpod/services/player/TransportFocusHelper;->getInstance()Lmobi/beyondpod/services/player/TransportFocusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/TransportFocusHelper;->startListeningForMediaButton()V

    const/4 v0, 0x1

    .line 63
    sput-boolean v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->_IsListening:Z

    return-void
.end method

.method public static stopListeningForMediaButton()V
    .locals 1

    .line 75
    sget-boolean v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->_IsListening:Z

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/TransportFocusHelper;->getInstance()Lmobi/beyondpod/services/player/TransportFocusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/TransportFocusHelper;->stopListeningForMediaButton()V

    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->_IsListening:Z

    return-void
.end method

.method public static touch()V
    .locals 0

    return-void
.end method

.method public static translateCommand(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "pause"

    return-object p0

    :pswitch_0
    const-string p0, "skiptoend"

    return-object p0

    :pswitch_1
    const-string p0, "skipbackword"

    return-object p0

    :pswitch_2
    const-string p0, "skipforward"

    return-object p0

    :pswitch_3
    const-string p0, "playprevious"

    return-object p0

    :pswitch_4
    const-string p0, "playnext"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p1

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 130
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****** Media button receiver got event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 134
    sget-object v1, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->pauseOnHeadsetDisconnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    sget-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "**** We got headset disconnected but we are not playing. Nothing to do!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_0
    sget-object v1, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "*** Sending Pause command to the player..."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mobi.beyondpod.services.musicservicecommand"

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "command"

    const-string v3, "pause"

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->publishMediaButtonEvent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "*** Pause on Headset Disconnect is Diasabled in settings!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 157
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableHeadsetButton()Z

    move-result v2

    if-nez v2, :cond_3

    .line 159
    sget-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****** Media button disabled! Ignoring..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v4, p2

    .line 165
    invoke-virtual {v4, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 167
    sget-object v4, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****** Media button event FLAGS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_4

    .line 171
    sget-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****** Media button event was cancelled! Ignoring..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_4
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 176
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 177
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    const/4 v2, 0x0

    const/16 v7, 0x4f

    if-eq v1, v7, :cond_7

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 234
    sget-object v8, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*** Media Button KEY => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " (unknown) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 207
    :pswitch_0
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Media Button KEY => MEDIA_PAUSE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pause"

    goto/16 :goto_1

    .line 202
    :pswitch_1
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Media Button KEY => MEDIA_PLAY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "resume"

    goto/16 :goto_1

    .line 212
    :pswitch_2
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Media Button KEY => KEYCODE_MEDIA_FAST_FORWARD "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTNextButtonAction()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_5

    const-string v2, "skipbackword"

    goto/16 :goto_1

    :cond_5
    const-string v2, "skipforward"

    goto/16 :goto_1

    .line 223
    :pswitch_3
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Media Button KEY => KEYCODE_MEDIA_REWIND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTPreviousButtonAction()I

    move-result v2

    if-ne v2, v3, :cond_6

    const-string v2, "skipforward"

    goto/16 :goto_1

    :cond_6
    const-string v2, "skipbackword"

    goto/16 :goto_1

    .line 229
    :pswitch_4
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Media Button KEY => MEDIA_PREVIOUS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTPreviousButtonAction()I

    move-result v2

    invoke-static {v2}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->translateCommand(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 218
    :pswitch_5
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Media Button KEY => MEDIA_NEXT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTNextButtonAction()I

    move-result v2

    invoke-static {v2}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->translateCommand(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 187
    :pswitch_6
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Media Button KEY => MEDIA_STOP "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pause"

    goto :goto_1

    .line 197
    :pswitch_7
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Media Button KEY => MEDIA_PLAY_PAUSE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "togglepause"

    goto :goto_1

    .line 192
    :cond_7
    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** Media Button KEY => HEADSETHOOK "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "togglepause"

    :goto_1
    if-eqz v2, :cond_d

    const/4 v8, 0x0

    if-nez v4, :cond_b

    .line 242
    sget-boolean v4, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mDown:Z

    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x0

    if-eqz v4, :cond_8

    const-string v1, "togglepause"

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-wide v1, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mLastClickTime:J

    cmp-long v4, v1, v11

    if-eqz v4, :cond_c

    sget-wide v1, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v7, v5, v1

    cmp-long v1, v7, v9

    if-lez v1, :cond_c

    .line 247
    sget-object v1, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 257
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-class v13, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v4, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "mobi.beyondpod.services.musicservicecommand"

    .line 258
    invoke-virtual {v4, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v1, v7, :cond_9

    .line 259
    sget-wide v13, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v15, v5, v13

    const-wide/16 v13, 0x12c

    cmp-long v1, v15, v13

    if-gez v1, :cond_9

    const-string v1, "command"

    .line 261
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->WRDoubleClickButtonAction()I

    move-result v2

    invoke-static {v2}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->translateCommand(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "commandOption"

    const-string v2, "play"

    .line 262
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-static {v0, v4}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->publishMediaButtonEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 264
    sput-wide v11, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_2

    :cond_9
    const-string v1, "command"

    .line 268
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-static {v0, v4}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->publishMediaButtonEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 270
    sput-wide v5, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mLastClickTime:J

    const-string v1, "togglepause"

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 278
    sget-object v1, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    sget-object v1, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 284
    :cond_a
    :goto_2
    sput-boolean v8, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mLaunched:Z

    .line 285
    sput-boolean v3, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_3

    .line 291
    :cond_b
    sget-object v0, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    sput-boolean v8, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->mDown:Z

    .line 295
    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 296
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->abortBroadcast()V

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
