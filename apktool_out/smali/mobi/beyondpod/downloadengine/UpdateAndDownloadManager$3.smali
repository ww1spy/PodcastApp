.class final Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;
.super Ljava/lang/Object;
.source "UpdateAndDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanupUnusedEpisodes()V
    .locals 4

    .line 402
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->automaticallyCleanPlayedEpisodes()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getAllDeletablePlayedEpisodes()Ljava/util/List;

    move-result-object v0

    .line 406
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Automatically deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " unused episodes..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    .line 409
    invoke-static {v1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackSync(Lmobi/beyondpod/rsscore/Track;)V

    .line 410
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I
    .locals 1

    .line 428
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result p1

    .line 429
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifMultipleDownloadRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x5

    return p1

    :cond_1
    return p1

    :cond_2
    return p1
.end method

.method private isDownloadAllowed(Lmobi/beyondpod/downloadengine/ProcessStatistics;ZZ)Z
    .locals 3

    .line 628
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$900()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 630
    iput-boolean v1, p1, Lmobi/beyondpod/downloadengine/ProcessStatistics;->podcastDownloadForced:Z

    .line 631
    sget-object p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string p2, "Force Download is in effect! Ignoring \'Is WiFi On\' and \'Is Plugged-In\' checks...!"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->downloadEnclosuresOnWiFiOnly()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 638
    iput-boolean v1, p1, Lmobi/beyondpod/downloadengine/ProcessStatistics;->podcastDownloadSkippedWiFiNotDetected:Z

    .line 639
    sget-object p2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string p3, "Processing skipped! Current settings allow podcast downloads over WiFi only!"

    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance p2, Ljava/lang/Exception;

    .line 642
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$1000()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lmobi/beyondpod/downloadengine/ProcessStatistics;->lastException:Ljava/lang/Exception;

    return v2

    .line 646
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->downloadEnclosuresWhenChargingOnly()Z

    move-result p3

    if-eqz p3, :cond_2

    if-nez p2, :cond_2

    .line 648
    iput-boolean v1, p1, Lmobi/beyondpod/downloadengine/ProcessStatistics;->podcastDownloadSkippedDeviceIsNotPluggedIn:Z

    .line 649
    sget-object p2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string p3, "Processing skipped! Current settings allow podcast downloads only when the device is plugged in!"

    .line 650
    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    new-instance p2, Ljava/lang/Exception;

    .line 653
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$1100()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lmobi/beyondpod/downloadengine/ProcessStatistics;->lastException:Ljava/lang/Exception;

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private isEnqueued(Ljava/util/ArrayList;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;",
            "Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;",
            ")Z"
        }
    .end annotation

    .line 416
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 418
    iget-object v1, v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    iget-object v1, p2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private processFeed(Lmobi/beyondpod/rsscore/Feed;Ljava/util/ArrayList;Lmobi/beyondpod/downloadengine/ProcessStatistics;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/Feed;",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;",
            "Lmobi/beyondpod/downloadengine/ProcessStatistics;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 495
    :try_start_0
    new-instance v3, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    invoke-direct {v3, v0}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;-><init>(I)V

    .line 496
    invoke-static {p1, v3}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->loadFromCache(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 498
    iget-object v4, v3, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v4, :cond_0

    iget v4, v3, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    invoke-static {v4}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->isRssFeedType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    iget-object v4, v3, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-object v2, v4

    .line 501
    :cond_0
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->hasParseFailed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    iput-boolean v1, p1, Lmobi/beyondpod/rsscore/Feed;->updateFailed:Z

    .line 504
    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    iput-object v3, p3, Lmobi/beyondpod/downloadengine/ProcessStatistics;->lastException:Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-nez v2, :cond_2

    return-void

    .line 520
    :cond_2
    :try_start_1
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->historySize()I

    move-result v3

    .line 522
    invoke-virtual {v2, v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncAllDownloadedWithRead(Z)V

    .line 523
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncAllDownloadedWithLocalTrack()V

    .line 524
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncShowNotesWithLocalTrack()V

    .line 526
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->historySize()I

    move-result v4

    sub-int/2addr v4, v3

    if-lez v4, :cond_3

    .line 528
    sget-object v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Patched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " download history entries."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_3
    invoke-direct {p0, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq v3, v5, :cond_5

    .line 531
    invoke-direct {p0, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v3

    if-ne v3, v4, :cond_4

    goto :goto_0

    .line 534
    :cond_4
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->GetDownloadableEnclosures(I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    .line 532
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v6

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->size()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->GetCatchUpDownloadableEnclosures(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 536
    :goto_1
    invoke-direct {p0, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v6

    if-eq v6, v1, :cond_6

    .line 537
    invoke-direct {p0, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v6

    if-ne v6, v5, :cond_7

    .line 539
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p1, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    .line 540
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 545
    :cond_7
    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 547
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 550
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 553
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lmobi/beyondpod/rsscore/Track;->setRssItemID(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->setAsPlayedOnMarkRead()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v7, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v6, :cond_8

    iget-object v6, v7, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-boolean v6, v6, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->IsGoogleReadLocked:Z

    if-nez v6, :cond_8

    iget-object v6, v7, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 557
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isGoogleRead()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 558
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->markPlayed()V

    goto :goto_2

    .line 563
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 565
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 567
    iget-object v6, p3, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    iget-object v7, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v6}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 571
    invoke-direct {p0, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v6

    if-eq v6, v1, :cond_d

    .line 572
    invoke-direct {p0, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v6, v5, :cond_b

    goto :goto_5

    .line 593
    :cond_b
    :try_start_2
    invoke-direct {p0, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v6

    if-eq v6, v4, :cond_c

    .line 594
    invoke-static {p1, v1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->deleteOldTracksForFeed(Lmobi/beyondpod/rsscore/Feed;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v6

    .line 598
    :try_start_3
    sget-object v7, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to delete old tracks for feed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 601
    :cond_c
    :goto_4
    invoke-static {p1, v3, v1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->createStreamableTrackFromEnclosure(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)Lmobi/beyondpod/rsscore/Track;

    .line 602
    iget-object v6, p3, Lmobi/beyondpod/downloadengine/ProcessStatistics;->streamableEnclosures:Ljava/util/List;

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$408()I

    goto :goto_3

    .line 574
    :cond_d
    :goto_5
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$800()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 576
    iget-object v6, p3, Lmobi/beyondpod/downloadengine/ProcessStatistics;->ignoredEnclosures:Ljava/util/List;

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 578
    :cond_e
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->setAsDownloadedOnMarkRead()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v6, :cond_f

    iget-object v6, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 579
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->inGoogleReadingList()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isGoogleRead()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 581
    invoke-static {v3, v0}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->addEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    .line 582
    iget-object v6, p3, Lmobi/beyondpod/downloadengine/ProcessStatistics;->ignoredEnclosures:Ljava/util/List;

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 586
    :cond_f
    new-instance v6, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    invoke-direct {v6, p1, v3}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 608
    :cond_10
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$300()Z

    move-result p2

    if-nez p2, :cond_12

    .line 610
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 612
    :try_start_4
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    .line 613
    invoke-interface {v2, v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;->processingCanceled(I)V

    goto :goto_6

    .line 614
    :cond_11
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 616
    :try_start_5
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$000()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 614
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception p2

    .line 621
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to process feed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 622
    iput-object p2, p3, Lmobi/beyondpod/downloadengine/ProcessStatistics;->lastException:Ljava/lang/Exception;

    :cond_12
    :goto_7
    return-void
.end method

.method private processRemoteAndPartiallyDownloadedEpisodes(Ljava/util/ArrayList;ZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 348
    new-instance v2, Lmobi/beyondpod/downloadengine/ProcessStatistics;

    invoke-direct {v2}, Lmobi/beyondpod/downloadengine/ProcessStatistics;-><init>()V

    const/4 v3, 0x1

    .line 349
    iput-boolean v3, v2, Lmobi/beyondpod/downloadengine/ProcessStatistics;->remoteEpisodes:Z

    .line 350
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$500()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->add(Lmobi/beyondpod/downloadengine/ProcessStatistics;)V

    .line 353
    new-instance v4, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3$1;

    invoke-direct {v4, v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3$1;-><init>(Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;)V

    invoke-static {v4}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->filterTracks(Lmobi/beyondpod/rsscore/TrackFilter;)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v4

    .line 363
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    move/from16 v5, p2

    move/from16 v6, p3

    .line 367
    invoke-direct {v0, v2, v5, v6}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->isDownloadAllowed(Lmobi/beyondpod/downloadengine/ProcessStatistics;ZZ)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 370
    :cond_1
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/rsscore/Track;

    .line 372
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v6

    .line 373
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    new-instance v8, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v13

    .line 375
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v15

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v17

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v18

    move-object v9, v8

    invoke-direct/range {v9 .. v18}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/lang/String;)V

    .line 377
    iget-object v5, v2, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    iget-object v7, v8, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$800()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {v0, v1, v8}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->isEnqueued(Ljava/util/ArrayList;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 380
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 381
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_2

    goto :goto_1

    .line 388
    :cond_2
    iget v5, v6, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    if-nez v5, :cond_3

    const/4 v5, 0x0

    .line 391
    iput v5, v6, Lmobi/beyondpod/rsscore/Feed;->numDownloadedEnclosures:I

    .line 392
    iput-boolean v5, v6, Lmobi/beyondpod/rsscore/Feed;->downloadFailed:Z

    .line 395
    :cond_3
    iget v5, v6, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    add-int/2addr v5, v3

    iput v5, v6, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    .line 396
    new-instance v5, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    invoke-direct {v5, v6, v8}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_4
    :goto_1
    iget-object v5, v2, Lmobi/beyondpod/downloadengine/ProcessStatistics;->ignoredEnclosures:Ljava/util/List;

    iget-object v6, v8, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method private processUpdatedFeeds(Ljava/util/ArrayList;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;ZZ)V"
        }
    .end annotation

    .line 449
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$700()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 451
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$700()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmobi/beyondpod/rsscore/Feed;

    .line 452
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    array-length v0, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, v1, v3

    .line 456
    iput v2, v4, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    .line 457
    iput v2, v4, Lmobi/beyondpod/rsscore/Feed;->numDownloadedEnclosures:I

    .line 458
    iput-boolean v2, v4, Lmobi/beyondpod/rsscore/Feed;->downloadFailed:Z

    .line 461
    invoke-direct {p0, v4}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 462
    invoke-direct {p0, v4}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 463
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    new-instance v5, Lmobi/beyondpod/downloadengine/ProcessStatistics;

    invoke-direct {v5}, Lmobi/beyondpod/downloadengine/ProcessStatistics;-><init>()V

    .line 467
    iput-object v4, v5, Lmobi/beyondpod/downloadengine/ProcessStatistics;->processedFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 468
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$500()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->add(Lmobi/beyondpod/downloadengine/ProcessStatistics;)V

    .line 470
    invoke-direct {p0, v4}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 471
    invoke-direct {p0, v4}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->getIfRestrictedPodcastDownloadAction(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 473
    :cond_1
    invoke-direct {p0, v5, p2, p3}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->isDownloadAllowed(Lmobi/beyondpod/downloadengine/ProcessStatistics;ZZ)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 478
    :cond_2
    invoke-direct {p0, v4, p1, v5}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->processFeed(Lmobi/beyondpod/rsscore/Feed;Ljava/util/ArrayList;Lmobi/beyondpod/downloadengine/ProcessStatistics;)V

    .line 480
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$300()Z

    move-result v4

    if-nez v4, :cond_3

    .line 482
    sget-object p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string p2, "Processing cancelled!"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 452
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0xa

    .line 305
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x1

    .line 307
    invoke-static {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$302(Z)Z

    const/4 v1, 0x0

    .line 308
    invoke-static {v1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$402(I)I

    .line 309
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$500()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->processTime:Ljava/util/Date;

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 315
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 317
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    .line 318
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$700()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;->processingStarted(I)V

    goto :goto_0

    .line 319
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    sget-object v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "Processing started..."

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDevicePlugged()Z

    move-result v3

    .line 324
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionWiFi()Z

    move-result v4

    .line 326
    invoke-direct {p0, v2, v3, v4}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->processUpdatedFeeds(Ljava/util/ArrayList;ZZ)V

    .line 327
    invoke-direct {p0, v2, v3, v4}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->processRemoteAndPartiallyDownloadedEpisodes(Ljava/util/ArrayList;ZZ)V

    .line 329
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->cleanupUnusedEpisodes()V

    .line 331
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 333
    :try_start_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$600()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    .line 334
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {v5, v6}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;->processingCompleted(I)V

    goto :goto_1

    .line 335
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 339
    sget-object v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "Processing Completed!"

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {v1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$302(Z)Z

    .line 342
    invoke-static {v2, v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->downloadEnclosures(Ljava/util/List;Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 335
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 319
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
