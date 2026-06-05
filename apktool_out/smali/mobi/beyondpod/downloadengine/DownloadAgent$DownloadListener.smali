.class public interface abstract Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;
.super Ljava/lang/Object;
.source "DownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/DownloadAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadCompleted(Lmobi/beyondpod/downloadengine/DownloadAgent;Z)V
.end method

.method public abstract onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V
.end method

.method public abstract onDownloadProgress(Lmobi/beyondpod/downloadengine/DownloadAgent;JJ)V
.end method

.method public abstract onDownloadStarted(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
.end method

.method public abstract onDownloadTerminated(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
.end method
