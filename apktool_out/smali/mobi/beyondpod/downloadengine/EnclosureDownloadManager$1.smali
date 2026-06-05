.class final Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$1;
.super Ljava/lang/Object;
.source "EnclosureDownloadManager.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnclosureDownloadCompleted(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 386
    invoke-static {p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$300(Lmobi/beyondpod/rsscore/Track;)V

    .line 389
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$400()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$400()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    iget v1, v0, Lmobi/beyondpod/rsscore/Feed;->numDownloadedEnclosures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmobi/beyondpod/rsscore/Feed;->numDownloadedEnclosures:I

    .line 395
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$508()I

    .line 397
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 399
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 400
    invoke-interface {v2, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onEnclosureDownloadCompleted(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 401
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$700()Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->dequeue()Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 406
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 408
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$800()V

    return-void

    :catchall_0
    move-exception p1

    .line 401
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onEnclosureDownloadError(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)V
    .locals 6

    .line 414
    invoke-static {p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$300(Lmobi/beyondpod/rsscore/Track;)V

    .line 416
    invoke-static {p1, p2}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$900(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$700()Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->dequeue()Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 422
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isRemoteEpisode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->rowID()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 425
    iput-boolean v1, p1, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    .line 426
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackAsync(Lmobi/beyondpod/rsscore/Track;)V

    .line 429
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$1008()I

    .line 431
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@ All retries failed! Giving up the download of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 437
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 438
    invoke-interface {v3, p1, p2}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onEnclosureDownloadFailed(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)V

    goto :goto_0

    .line 439
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    instance-of p1, p2, Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;

    if-eqz p1, :cond_3

    .line 442
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->terminateAllDownloads()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 447
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 448
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "@@@@@ Sleeping before episode download retry..."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 449
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->nap(I)V

    .line 451
    :cond_4
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$800()V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 439
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onEnclosureDownloadProgress(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 458
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$400()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 465
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 467
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 468
    invoke-interface {v2, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onEnclosureDownloadProgress(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 469
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onEnclosureDownloadStarted(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 475
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 477
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 478
    invoke-interface {v2, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onEnclosureDownloadStarted(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 479
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onEnclosureDownloadTerminated(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 485
    invoke-static {p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$300(Lmobi/beyondpod/rsscore/Track;)V

    .line 487
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 489
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 490
    invoke-interface {v2, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onEnclosureDownloadTerminated(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 491
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$700()Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->dequeue()Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 494
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$800()V

    return-void

    :catchall_0
    move-exception p1

    .line 491
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
