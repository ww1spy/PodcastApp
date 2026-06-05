.class Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$7;
.super Ljava/lang/Object;
.source "UpdateAndDownloadQueueActivityDialog.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$7;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnotherDownloadIsInProgress()V
    .locals 0

    return-void
.end method

.method public onUnableToEstablishNetworkConnection()V
    .locals 0

    return-void
.end method

.method public processingCanceled(I)V
    .locals 0

    return-void
.end method

.method public processingCompleted(I)V
    .locals 0

    return-void
.end method

.method public processingStarted(I)V
    .locals 0

    .line 290
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$7;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public updateAndDownloadBatchCompleted()V
    .locals 0

    return-void
.end method

.method public updateAndDownloadBatchStarted()V
    .locals 0

    return-void
.end method
