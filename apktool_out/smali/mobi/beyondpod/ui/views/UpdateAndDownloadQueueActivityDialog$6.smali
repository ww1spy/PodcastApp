.class Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$6;
.super Ljava/lang/Object;
.source "UpdateAndDownloadQueueActivityDialog.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;


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

    .line 208
    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$6;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnotherDownloadIsInProgress()V
    .locals 0

    return-void
.end method

.method public onEnclosureBatchDownloadCanceled()V
    .locals 0

    return-void
.end method

.method public onEnclosureBatchDownloadCompleted()V
    .locals 1

    .line 223
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$6;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public onEnclosureBatchDownloadStarted()V
    .locals 1

    .line 212
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$6;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public onEnclosureBatchEnclosureDownloadStarting(Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 0

    .line 229
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$6;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public onEnclosureDownloadCanceled(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    return-void
.end method

.method public onEnclosureDownloadCompleted(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    return-void
.end method

.method public onEnclosureDownloadFailed(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onEnclosureDownloadProgress(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 235
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$6;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public onEnclosureDownloadStarted(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 256
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$6;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public onEnclosureDownloadTerminated(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    return-void
.end method

.method public onUnableToEstablishNetworkConnection()V
    .locals 0

    return-void
.end method
