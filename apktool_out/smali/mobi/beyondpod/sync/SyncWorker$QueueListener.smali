.class public interface abstract Lmobi/beyondpod/sync/SyncWorker$QueueListener;
.super Ljava/lang/Object;
.source "SyncWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/sync/SyncWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueueListener"
.end annotation


# virtual methods
.method public abstract onQueueCompleted(Z)V
.end method

.method public abstract onQueueProgress(I)V
.end method

.method public abstract onQueueStarted()V
.end method
