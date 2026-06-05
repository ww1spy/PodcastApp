.class Lmobi/beyondpod/services/scheduler/SchedulingService$3;
.super Landroid/os/Handler;
.source "SchedulingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/scheduler/SchedulingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/scheduler/SchedulingService;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$3;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 397
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 401
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SchedulingService IDLE handler found that the download is still in progress! Starting a new wait cycle..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$3;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {p1}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$400(Lmobi/beyondpod/services/scheduler/SchedulingService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$3;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$400(Lmobi/beyondpod/services/scheduler/SchedulingService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Terminating an IDLE scheduling service..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$3;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {p1}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$100(Lmobi/beyondpod/services/scheduler/SchedulingService;)V

    .line 409
    iget-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$3;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/scheduler/SchedulingService;->stopSelf()V

    :goto_0
    return-void
.end method
