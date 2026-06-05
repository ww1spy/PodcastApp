.class Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;
.super Lmobi/beyondpod/services/player/TransportFocusHelper;
.source "TransportFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/TransportFocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportFocus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus$Holder;
    }
.end annotation


# static fields
.field private static _session:Landroid/media/session/MediaSession;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TransportFocusHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/services/player/TransportFocusHelper$1;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;-><init>()V

    return-void
.end method

.method private static buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .line 79
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 80
    sget-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->MEDIA_RECEIVER:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method private static buildPendingIntentForComponent(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 3

    .line 85
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-static {p0}, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    .line 86
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v1

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    const/high16 v1, 0x10000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    :goto_0
    const/4 v2, 0x0

    .line 85
    invoke-static {v0, v2, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method startListeningForMediaButton()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 94
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableHeadsetButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 97
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 100
    sget-object v1, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->MEDIA_RECEIVER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->_session:Landroid/media/session/MediaSession;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const-wide/16 v1, 0x277

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v3

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 113
    sget-object v1, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->MEDIA_RECEIVER:Landroid/content/ComponentName;

    invoke-static {v1}, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->buildPendingIntentForComponent(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 115
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 116
    new-instance v3, Landroid/media/session/MediaSession;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v3, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->_session:Landroid/media/session/MediaSession;

    .line 117
    sget-object v2, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->_session:Landroid/media/session/MediaSession;

    invoke-virtual {v2, v1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 118
    sget-object v1, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->_session:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 119
    sget-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->_session:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 124
    :cond_1
    :goto_0
    invoke-static {}, Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus$Holder;->access$300()Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;->startListeningForMediaButton()V

    return-void
.end method

.method stopListeningForMediaButton()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 131
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 132
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 135
    sget-object v1, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->MEDIA_RECEIVER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->_session:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->_session:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 141
    sget-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->_session:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 142
    sput-object v1, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;->_session:Landroid/media/session/MediaSession;

    .line 146
    :cond_1
    :goto_0
    invoke-static {}, Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus$Holder;->access$300()Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;->stopListeningForMediaButton()V

    return-void
.end method
