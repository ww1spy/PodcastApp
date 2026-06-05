.class final Lmobi/beyondpod/aggregators/feedly/Feedly$4;
.super Ljava/lang/Object;
.source "Feedly.java"

# interfaces
.implements Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/aggregators/feedly/Feedly;->syncItemStatus(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$items:Ljava/util/HashMap;

.field final synthetic val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$4;->val$items:Ljava/util/HashMap;

    iput-object p2, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$4;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueCompleted(ZLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lmobi/beyondpod/aggregators/RequestBase;",
            ">;)V"
        }
    .end annotation

    .line 282
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/beyondpod/aggregators/RequestBase;

    .line 284
    invoke-virtual {v6}, Lmobi/beyondpod/aggregators/RequestBase;->status()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 289
    instance-of v7, v6, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;

    if-eqz v7, :cond_3

    .line 291
    move-object v7, v6

    check-cast v7, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;

    .line 293
    iget-object v8, v7, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->ItemIDs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 295
    iget-object v10, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$4;->val$items:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    if-eqz v9, :cond_1

    .line 298
    iget-object v10, v7, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->Tag:Ljava/lang/String;

    const-string v11, "markAsRead"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v7, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->Tag:Ljava/lang/String;

    const-string v11, "keepUnread"

    .line 299
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 302
    invoke-virtual {v9}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->setReadSynced()V

    goto :goto_1

    .line 308
    :cond_3
    instance-of v7, v6, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;

    if-eqz v7, :cond_0

    .line 310
    check-cast v6, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;

    .line 312
    iget-object v7, v6, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->ItemIDs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 314
    iget-object v9, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$4;->val$items:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    if-eqz v8, :cond_4

    .line 317
    iget-object v9, v6, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->Tag:Ljava/lang/String;

    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->access$100()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 320
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->setStarSynced()V

    goto :goto_2

    .line 327
    :cond_5
    invoke-virtual {v6}, Lmobi/beyondpod/aggregators/RequestBase;->status()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 337
    :cond_7
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- Google Reader Sync "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    const-string v7, "Cancelled"

    goto :goto_3

    :cond_8
    const-string v7, "Complete"

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "!. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " total, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " succeded "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed, "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pending). Synced: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " read and "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Starred items."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v4, :cond_9

    if-lez v5, :cond_a

    .line 343
    :cond_9
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markModified()V

    .line 345
    :cond_a
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryAsync()V

    .line 346
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->clearReaderSyncNotification()V

    const/4 v0, 0x0

    .line 348
    invoke-static {v0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->access$302(Lmobi/beyondpod/aggregators/AggregatorRequestQueue;)Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    .line 350
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$4;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;

    if-eqz v0, :cond_b

    .line 351
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/Feedly$4;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;

    add-int/2addr v4, v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v0, p1, v4, p2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;->syncCompleted(ZII)V

    :cond_b
    return-void
.end method

.method public onQueueProgress(II)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, p1, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 362
    :goto_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p2

    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->access$500()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-virtual {p2, v0, p1}, Lmobi/beyondpod/BeyondPodApplication;->setReaderSyncNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onQueueStarted(I)V
    .locals 2

    .line 369
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setReaderSyncNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
