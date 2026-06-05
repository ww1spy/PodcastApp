.class public interface abstract Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;
.super Ljava/lang/Object;
.source "UpdateAndDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateAndDownloadListener"
.end annotation


# virtual methods
.method public abstract onAnotherDownloadIsInProgress()V
.end method

.method public abstract onUnableToEstablishNetworkConnection()V
.end method

.method public abstract processingCanceled(I)V
.end method

.method public abstract processingCompleted(I)V
.end method

.method public abstract processingStarted(I)V
.end method

.method public abstract updateAndDownloadBatchCompleted()V
.end method

.method public abstract updateAndDownloadBatchStarted()V
.end method
