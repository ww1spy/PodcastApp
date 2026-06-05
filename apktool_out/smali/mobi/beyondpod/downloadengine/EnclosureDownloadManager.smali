.class public Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;
.super Ljava/lang/Object;
.source "EnclosureDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;,
        Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;,
        Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnclosureDownloadManager"

.field private static _DownloadServiceHolderStartedAtStart:Z = false

.field private static final _DownloadStats:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

.field private static final _EnclosureBatchDownloadListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener; = null

.field private static _FailedDownloadsCount:I = 0x0

.field private static _SuccessfulDownloadsCount:I = 0x0

.field private static _WiFiTurnedOnAtStart:Z = false

.field private static m_AtQueueStart:Z = false

.field private static final m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

.field private static final m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

.field public static m_IsUnattended:Z = true

.field private static final m_RetryList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadStats:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    .line 71
    new-instance v0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    .line 72
    new-instance v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;-><init>(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$1;)V

    sput-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    .line 380
    new-instance v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$1;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    .line 500
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->setEnclosureDownloadListener(Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1008()I
    .locals 2

    .line 53
    sget v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_FailedDownloadsCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_FailedDownloadsCount:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 53
    invoke-static {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->updateStatistics(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .line 53
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$508()I
    .locals 2

    .line 53
    sget v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_SuccessfulDownloadsCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_SuccessfulDownloadsCount:I

    return v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .line 53
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;
    .locals 1

    .line 53
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    return-object v0
.end method

.method static synthetic access$800()V
    .locals 0

    .line 53
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->downloadQueuedEnclosures()V

    return-void
.end method

.method static synthetic access$900(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)Z
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->shouldRetry(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public static addEnclosureBatchDownloadListener(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;)V
    .locals 2

    .line 360
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 362
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    monitor-exit v0

    return-void

    .line 365
    :cond_0
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
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

    .line 591
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 594
    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v0, v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public static downloadCount()I
    .locals 1

    .line 629
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    iget v0, v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->downloadCount:I

    return v0
.end method

.method private static downloadEnclosureInternal(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V
    .locals 13

    .line 649
    iget-object v10, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    .line 650
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    .line 655
    :try_start_0
    sget-boolean v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_IsUnattended:Z

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowCleanupForManualDownloads()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    :cond_0
    invoke-virtual {v10}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 659
    invoke-virtual {v10}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 661
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isRemoteEpisode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Episode Cleanup rules were ignored when downloading the remote episode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move v0, v12

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 667
    :goto_0
    invoke-static {v10, v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->deleteOldTracksForFeed(Lmobi/beyondpod/rsscore/Feed;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 673
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete old tracks for feed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 676
    :cond_3
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->htmlDecode(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->cleanTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    :goto_3
    move-object v8, v1

    goto :goto_4

    :cond_5
    const-string v1, ""

    goto :goto_3

    .line 682
    :goto_4
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 683
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->pubDate()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->parentItemID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v4, v4, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 684
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->description()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->showNotes()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    move-object v0, v10

    .line 682
    invoke-static/range {v0 .. v9}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->findOrCreateLocalTrack(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 688
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v11, :cond_6

    const-wide/16 v1, 0x0

    goto :goto_5

    .line 690
    :cond_6
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_5
    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/Track;->setDownloadSize(J)V

    const/4 v1, 0x6

    .line 691
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setDownloadStatus(I)V

    .line 692
    invoke-static {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->onEnclosureDownloadStarting(Lmobi/beyondpod/rsscore/Track;)V

    .line 693
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    iget-object p0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v1, v0, p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->downloadTrack(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    return-void

    .line 698
    :cond_7
    new-instance p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;-><init>()V

    .line 699
    iput-object v10, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 700
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerTrack:Lmobi/beyondpod/rsscore/Track;

    if-nez v0, :cond_8

    .line 704
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to create local track for download!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    goto :goto_6

    .line 708
    :cond_8
    iput-boolean v12, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadSkipped:Z

    .line 711
    :goto_6
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadStats:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->add(Lmobi/beyondpod/downloadengine/DownloadStatistics;)V

    .line 716
    sget-object p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->dequeue()Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 717
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->downloadQueuedEnclosures()V

    goto :goto_7

    .line 720
    :cond_9
    sget-object p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    const-string v0, "failed to dequeue download queue! Terminating..."

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->onDownloadBatchCompleted()V

    :goto_7
    return-void
.end method

.method static downloadEnclosures(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;Z)V"
        }
    .end annotation

    .line 511
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    sget-object p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enclosure Download Manager is Downloading... Adding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enclosures to the queue!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {p1, p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->enqueue(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 516
    invoke-static {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->onEnclosureDownloadStarting(Lmobi/beyondpod/rsscore/Track;)V

    return-void

    .line 520
    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enclosure Download Manager is Idle... Starting download of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enclosures!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->prepareForDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    sput-boolean p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_IsUnattended:Z

    .line 526
    sget-object p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {p1, p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->enqueue(Ljava/util/List;)V

    .line 527
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->downloadQueuedEnclosures()V

    goto :goto_0

    .line 531
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->onDownloadBatchCompleted()V

    :goto_0
    return-void
.end method

.method public static downloadQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;"
        }
    .end annotation

    .line 644
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->downloadQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static downloadQueuedEnclosures()V
    .locals 2

    .line 727
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isAtQueueStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->onDownloadBatchStarted()V

    .line 730
    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 732
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 733
    invoke-static {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->downloadEnclosureInternal(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V

    goto :goto_0

    .line 737
    :cond_1
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "Nothing to Download!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->onDownloadBatchCompleted()V

    :goto_0
    return-void
.end method

.method public static failedDownloadsCount()I
    .locals 1

    .line 621
    sget v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_FailedDownloadsCount:I

    return v0
.end method

.method public static isAtQueueStart()Z
    .locals 1

    .line 599
    sget-boolean v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_AtQueueStart:Z

    return v0
.end method

.method public static isDownloadPending(Ljava/lang/String;)Z
    .locals 1

    .line 537
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->containsUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDownloadPending(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z
    .locals 0

    .line 542
    iget-object p0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloadPending(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDownloading()Z
    .locals 1

    .line 604
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    .line 605
    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->size()I

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

.method public static loadDownloadQueueFromFile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;"
        }
    .end annotation

    .line 562
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->loadDownloadQueueFromFile()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static onDownloadBatchCompleted()V
    .locals 3

    .line 856
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 858
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 859
    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onEnclosureBatchDownloadCompleted()V

    goto :goto_0

    .line 860
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->turnWiFiOffIfNeeded()V

    .line 865
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->saveHistorySync()V

    .line 867
    sget-boolean v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadServiceHolderStartedAtStart:Z

    if-eqz v0, :cond_1

    .line 868
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->stopDownloadServiceHolder()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 860
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static onDownloadBatchStarted()V
    .locals 3

    const/4 v0, 0x0

    .line 831
    sput v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_FailedDownloadsCount:I

    sput v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_SuccessfulDownloadsCount:I

    .line 832
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadStats:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    invoke-virtual {v1}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->clear()V

    .line 833
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadStats:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->downloadTime:Ljava/util/Date;

    .line 834
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadStats:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isUnattended()Z

    move-result v2

    iput-boolean v2, v1, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->isUnattended:Z

    .line 835
    sput-boolean v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_AtQueueStart:Z

    .line 837
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_IsUnattended:Z

    if-eqz v2, :cond_0

    const-string v2, "automatic"

    goto :goto_0

    :cond_0
    const-string v2, "manual"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " download batch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    .line 838
    invoke-virtual {v2}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enclosures"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->isDownloadServiceHolderRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->startDownloadServiceHolder()Z

    move-result v0

    sput-boolean v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadServiceHolderStartedAtStart:Z

    .line 845
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->turnWiFiOnIfNeeded()V

    .line 847
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 849
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 850
    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onEnclosureBatchDownloadStarted()V

    goto :goto_1

    .line 851
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

.method private static onEnclosureDownloadStarting(Lmobi/beyondpod/rsscore/Track;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 745
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 748
    :goto_0
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    monitor-enter v1

    .line 750
    :try_start_0
    sget-object v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 751
    invoke-interface {v3, p0, v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onEnclosureBatchEnclosureDownloadStarting(Lmobi/beyondpod/rsscore/Track;Z)V

    goto :goto_1

    .line 752
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static prepareForDownload()Z
    .locals 3

    .line 757
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isAlreadyConnectedOrWiFiShouldBeTurnedOnDuringUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to start enclosure download! Device is not connected to a network!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 764
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 765
    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onUnableToEstablishNetworkConnection()V

    goto :goto_0

    .line 766
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 770
    :cond_1
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadStats:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->clear()V

    .line 771
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 772
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->clear()V

    const/4 v0, 0x1

    .line 773
    sput-boolean v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_AtQueueStart:Z

    return v0
.end method

.method public static queueCount()I
    .locals 1

    .line 639
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->size()I

    move-result v0

    return v0
.end method

.method public static removeEnclosureBatchDownloadListener(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;)V
    .locals 2

    .line 371
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 373
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    monitor-exit v0

    return-void

    .line 376
    :cond_0
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeFromQueue(Ljava/lang/String;)V
    .locals 1

    .line 553
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->track()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 557
    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->removeFromQueue(Ljava/lang/String;)V

    return-void
.end method

.method public static removeFromQueue(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V
    .locals 0

    .line 547
    iget-object p0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->removeFromQueue(Ljava/lang/String;)V

    return-void
.end method

.method private static shouldRetry(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)Z
    .locals 4

    .line 791
    instance-of v0, p1, Lmobi/beyondpod/rsscore/helpers/CoreHelper$InsuficientStorageSpaceException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 794
    :goto_0
    instance-of v3, p1, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->hasExternalStoragePermission()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 797
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/BeyondPodApplication;->pokeWiFiIfNeeded(Ljava/lang/Throwable;)V

    .line 799
    instance-of v3, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    if-eqz v3, :cond_2

    move v0, v2

    .line 802
    :cond_2
    instance-of v3, p1, Lmobi/beyondpod/downloadengine/DownloadAgent$WebException;

    if-eqz v3, :cond_4

    .line 804
    check-cast p1, Lmobi/beyondpod/downloadengine/DownloadAgent$WebException;

    .line 805
    iget p1, p1, Lmobi/beyondpod/downloadengine/DownloadAgent$WebException;->StatusCode:I

    const/16 v0, 0x1a0

    if-ne p1, v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 810
    sget-object p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 812
    sget-object p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 813
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 817
    :cond_5
    sget-object p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 822
    :cond_6
    sget-object p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :goto_2
    sget-object p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_RetryList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method

.method public static statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;
    .locals 1

    .line 613
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadStats:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    return-object v0
.end method

.method public static successfulDownloadsCount()I
    .locals 1

    .line 634
    sget v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_SuccessfulDownloadsCount:I

    return v0
.end method

.method public static terminateAllDownloads()V
    .locals 3

    .line 567
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, ">> Received TerminateAllDownloads command"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 570
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_DownloadQueue:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->clear()V

    .line 572
    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->stop()V

    .line 576
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->saveHistorySync()V

    .line 578
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 580
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_EnclosureBatchDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 581
    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;->onEnclosureBatchDownloadCanceled()V

    goto :goto_0

    .line 582
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

.method public static terminateCurrentDownload()V
    .locals 1

    .line 887
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->stop()V

    :cond_0
    return-void
.end method

.method private static turnWiFiOffIfNeeded()V
    .locals 2

    .line 873
    sget-boolean v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_WiFiTurnedOnAtStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 874
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->toggleWiFi(ZLjava/lang/String;)Z

    .line 876
    :cond_0
    sput-boolean v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_WiFiTurnedOnAtStart:Z

    return-void
.end method

.method private static turnWiFiOnIfNeeded()V
    .locals 2

    .line 881
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->turnWiFiDuringUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 882
    sget-object v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->toggleWiFi(ZLjava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_WiFiTurnedOnAtStart:Z

    :cond_0
    return-void
.end method

.method private static updateStatistics(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 779
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    iput-object p0, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerTrack:Lmobi/beyondpod/rsscore/Track;

    .line 782
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    iput-object p0, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 783
    sget-object p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->_DownloadStats:Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->m_Downloader:Lmobi/beyondpod/downloadengine/EnclosureDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->add(Lmobi/beyondpod/downloadengine/DownloadStatistics;)V

    :cond_0
    return-void
.end method
