.class final Lmobi/beyondpod/aggregators/feedly/Feedly$2;
.super Ljava/lang/Object;
.source "Feedly.java"

# interfaces
.implements Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/aggregators/feedly/Feedly;->logIn(Ljava/lang/String;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$login:Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;

.field final synthetic val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;


# direct methods
.method constructor <init>(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$2;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;

    iput-object p2, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$2;->val$login:Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueCompleted(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lmobi/beyondpod/aggregators/RequestBase;",
            ">;)V"
        }
    .end annotation

    .line 172
    iget-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$2;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$2;->val$login:Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;

    if-eqz p1, :cond_1

    .line 174
    iget-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$2;->val$login:Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;

    invoke-virtual {p1}, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->status()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 176
    iget-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$2;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;

    invoke-interface {p1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;->success()V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$2;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;

    iget-object p2, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$2;->val$login:Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;

    invoke-virtual {p2}, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->lastException()Ljava/lang/Exception;

    move-result-object p2

    invoke-interface {p1, p2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;->failed(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
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
