.class Lmobi/beyondpod/services/player/MediaPlaybackService$4;
.super Landroid/os/Handler;
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

    .line 511
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 516
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2200(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2300(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    .line 517
    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$400(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/PlayerUtils;->isPlayerServiceLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 527
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Playback Service idle timeout reached, but the service is currently locked! Starting another timeout..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$700(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 529
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$700(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 530
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$700(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 535
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2400(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    .line 536
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2500(Lmobi/beyondpod/services/player/MediaPlaybackService;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->stopSelf(I)V

    return-void

    .line 519
    :cond_2
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$4;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 520
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player service autoshutdown found that track is still preparing. Ignoring shutdown..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
