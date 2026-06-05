.class public Lmobi/beyondpod/downloadengine/RssFeedCatcher;
.super Ljava/lang/Object;
.source "RssFeedCatcher.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RssFeedCatcher"


# instance fields
.field _FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

.field private _ImageDownloadListener:Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;

.field private _LastParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

.field _LastProgressNotificationTime:J

.field private _WiFiTurnedOnAtStart:Z

.field private m_Feed:Lmobi/beyondpod/rsscore/Feed;

.field private m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

.field private m_FeedImageDownloader:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

.field private m_ForceUpdate:Z

.field private m_Statistics:Lmobi/beyondpod/downloadengine/DownloadStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_ForceUpdate:Z

    .line 53
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_WiFiTurnedOnAtStart:Z

    const-wide/16 v0, 0x0

    .line 260
    iput-wide v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastProgressNotificationTime:J

    .line 335
    new-instance v0, Lmobi/beyondpod/downloadengine/RssFeedCatcher$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher$1;-><init>(Lmobi/beyondpod/downloadengine/RssFeedCatcher;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_ImageDownloadListener:Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/downloadengine/RssFeedCatcher;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->publishUpdateCompletedEvent()V

    return-void
.end method

.method private autodetectItemFingerprintTypeIfNeeded(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V
    .locals 5

    .line 214
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getItemFingerprintAlgorithm()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 219
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detecting item fingerprint for feed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->AutodetectFingerprintType()I

    move-result v0

    .line 221
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2, v0}, Lmobi/beyondpod/rsscore/Feed;->setItemFingerprintAlgorithm(I)V

    .line 222
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->updateFingerprintAlgorithmTo(I)V

    .line 223
    sget-object v2, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fingerprint type was set to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const-string v0, "GUID"

    goto :goto_0

    :cond_1
    const-string v0, "TLP"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getForceFeedItemSort()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v1, :cond_2

    .line 229
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->AutodetectSortOrder()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 232
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    const-string v1, "Detected reverse item sort! Setting to \'By Date Desc\'..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    .line 238
    :cond_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->peekEnclosureMediaTypes()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 241
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1, v2}, Lmobi/beyondpod/rsscore/Feed;->setPodcastDownloadAction(I)V

    :cond_3
    return-void
.end method

.method private captureStatistics()V
    .locals 1

    .line 317
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Statistics:Lmobi/beyondpod/downloadengine/DownloadStatistics;

    :cond_0
    return-void
.end method

.method public static createFeedSnapshot(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeed;Z)V
    .locals 8

    const/4 v0, 0x0

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 457
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    .line 458
    invoke-static {v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->makeValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_$$0000000000000$$.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 457
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    .line 459
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    .line 461
    invoke-static {v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->makeValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_$$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "$$.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 459
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 464
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 467
    :cond_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".xml"

    const-string v4, ".txt"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "FEED: %s, [itemID generation algorithm: %s (%s)]\r\n"

    const/4 v3, 0x3

    .line 470
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    aput-object v5, v3, v4

    iget v4, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->ItemIDGenerationAlgorithm:I

    .line 471
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget v6, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->ItemIDGenerationAlgorithm:I

    if-ne v6, v5, :cond_2

    const-string v5, "TLPID"

    goto :goto_1

    :cond_2
    const-string v5, "GUIDID"

    :goto_1
    aput-object v5, v3, v4

    .line 470
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 477
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->createItemSnapshot(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 480
    :cond_3
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 481
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 483
    sget-object p1, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cache snapshot for feed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was saved to:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 483
    invoke-static {p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 497
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 489
    :goto_3
    :try_start_3
    sget-object p1, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    const-string p2, "Unable to save rss snapshot file"

    invoke-static {p1, p2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    .line 497
    :try_start_4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 501
    sget-object p1, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    const-string p2, "Unable to save rss snapshot file"

    invoke-static {p1, p2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_5

    .line 497
    :try_start_5
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 501
    sget-object p2, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    const-string v0, "Unable to save rss snapshot file"

    invoke-static {p2, v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    :cond_5
    :goto_6
    throw p0
.end method

.method private downloadFeedImage()V
    .locals 2

    .line 325
    :try_start_0
    new-instance v0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedImageDownloader:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    .line 326
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedImageDownloader:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_ImageDownloadListener:Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->setFeedUpdateListener(Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;)V

    .line 327
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedImageDownloader:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->downloadImage(Lmobi/beyondpod/rsscore/Feed;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->publishUpdateCompletedEvent()V

    :goto_0
    return-void
.end method

.method private getFeedUrl(Lmobi/beyondpod/rsscore/Feed;)Landroid/net/Uri;
    .locals 1

    .line 143
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->getFeedUri(Lmobi/beyondpod/rsscore/Feed;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 439
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0

    .line 442
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->lastModifiedDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->lastModifiedDate()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private postProcessFeed()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 350
    :try_start_0
    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;-><init>(I)V

    iput-object v2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    .line 351
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iput-boolean v1, v2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->LoadTempFeed:Z

    .line 352
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    iget-object v3, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->loadFromCache(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 353
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget v2, v2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    invoke-static {v2}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->isRssFeedType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    goto :goto_0

    .line 355
    :cond_0
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget v2, v2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 356
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_a

    .line 366
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v3}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->copyTempToPrimaryForFeed(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v3

    .line 368
    invoke-direct {p0, v2}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->autodetectItemFingerprintTypeIfNeeded(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    .line 370
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#*SAVE*#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 371
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v4, v2, v5}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->createFeedSnapshot(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeed;Z)V

    .line 373
    :cond_2
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->getFeedImageLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 374
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->getFeedImageLink()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmobi/beyondpod/rsscore/Feed;->setFeedImageUrl(Ljava/lang/String;)V

    .line 377
    :cond_3
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncOwnerFeedReadStatus()V

    .line 379
    invoke-static {v2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->purgeOldRecordsForFeed(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    .line 383
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->getLatestItemPubDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_4

    .line 386
    iget-object v4, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->PubDate:Ljava/util/Date;

    .line 388
    :cond_4
    iget-object v6, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v0, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v4, :cond_6

    .line 392
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 394
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setHasNewContent(Z)V

    .line 395
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v4}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 400
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getLastItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 402
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v4, v1}, Lmobi/beyondpod/rsscore/Feed;->setHasNewContent(Z)V

    .line 403
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v4, v0}, Lmobi/beyondpod/rsscore/Feed;->setLastItemID(Ljava/lang/String;)V

    goto :goto_1

    .line 408
    :cond_7
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setHasNewContent(Z)V

    .line 409
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V

    :cond_8
    :goto_1
    if-eqz v3, :cond_9

    .line 413
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setHasNewContent(Z)V

    .line 415
    :cond_9
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    iget-object v1, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->updateNameIfDefault(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setLastServerModifiedDate(Ljava/util/Date;)V

    goto :goto_3

    .line 423
    :cond_a
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->hasCachedFileFor(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 424
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->copyTempToPrimaryForFeed(Lmobi/beyondpod/rsscore/Feed;)Z

    goto :goto_2

    .line 426
    :cond_b
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteTempFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 430
    :goto_2
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 432
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setHasNewContent(Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method private publishUpdateCompletedEvent()V
    .locals 2

    .line 179
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->turnWiFiOffIfNeeded()V

    .line 180
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {v0, v1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;->onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V

    :cond_0
    return-void
.end method

.method private turnWiFiOffIfNeeded()V
    .locals 2

    .line 303
    iget-boolean v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_WiFiTurnedOnAtStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->toggleWiFi(ZLjava/lang/String;)Z

    .line 306
    :cond_0
    iput-boolean v1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_WiFiTurnedOnAtStart:Z

    return-void
.end method

.method private turnWiFiOnIfNeeded()V
    .locals 2

    .line 311
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->turnWiFiDuringUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 312
    sget-object v1, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->toggleWiFi(ZLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_WiFiTurnedOnAtStart:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isUpdating()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastFeedParseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 447
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    return-object v0
.end method

.method public onDownloadCompleted(Lmobi/beyondpod/downloadengine/DownloadAgent;Z)V
    .locals 1

    .line 187
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->captureStatistics()V

    .line 189
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->hasCachedFileFor(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p2, :cond_1

    .line 192
    iget-boolean p2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_ForceUpdate:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 193
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getItemFingerprintAlgorithm()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->touchFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 200
    iget-object p2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteTempFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_1

    .line 195
    :cond_1
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->postProcessFeed()V

    .line 203
    :goto_1
    iget-object p2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lmobi/beyondpod/rsscore/Feed;->updateFailed:Z

    .line 206
    iget-object p2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/FeedImageCache;->hasImageToDownload(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->hasFeedImageChanged()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 209
    :cond_3
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->publishUpdateCompletedEvent()V

    goto :goto_3

    .line 207
    :cond_4
    :goto_2
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->downloadFeedImage()V

    :goto_3
    return-void
.end method

.method public onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->captureStatistics()V

    .line 251
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lmobi/beyondpod/rsscore/Feed;->updateFailed:Z

    .line 252
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteTempFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 254
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->turnWiFiOffIfNeeded()V

    .line 256
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {p1, v0, p2}, Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;->onFeedUpdateError(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onDownloadProgress(Lmobi/beyondpod/downloadengine/DownloadAgent;JJ)V
    .locals 2

    .line 265
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1, p4, p5}, Lmobi/beyondpod/rsscore/Feed;->setUpdateSize(J)V

    .line 266
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1, p2, p3}, Lmobi/beyondpod/rsscore/Feed;->setUpdatedPortion(J)V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 271
    iget-wide p3, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastProgressNotificationTime:J

    sub-long v0, p1, p3

    const-wide/16 p3, 0x7d0

    cmp-long p5, v0, p3

    if-lez p5, :cond_0

    .line 273
    iput-wide p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_LastProgressNotificationTime:J

    .line 275
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    iget-object p2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {p1, p2}, Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;->onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V

    :cond_0
    return-void
.end method

.method public onDownloadStarted(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 1

    .line 283
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmobi/beyondpod/rsscore/Feed;->updateFailed:Z

    .line 285
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {p1, v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;->onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V

    :cond_0
    return-void
.end method

.method public onDownloadTerminated(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 1

    .line 292
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->captureStatistics()V

    .line 293
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteTempFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 295
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->turnWiFiOffIfNeeded()V

    .line 297
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {p1, v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;->onFeedUpdateTerminated(Lmobi/beyondpod/rsscore/Feed;)V

    :cond_0
    return-void
.end method

.method public setFeedUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    return-void
.end method

.method public statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;
    .locals 1

    .line 174
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Statistics:Lmobi/beyondpod/downloadengine/DownloadStatistics;

    return-object v0
.end method

.method public stop()V
    .locals 1

    .line 154
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->stop()V

    .line 157
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedImageDownloader:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedImageDownloader:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->stop()V

    :cond_1
    return-void
.end method

.method public updateFeed(Lmobi/beyondpod/rsscore/Feed;Z)V
    .locals 7

    .line 81
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Statistics:Lmobi/beyondpod/downloadengine/DownloadStatistics;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    :try_start_0
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->hasUri()Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trying to update feed with invalid URL!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->turnWiFiOnIfNeeded()V

    .line 101
    new-instance v3, Lmobi/beyondpod/downloadengine/DownloadAgent;

    iget-object v4, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0, v4}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->getFeedUrl(Lmobi/beyondpod/rsscore/Feed;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 102
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v5

    .line 101
    invoke-static {v5}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedTempPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 102
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->credentials()Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lmobi/beyondpod/downloadengine/DownloadAgent;-><init>(Landroid/net/Uri;Ljava/io/File;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;)V

    iput-object v3, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    .line 103
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v3, p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setDownloadListener(Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;)V

    .line 105
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v3, v2}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setAllowResume(Z)V

    .line 107
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->GReaderCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setRequestCookie(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setMustRequestReaderToken(Z)V

    .line 113
    :cond_2
    iput-boolean p2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_ForceUpdate:Z

    .line 115
    iget-boolean p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_ForceUpdate:Z

    if-nez p1, :cond_3

    .line 117
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getCachedFileSize(Landroid/net/Uri;)J

    move-result-wide p1

    const-wide/16 v3, -0x1

    cmp-long v5, p1, v3

    if-eqz v5, :cond_3

    .line 122
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setIgnoreIfSize(Ljava/lang/Long;)V

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    iget-object p2, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getLastServerModifiedDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setIgnoreIfNotModifiedSinceDate(Ljava/util/Date;)V

    .line 127
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setUpdateSize(J)V

    .line 128
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1, v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setUpdatedPortion(J)V

    .line 129
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_FeedDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->startDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    sget-object p2, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->TAG:Ljava/lang/String;

    const-string v3, "Unable to start the download of url: %s ! reason: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 135
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 135
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {p2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0, p1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
