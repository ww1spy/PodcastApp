.class final Lmobi/beyondpod/aggregators/feedly/Feedly$3;
.super Ljava/lang/Object;
.source "Feedly.java"

# interfaces
.implements Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/aggregators/feedly/Feedly;->addSubscription(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;


# direct methods
.method constructor <init>(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$3;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueCompleted(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lmobi/beyondpod/aggregators/RequestBase;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/aggregators/RequestBase;

    .line 209
    invoke-virtual {p2}, Lmobi/beyondpod/aggregators/RequestBase;->status()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 211
    iget-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$3;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;

    invoke-virtual {p2}, Lmobi/beyondpod/aggregators/RequestBase;->lastException()Ljava/lang/Exception;

    move-result-object p2

    invoke-interface {p1, p2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;->failed(Ljava/lang/Exception;)V

    return-void

    .line 216
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$3;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;

    invoke-interface {p1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;->success()V

    return-void
.end method

.method public onQueueProgress(II)V
    .locals 0

    return-void
.end method

.method public onQueueStarted(I)V
    .locals 0

    return-void
.end method
