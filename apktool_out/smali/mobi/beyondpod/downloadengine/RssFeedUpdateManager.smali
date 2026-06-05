.class public Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;
.super Ljava/lang/Object;
.source "RssFeedUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;,
        Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RssFeedUpdateManager"

.field private static final _FeedBatchUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _FeedCountAtBatchStart:I = 0x0

.field private static _FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener; = null

.field private static _FeedsFailedCount:I = 0x0

.field private static _FeedsUnchangedCount:I = 0x0

.field private static _FeedsWithNewContentCount:I = 0x0

.field private static final _UpdateStatistics:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

.field private static m_AtQueueStart:Z = false

.field private static final m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

.field private static final m_RetryList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobi/beyondpod/rsscore/helpers/GenericQueue<",
            "Lmobi/beyondpod/rsscore/Feed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    .line 45
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_RetryList:Ljava/util/HashMap;

    .line 80
    new-instance v0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_UpdateStatistics:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$1;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    .line 202
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->setFeedUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 40
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_RetryList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 40
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->updateStatistics(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method static synthetic access$300(Z)V
    .locals 0

    .line 40
    invoke-static {p0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->doNextFeed(Z)V

    return-void
.end method

.method static synthetic access$400(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)Z
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->shouldRetry(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500()V
    .locals 0

    .line 40
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->onUpdateBatchStarted()V

    return-void
.end method

.method public static addFeedBatchUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;)V
    .locals 2

    .line 107
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    monitor-exit v0

    return-void

    .line 112
    :cond_0
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static currentFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 282
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Feed;

    :goto_0
    return-object v0
.end method

.method private static doNextFeed(Z)V
    .locals 1

    .line 433
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p0, :cond_0

    .line 436
    sget-object p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->dequeue()Ljava/lang/Object;

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 440
    sget-object p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->TAG:Ljava/lang/String;

    const-string v0, "@@@@@ Sleeping before feed update retry..."

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 441
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->nap(I)V

    :goto_0
    const/4 p0, 0x0

    .line 443
    sput-boolean p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_AtQueueStart:Z

    .line 445
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->updateQueuedFeeds()V

    return-void
.end method

.method public static feedCountAtBatchStart()I
    .locals 1

    .line 269
    sget v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedCountAtBatchStart:I

    return v0
.end method

.method public static feedsFailedCount()I
    .locals 1

    .line 259
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->getFailedDownloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static feedsUnchangedCount()I
    .locals 1

    .line 254
    sget v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsUnchangedCount:I

    return v0
.end method

.method public static feedsWithNewContentCount()I
    .locals 1

    .line 264
    sget v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsWithNewContentCount:I

    return v0
.end method

.method public static isAtQueueStart()Z
    .locals 1

    .line 238
    sget-boolean v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_AtQueueStart:Z

    return v0
.end method

.method public static isUpdating()Z
    .locals 1

    .line 243
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->isUpdating()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    .line 244
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static onUpdateBatchCompleted()V
    .locals 3

    .line 422
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->TAG:Ljava/lang/String;

    const-string v1, "Update Batch Completed!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 426
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 427
    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;->onFeedBatchUpdateCompleted()V

    goto :goto_0

    .line 428
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static onUpdateBatchStarted()V
    .locals 2

    .line 413
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->TAG:Ljava/lang/String;

    const-string v1, "Update Batch Started!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_UpdateStatistics:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->clear()V

    .line 415
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_UpdateStatistics:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->downloadTime:Ljava/util/Date;

    .line 416
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_UpdateStatistics:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isUnattended()Z

    move-result v1

    iput-boolean v1, v0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->isUnattended:Z

    .line 417
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->queueCount()I

    move-result v0

    sput v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedCountAtBatchStart:I

    return-void
.end method

.method private static prepareForUpdate()Z
    .locals 5

    .line 311
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isAlreadyConnectedOrWiFiShouldBeTurnedOnDuringUpdate()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 315
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->TAG:Ljava/lang/String;

    const-string v1, "Found that the device has no Internet connection and the WiFi should not be turned on! Canceling Downloads..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 319
    :try_start_0
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 320
    invoke-interface {v3}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;->onFeedBatchUpdateUnableToEstablishNetworkConnection()V

    goto :goto_0

    .line 321
    :cond_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 326
    :cond_1
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->isUpdating()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-wide/32 v3, 0x32000

    .line 337
    invoke-virtual {v0, v3, v4}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->checkIfSpaceIsAvailable(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 340
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 342
    :try_start_1
    sget-object v3, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 343
    invoke-interface {v4, v0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;->onInsufficientSpaceAtDownloadLocation(Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;)V

    goto :goto_1

    .line 344
    :cond_3
    monitor-exit v1

    return v2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 350
    :cond_4
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->resetUpdateCounters()V

    .line 351
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 352
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->clear()V

    const/4 v0, 0x1

    .line 353
    sput-boolean v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_AtQueueStart:Z

    return v0

    .line 328
    :cond_5
    :goto_2
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 330
    :try_start_2
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 331
    invoke-interface {v3}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;->onAnotherUpdateIsInProgress()V

    goto :goto_3

    .line 332
    :cond_6
    monitor-exit v0

    return v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1
.end method

.method public static queueCount()I
    .locals 1

    .line 249
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->size()I

    move-result v0

    return v0
.end method

.method public static removeFeedBatchUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;)V
    .locals 2

    .line 118
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    monitor-exit v0

    return-void

    .line 123
    :cond_0
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resetUpdateCounters()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    sput v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsUnchangedCount:I

    sput v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedCountAtBatchStart:I

    sput v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsWithNewContentCount:I

    sput v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsFailedCount:I

    return-void
.end method

.method private static shouldRetry(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)Z
    .locals 4

    .line 362
    instance-of v0, p1, Lmobi/beyondpod/rsscore/helpers/CoreHelper$InsuficientStorageSpaceException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 364
    :cond_0
    instance-of v0, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    if-eqz v0, :cond_1

    .line 366
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->clearAccountToken()V

    :cond_1
    move v0, v2

    .line 370
    :goto_0
    instance-of v3, p1, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_2

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->hasExternalStoragePermission()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 373
    :cond_2
    invoke-static {p1}, Lmobi/beyondpod/BeyondPodApplication;->pokeWiFiIfNeeded(Ljava/lang/Throwable;)V

    .line 375
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_4

    .line 379
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    sget-object p1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;

    .line 382
    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;->doRetry()V

    goto :goto_1

    .line 386
    :cond_3
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_RetryList:Ljava/util/HashMap;

    new-instance v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;

    invoke-direct {v1, p1, v2}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 391
    :cond_4
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_RetryList:Ljava/util/HashMap;

    new-instance v2, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;

    invoke-direct {v2, p1, v1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :goto_1
    sget-object p1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;

    .line 396
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;->canRetry()Z

    move-result p0

    return p0
.end method

.method public static statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;
    .locals 1

    .line 290
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_UpdateStatistics:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    return-object v0
.end method

.method public static terminateAllUpdates()V
    .locals 3

    .line 220
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->stop()V

    .line 223
    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->clear()V

    .line 228
    :cond_1
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 230
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 231
    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;->onFeedBatchUpdateCanceled()V

    goto :goto_0

    .line 232
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static updateFeedInternal(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 295
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 302
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedBatchUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 303
    invoke-interface {v2, p0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;->onFeedBatchUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 304
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->updateFeed(Lmobi/beyondpod/rsscore/Feed;Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 304
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 297
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error updating feed: both feed and feed.URL are required parameters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static updateFeeds([Lmobi/beyondpod/rsscore/Feed;)V
    .locals 4

    .line 207
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->prepareForUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 212
    sget-object v3, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v3, v2}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->enqueue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->updateQueuedFeeds()V

    return-void
.end method

.method public static updateQueue()Lmobi/beyondpod/rsscore/FeedList;
    .locals 3

    .line 470
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    const/4 v1, 0x0

    .line 471
    :goto_0
    sget-object v2, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 472
    sget-object v2, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_UpdateQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static updateQueuedFeeds()V
    .locals 1

    .line 401
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->updateFeedInternal(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->onUpdateBatchCompleted()V

    :goto_0
    return-void
.end method

.method private static updateStatistics(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 450
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 452
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    iput-object p0, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 454
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    sget p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsFailedCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsFailedCount:I

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasNewContent()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 459
    sget p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsWithNewContentCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsWithNewContentCount:I

    goto :goto_0

    .line 461
    :cond_1
    sget p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsUnchangedCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_FeedsUnchangedCount:I

    .line 464
    :goto_0
    sget-object p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->_UpdateStatistics:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->m_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->add(Lmobi/beyondpod/downloadengine/DownloadStatistics;)V

    :cond_2
    return-void
.end method
