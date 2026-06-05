.class final Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$3;
.super Ljava/lang/Object;
.source "DownloadEngineNotificationManager.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnotherDownloadIsInProgress()V
    .locals 4

    .line 383
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    const-class v2, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;

    sget v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->UPDATE_AND_DOWNLOAD_COMPLETED:I

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method public onUnableToEstablishNetworkConnection()V
    .locals 4

    .line 390
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1600()V

    .line 391
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    const-class v2, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;

    sget v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->UPDATE_AND_DOWNLOAD_COMPLETED:I

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method public processingCanceled(I)V
    .locals 0

    return-void
.end method

.method public processingCompleted(I)V
    .locals 5

    const-string v0, ""

    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    .line 294
    new-array v2, v2, [Ljava/lang/Object;

    .line 295
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1700()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1800()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    const/4 v2, 0x6

    const/4 v3, -0x1

    .line 294
    invoke-static {v2, v0, p1, v1, v3}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public processingStarted(I)V
    .locals 5

    const-string v0, ""

    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    .line 301
    new-array v2, v2, [Ljava/lang/Object;

    .line 302
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1900()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2000()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    const/4 v2, 0x5

    const/4 v3, -0x1

    .line 301
    invoke-static {v2, v0, p1, v1, v3}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateAndDownloadBatchCompleted()V
    .locals 7

    .line 319
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update and download batch completed!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 322
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    const-class v2, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;

    sget v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->UPDATE_AND_DOWNLOAD_COMPLETED:I

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    .line 325
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2300()V

    .line 327
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->clearStatusNotificationAtTheEndOfUpdate()Z

    move-result v0

    if-nez v0, :cond_c

    .line 328
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->feedsWithNewContentCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->successfulDownloadsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->feedsFailedCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->failedDownloadsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->numStreamableEnclosures()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 340
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->feedsFailedCount()I

    move-result v0

    if-gtz v0, :cond_9

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->failedDownloadsCount()I

    move-result v0

    if-lez v0, :cond_1

    goto/16 :goto_6

    .line 347
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2500()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->successfulDownloadsCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->successfulDownloadsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->successfulDownloadsCount()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1100()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 351
    :cond_3
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->numStreamableEnclosures()I

    move-result v1

    if-lez v1, :cond_5

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->numStreamableEnclosures()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->numStreamableEnclosures()I

    move-result v1

    if-le v1, v2, :cond_4

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1100()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_2
    const-string v1, "%s%s. %s %s"

    const/4 v3, 0x4

    .line 355
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 357
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->feedsWithNewContentCount()I

    move-result v5

    if-lez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2700()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->feedsWithNewContentCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_6
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2800()Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v3, v4

    .line 359
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->feedsFailedCount()I

    move-result v4

    if-lez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->feedsFailedCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2900()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    const-string v4, ""

    :goto_4
    aput-object v4, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const/4 v0, 0x3

    .line 363
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->failedDownloadsCount()I

    move-result v2

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->failedDownloadsCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$3000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    const-string v2, ""

    :goto_5
    aput-object v2, v3, v0

    .line 355
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 342
    :cond_9
    :goto_6
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2400()Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_7
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->feedsFailedCount()I

    move-result v1

    if-gtz v1, :cond_b

    .line 370
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->failedDownloadsCount()I

    move-result v1

    if-lez v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x7

    goto :goto_9

    :cond_b
    :goto_8
    const/16 v1, 0x8

    :goto_9
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 371
    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$3100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 368
    invoke-static {v1, v2, v3, v0, v4}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->resetUpdateCounters()V

    goto :goto_b

    .line 334
    :cond_c
    :goto_a
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->clearNotification()V

    .line 377
    :goto_b
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->stopDownloadServiceHolder()V

    return-void
.end method

.method public updateAndDownloadBatchStarted()V
    .locals 4

    .line 307
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->queueCount()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onBatchUpdateStarted(I)V

    .line 308
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update and download batch Started!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->startDownloadServiceHolder()Z

    .line 311
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$2200()V

    .line 312
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    const-class v2, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;

    sget v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->UPDATE_AND_DOWNLOAD_STARTED:I

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method
