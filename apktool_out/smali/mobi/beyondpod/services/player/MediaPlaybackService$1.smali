.class Lmobi/beyondpod/services/player/MediaPlaybackService$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$1;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$1;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p1, "plugged"

    const/4 v1, -0x1

    .line 158
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x4

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 164
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$1;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    if-eq p1, v1, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-static {v2, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$100(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Z)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 171
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->pauseOnPowerDisconnect()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$1;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$1;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 173
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Detected power disconnect! Pausing..."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$1;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->pause(Z)V

    :cond_4
    :goto_1
    return-void
.end method
