.class Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;
.super Lmobi/beyondpod/services/player/TransportFocusHelper;
.source "TransportFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/TransportFocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastReceiverTransportFocus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TransportFocusHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/services/player/TransportFocusHelper$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;-><init>()V

    return-void
.end method


# virtual methods
.method startListeningForMediaButton()V
    .locals 3

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 56
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->Instance:Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;

    invoke-virtual {v1, v2, v0}, Lmobi/beyondpod/BeyondPodApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method stopListeningForMediaButton()V
    .locals 2

    .line 65
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->Instance:Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
