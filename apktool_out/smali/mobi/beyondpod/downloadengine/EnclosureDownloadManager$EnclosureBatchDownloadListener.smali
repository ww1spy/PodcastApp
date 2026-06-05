.class public interface abstract Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;
.super Ljava/lang/Object;
.source "EnclosureDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnclosureBatchDownloadListener"
.end annotation


# virtual methods
.method public abstract onAnotherDownloadIsInProgress()V
.end method

.method public abstract onEnclosureBatchDownloadCanceled()V
.end method

.method public abstract onEnclosureBatchDownloadCompleted()V
.end method

.method public abstract onEnclosureBatchDownloadStarted()V
.end method

.method public abstract onEnclosureBatchEnclosureDownloadStarting(Lmobi/beyondpod/rsscore/Track;Z)V
.end method

.method public abstract onEnclosureDownloadCanceled(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract onEnclosureDownloadCompleted(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract onEnclosureDownloadFailed(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)V
.end method

.method public abstract onEnclosureDownloadProgress(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract onEnclosureDownloadStarted(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract onEnclosureDownloadTerminated(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract onUnableToEstablishNetworkConnection()V
.end method
