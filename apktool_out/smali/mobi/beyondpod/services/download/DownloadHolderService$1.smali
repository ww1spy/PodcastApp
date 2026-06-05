.class Lmobi/beyondpod/services/download/DownloadHolderService$1;
.super Landroid/os/Handler;
.source "DownloadHolderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/download/DownloadHolderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/download/DownloadHolderService;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/download/DownloadHolderService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lmobi/beyondpod/services/download/DownloadHolderService$1;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 60
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    invoke-static {}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadService IDLE handler found that the download is still in progress! Starting a new wait cycle..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lmobi/beyondpod/services/download/DownloadHolderService$1;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-static {p1}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$100(Lmobi/beyondpod/services/download/DownloadHolderService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService$1;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-static {v0}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$100(Lmobi/beyondpod/services/download/DownloadHolderService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Terminating an IDLE Download Holder service..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lmobi/beyondpod/services/download/DownloadHolderService$1;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-static {p1}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$200(Lmobi/beyondpod/services/download/DownloadHolderService;)V

    .line 72
    iget-object p1, p0, Lmobi/beyondpod/services/download/DownloadHolderService$1;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/download/DownloadHolderService;->stopSelf()V

    return-void
.end method
