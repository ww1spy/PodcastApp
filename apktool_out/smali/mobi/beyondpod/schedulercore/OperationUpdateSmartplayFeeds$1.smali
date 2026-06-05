.class Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds$1;
.super Ljava/lang/Object;
.source "OperationUpdateSmartplayFeeds.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;


# direct methods
.method constructor <init>(Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds$1;->this$0:Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 2

    .line 97
    iget p1, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->UPDATE_AND_DOWNLOAD_COMPLETED:I

    if-ne p1, v0, :cond_0

    .line 99
    invoke-static {}, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartPlay Update and Download Completed!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds$1;->this$0:Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;

    iget-object v0, v0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->_OnUpdateAndDownloadHandler:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 104
    iget-object p1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds$1;->this$0:Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->onOperationCompleted()V

    :cond_0
    return-void
.end method
