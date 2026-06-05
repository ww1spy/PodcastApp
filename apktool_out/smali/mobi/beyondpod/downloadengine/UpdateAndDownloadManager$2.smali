.class final Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$2;
.super Ljava/lang/Object;
.source "UpdateAndDownloadManager.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
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

    .line 186
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$000()V

    return-void
.end method

.method public onEnclosureBatchDownloadCompleted()V
    .locals 0

    .line 197
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$200()V

    return-void
.end method

.method public onEnclosureBatchDownloadStarted()V
    .locals 0

    return-void
.end method

.method public onEnclosureBatchEnclosureDownloadStarting(Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 0

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

    return-void
.end method

.method public onEnclosureDownloadStarted(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

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
