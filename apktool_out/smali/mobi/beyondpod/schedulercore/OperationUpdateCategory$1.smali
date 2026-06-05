.class Lmobi/beyondpod/schedulercore/OperationUpdateCategory$1;
.super Ljava/lang/Object;
.source "OperationUpdateCategory.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/schedulercore/OperationUpdateCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/schedulercore/OperationUpdateCategory;


# direct methods
.method constructor <init>(Lmobi/beyondpod/schedulercore/OperationUpdateCategory;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory$1;->this$0:Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 2

    .line 105
    iget p1, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->UPDATE_AND_DOWNLOAD_COMPLETED:I

    if-ne p1, v0, :cond_0

    .line 107
    invoke-static {}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Update and Download Completed!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory$1;->this$0:Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    iget-object v0, v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->_OnUpdateAndDownloadHandler:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 112
    iget-object p1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory$1;->this$0:Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->onOperationCompleted()V

    :cond_0
    return-void
.end method
