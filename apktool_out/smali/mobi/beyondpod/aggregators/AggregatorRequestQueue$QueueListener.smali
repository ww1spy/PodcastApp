.class public interface abstract Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;
.super Ljava/lang/Object;
.source "AggregatorRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/aggregators/AggregatorRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueueListener"
.end annotation


# virtual methods
.method public abstract onQueueCompleted(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lmobi/beyondpod/aggregators/RequestBase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueueProgress(II)V
.end method

.method public abstract onQueueStarted(I)V
.end method
