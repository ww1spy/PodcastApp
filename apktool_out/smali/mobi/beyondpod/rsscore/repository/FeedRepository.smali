.class public final Lmobi/beyondpod/rsscore/repository/FeedRepository;
.super Ljava/lang/Object;
.source "FeedRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;,
        Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;
    }
.end annotation


# static fields
.field public static final FEED_SEARCH_RESULT_ROOT_ID:Ljava/util/UUID;

.field public static RepositoryLoadKind:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FeedRepository"

.field private static final _GoUpPlaceholder:Lmobi/beyondpod/rsscore/Feed;

.field static _LastSavedTime:J = 0x0L

.field public static _RepEndLoadTime:J = 0x0L

.field public static _RepEndSaveTime:J = 0x0L

.field public static _RepStartLoadTime:J = 0x0L

.field public static _RepStartSaveTime:J = 0x0L

.field public static _RepXMlReadEndTime:J = 0x0L

.field private static volatile _RepositoryState:I = -0x1

.field private static final _RootFeed:Lmobi/beyondpod/rsscore/Feed;

.field private static _RootPatchKey:Ljava/io/File;

.field private static _RootPath:Ljava/lang/String;

.field static final _TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->FEED_SEARCH_RESULT_ROOT_ID:Ljava/util/UUID;

    .line 69
    new-instance v0, Lmobi/beyondpod/rsscore/Feed;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v0, v2, v1}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V

    sput-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 70
    new-instance v0, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V

    sput-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_GoUpPlaceholder:Lmobi/beyondpod/rsscore/Feed;

    .line 72
    new-instance v0, Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackDictionary;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_LastSavedTime:J

    .line 97
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_GoUpPlaceholder:Lmobi/beyondpod/rsscore/Feed;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 496
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 498
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lmobi/beyondpod/rsscore/TrackDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static allResumableDownloads()Lmobi/beyondpod/rsscore/TrackList;
    .locals 1

    .line 1181
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$3;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$3;-><init>()V

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->filterTracks(Lmobi/beyondpod/rsscore/TrackFilter;)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    return-object v0
.end method

.method public static autoSaveRepository()V
    .locals 0

    .line 196
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->autoSaveRepository()V

    return-void
.end method

.method public static canRepositoryBeLoaded()Z
    .locals 2

    .line 169
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static clearTrackDictionary()V
    .locals 2

    .line 955
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 957
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackDictionary;->clear()V

    .line 958
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearTrackImageCaches()V
    .locals 4

    .line 1099
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 1101
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    const/4 v3, 0x0

    .line 1103
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    return-void

    :catchall_0
    move-exception v1

    .line 1105
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static containsTrackKey(Ljava/lang/String;)Z
    .locals 2

    .line 488
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 490
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v1, p0}, Lmobi/beyondpod/rsscore/TrackDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static convertToAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "~"

    .line 1091
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static convertToRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1083
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static deleteAllRepositoryFiles()V
    .locals 0

    .line 963
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->deleteRepositoryFiles()V

    return-void
.end method

.method public static deleteFeedAndRelatedFoldersAsync(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 519
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/rsscore/repository/FeedRepository$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$1;-><init>(Lmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static deleteFeedAndRelatedFoldersSync(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 4

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->removeFromTrackDictionary(Lmobi/beyondpod/rsscore/TrackList;)V

    .line 536
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 540
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 541
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->appendTo(Ljava/util/List;)V

    .line 543
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 545
    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackSync(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    .line 554
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "FeedRepository"

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting feed download folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "FeedRepository"

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete feed download folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_3
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 565
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->deleteFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 566
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-ne v0, p0, :cond_4

    const/4 v0, 0x0

    .line 567
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setActiveFeedFilter(Lmobi/beyondpod/rsscore/Feed;)V

    .line 568
    :cond_4
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onFeedDeleted(Lmobi/beyondpod/rsscore/Feed;)V

    .line 569
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 572
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 573
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->deleteImageCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 575
    :cond_5
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 576
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->backupRepositoriesAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "FeedRepository"

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete feed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static deleteScheduledTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 0

    .line 968
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->deleteScheduledTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    return-void
.end method

.method public static deleteTrackAsync(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 707
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/rsscore/repository/FeedRepository$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$2;-><init>(Lmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static deleteTrackSync(Lmobi/beyondpod/rsscore/Track;)V
    .locals 5

    const-string v0, "FeedRepository"

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :try_start_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onTrackBeforeDelete(Lmobi/beyondpod/rsscore/Track;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "episode://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheBP;->deleteFileForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FeedRepository"

    const-string v1, "Deleted track episode image cache"

    .line 726
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->delete()V

    .line 730
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :try_start_1
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    :try_start_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->remove(Lmobi/beyondpod/rsscore/Track;)Z

    .line 736
    invoke-static {p0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalEpisodeDeletedChange(Lmobi/beyondpod/rsscore/Track;)V

    .line 737
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onTrackDeleted(Lmobi/beyondpod/rsscore/Track;)V

    .line 739
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->deleteTrack(Lmobi/beyondpod/rsscore/Track;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 733
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FeedRepository"

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete track! reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "!\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->fromException(Ljava/lang/Exception;)Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    :goto_0
    return-void
.end method

.method public static filterTracks(Lmobi/beyondpod/rsscore/TrackFilter;)Lmobi/beyondpod/rsscore/TrackList;
    .locals 5

    .line 1165
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 1167
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v1

    .line 1169
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 1171
    invoke-interface {p0, v3}, Lmobi/beyondpod/rsscore/TrackFilter;->apply(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1172
    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1174
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static findOrCreateLocalTrack(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmobi/beyondpod/rsscore/Track;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 590
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->ensureFeedHasDownloadPath()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getForceUniqueTrackNames()Z

    move-result v1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-static {p1, v1, v2, p3, p4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->createFileNameFromUrl(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPathOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-nez v1, :cond_4

    .line 602
    new-instance v1, Lmobi/beyondpod/rsscore/Track;

    invoke-direct {v1, v0, p0}, Lmobi/beyondpod/rsscore/Track;-><init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;)V

    .line 604
    invoke-static {p5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    invoke-virtual {v1, p5}, Lmobi/beyondpod/rsscore/Track;->setName(Ljava/lang/String;)V

    .line 607
    :cond_1
    invoke-virtual {v1, p1}, Lmobi/beyondpod/rsscore/Track;->setUrl(Ljava/lang/String;)V

    const-string p1, "rss"

    .line 608
    invoke-virtual {v1, p1}, Lmobi/beyondpod/rsscore/Track;->setProtocol(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    goto :goto_0

    .line 609
    :cond_2
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    :goto_0
    invoke-virtual {v1, p2}, Lmobi/beyondpod/rsscore/Track;->setLastModifiedDate(Ljava/util/Date;)V

    .line 610
    invoke-virtual {v1, p3}, Lmobi/beyondpod/rsscore/Track;->setRssItemID(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1, p6}, Lmobi/beyondpod/rsscore/Track;->setTrackDescription(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v1, p5}, Lmobi/beyondpod/rsscore/Track;->setTrackPostTitle(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v1, p8}, Lmobi/beyondpod/rsscore/Track;->setTrackPostUrl(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v1, p7}, Lmobi/beyondpod/rsscore/Track;->setShowNotes(Ljava/lang/String;)V

    .line 616
    invoke-static {p4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 617
    invoke-virtual {v1, p4}, Lmobi/beyondpod/rsscore/Track;->setContentMimeType(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    .line 619
    invoke-static {p0, v1, p1}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->addChildTrack(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/Track;Z)V

    .line 621
    invoke-static {v1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->addEpisodeAddedHistoryEntry(Lmobi/beyondpod/rsscore/Track;)V

    if-eqz p9, :cond_4

    .line 624
    invoke-static {v1}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalStreamableEpisodeAddedChange(Lmobi/beyondpod/rsscore/Track;)V

    :cond_4
    return-object v1
.end method

.method public static getAllDeletablePlayedEpisodes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v1

    .line 328
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 330
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->canDeleteTracks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAllEpisodesSorted(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 504
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 506
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v1

    .line 508
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    .line 509
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    new-instance v1, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 509
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getEpisodesByContentTypeAndCategory(ILmobi/beyondpod/rsscore/categories/FeedCategory;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmobi/beyondpod/rsscore/categories/FeedCategory;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 290
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    const/4 v5, -0x2

    if-eq p0, v5, :cond_2

    if-eq v4, p0, :cond_2

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    invoke-static {v4, p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->isInCategory(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 354
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByIdInternal(Lmobi/beyondpod/rsscore/Feed;Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    return-object p0
.end method

.method private static getFeedByIdInternal(Lmobi/beyondpod/rsscore/Feed;Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;
    .locals 2

    .line 359
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Feed;

    .line 364
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 369
    :cond_2
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 371
    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByIdInternal(Lmobi/beyondpod/rsscore/Feed;Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;
    .locals 3

    .line 382
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 384
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFeedCount()I
    .locals 1

    .line 134
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;
    .locals 4

    .line 340
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 342
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 344
    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq p0, v3, :cond_1

    .line 345
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->isOfCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    :cond_1
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getGoUpPlaceholder()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 129
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_GoUpPlaceholder:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public static getLocalTrack(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;
    .locals 5

    .line 429
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 432
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 434
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 436
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    monitor-exit v0

    return-object v3

    .line 439
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getLockedEpisodes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v1

    .line 312
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 314
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getOldTracksForFeed(Lmobi/beyondpod/rsscore/Feed;ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Lmobi/beyondpod/rsscore/TrackList;
    .locals 9

    .line 637
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 639
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->allowsEnclosures()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->size()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->canDeleteTracks()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 643
    :cond_0
    new-instance v1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 644
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object p0

    invoke-virtual {p0, v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->appendTo(Ljava/util/List;)V

    .line 646
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 647
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 650
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 651
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 655
    :cond_2
    new-instance p0, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {p0}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>()V

    const/4 v2, 0x2

    .line 657
    iput v2, p0, Lmobi/beyondpod/rsscore/TrackSorter;->SortOrder:I

    .line 658
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 660
    new-instance p0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 663
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 665
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v4}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->subtractFrom(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    .line 666
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-gez v4, :cond_3

    .line 668
    invoke-virtual {p0, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 672
    :cond_4
    invoke-virtual {v1, p0}, Lmobi/beyondpod/rsscore/TrackList;->removeAll(Ljava/util/Collection;)Z

    .line 675
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 683
    :cond_5
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p0

    if-le p0, p1, :cond_6

    .line 685
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p0

    sub-int/2addr p0, p1

    if-lez p0, :cond_6

    const/4 p1, 0x0

    .line 687
    invoke-virtual {v1, p1, p0}, Lmobi/beyondpod/rsscore/TrackList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    .line 692
    :cond_6
    new-instance p0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 693
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    .line 695
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->temporaryLocked()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 696
    invoke-virtual {p0, p2}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 699
    :cond_8
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 700
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/TrackList;->removeAll(Ljava/util/Collection;)Z

    :cond_9
    return-object v0

    :cond_a
    :goto_3
    return-object v0
.end method

.method public static getOldTracksForFeed(Lmobi/beyondpod/rsscore/Feed;Z)Lmobi/beyondpod/rsscore/TrackList;
    .locals 2

    .line 632
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getOldTracksForFeed(Lmobi/beyondpod/rsscore/Feed;ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p0

    return-object p0
.end method

.method public static getRepositoryLoadStatistics()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 873
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Loaded %d feeds and %d podcasts\n%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 874
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 873
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRepositoryLoadTimeInSec()J
    .locals 6

    .line 879
    sget-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepEndLoadTime:J

    sget-wide v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepStartLoadTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    return-wide v4
.end method

.method public static getRepositorySaveTimeInSec()J
    .locals 6

    .line 889
    sget-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepEndSaveTime:J

    sget-wide v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepStartSaveTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    return-wide v4
.end method

.method public static getRootFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 124
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public static getRootPath()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;
    .locals 5

    .line 448
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 451
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 453
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 455
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 460
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getTrackByPathOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;
    .locals 5

    .line 397
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 400
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 402
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 404
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 409
    :cond_2
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    move-object v1, v3

    .line 414
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getTrackByPathQuick(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;
    .locals 1

    .line 421
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 424
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/TrackDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/rsscore/Track;

    return-object p0
.end method

.method public static getTrackByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;
    .locals 5

    .line 469
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 472
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 474
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 476
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 481
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getTrackCount()I
    .locals 2

    .line 139
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 141
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackDictionary;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getUpdatableFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;
    .locals 4

    .line 1137
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 1138
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 1140
    invoke-static {v2, p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->isInCategory(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1143
    :cond_0
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1146
    :cond_1
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getVirtualFeedByDownloadPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 1112
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getVirtualFeedByDownloadPathInternal(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    return-object p0
.end method

.method private static getVirtualFeedByDownloadPathInternal(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;
    .locals 2

    .line 1117
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Feed;

    .line 1119
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 1124
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1126
    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getVirtualFeedByDownloadPathInternal(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXMLReadTimeInSec()J
    .locals 6

    .line 884
    sget-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepXMlReadEndTime:J

    sget-wide v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepStartLoadTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    return-wide v4
.end method

.method public static initializeAndLoadRepository()Z
    .locals 4

    .line 147
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->canRepositoryBeLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return v1

    .line 157
    :cond_0
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->setRootPath(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->loadRepository()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "FeedRepository"

    const-string v3, "failed to load the feed Repository. reason: "

    .line 162
    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static isDownloadFolderInUse(Ljava/lang/String;)Z
    .locals 2

    .line 1154
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 1156
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isEmpty()Z
    .locals 1

    .line 119
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRepositoryAvailable()Z
    .locals 3

    .line 90
    sget v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    sget v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    if-eq v0, v1, :cond_1

    sget v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static longTermRepositoryBackupDate()Ljava/util/Date;
    .locals 1

    .line 191
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->longTermRepositoryBackupDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static notifyCategoryEvent(I)V
    .locals 2

    .line 894
    sget v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 897
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 898
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    return-void
.end method

.method public static notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 762
    sget v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 765
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 767
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->autoSaveRepository()V

    return-void
.end method

.method public static notifyTrackChanged(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 752
    sget v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 755
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 757
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->autoSaveRepository()V

    return-void
.end method

.method private static onFeedDeleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 772
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void
.end method

.method static onRepositoryLoadComplete()V
    .locals 3

    .line 799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_LastSavedTime:J

    sput-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepEndLoadTime:J

    const-string v0, "FeedRepository"

    const-string v1, "Repository load completed!"

    .line 800
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 801
    sput v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    .line 803
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-direct {v2, v0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 806
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackCount()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onRepositoryTracksLoaded(I)V

    .line 808
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/DateTime;->primeTimeZones()V

    return-void
.end method

.method static onRepositoryLoadStart()V
    .locals 3

    .line 825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepStartLoadTime:J

    const-string v0, "FeedRepository"

    const-string v1, "Repository load started..."

    .line 826
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 827
    sput v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    .line 829
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-direct {v2, v0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method static onRepositorySaveComplete()V
    .locals 3

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_LastSavedTime:J

    sput-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepEndSaveTime:J

    const-string v0, "FeedRepository"

    const-string v1, "Repository save completed!"

    .line 846
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 847
    sput v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    .line 850
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void
.end method

.method static onRepositorySaveStart()V
    .locals 3

    const-string v0, "FeedRepository"

    const-string v1, "Repository save started..."

    .line 835
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepStartSaveTime:J

    const/4 v0, 0x3

    .line 837
    sput v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    .line 839
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-direct {v2, v0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void
.end method

.method static onRepositoryScanningForChanges()V
    .locals 3

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepXMlReadEndTime:J

    const-string v0, "FeedRepository"

    const-string v1, "Repository Reading completed!"

    .line 814
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 815
    sput v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    .line 817
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-direct {v2, v0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 820
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedCount()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onRepositoryFeedsLoaded(I)V

    return-void
.end method

.method static onTrackAdded(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 790
    sget v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 793
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void
.end method

.method private static onTrackBeforeDelete(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 778
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void
.end method

.method private static onTrackDeleted(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 784
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void
.end method

.method public static patchRootPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 856
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 859
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootPatchKey:Ljava/io/File;

    if-nez v0, :cond_1

    const-string v0, "/"

    .line 860
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->constructBeyondPodRootIn(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->constructEnclosureDownloadRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootPatchKey:Ljava/io/File;

    .line 862
    :cond_1
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootPatchKey:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p0
.end method

.method public static queryEpisodes(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)V
    .locals 7

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->totalCount:I

    .line 225
    iput v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->visibleCount:I

    .line 226
    new-instance v1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->resultList:Lmobi/beyondpod/rsscore/TrackList;

    .line 228
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v1

    .line 230
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 232
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->access$000(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v4

    sget-object v5, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v4, v5, :cond_1

    .line 233
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->access$000(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->isInCategory(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    :cond_1
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->access$100(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->access$100(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Track;->belongsTo(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->access$200(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 261
    :pswitch_0
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isNew()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isPartialyPlayed()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 265
    :pswitch_1
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 257
    :pswitch_2
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isPartialyPlayed()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 253
    :pswitch_3
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 245
    :pswitch_4
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    goto :goto_1

    .line 249
    :pswitch_5
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v4

    if-ne v4, v5, :cond_4

    :cond_3
    :goto_1
    :pswitch_6
    move v4, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v0

    :goto_3
    if-eqz v4, :cond_5

    .line 272
    iget-object v4, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->resultList:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v4, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 273
    iget v3, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->visibleCount:I

    add-int/2addr v3, v5

    iput v3, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->visibleCount:I

    .line 276
    :cond_5
    iget v3, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->totalCount:I

    add-int/2addr v3, v5

    iput v3, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->totalCount:I

    goto/16 :goto_0

    .line 279
    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static refreshVirtualFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 4

    .line 903
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    .line 906
    new-instance v1, Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/TrackDictionary;-><init>()V

    .line 907
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->removeFromTrackDictionary(Lmobi/beyondpod/rsscore/TrackList;)V

    .line 908
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 910
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    const/4 v3, 0x0

    .line 913
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Track;->initRowID(Ljava/lang/Long;)V

    .line 914
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 917
    :cond_0
    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->buildFeedList(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/TrackDictionary;)V

    return-void
.end method

.method public static removeFromTrackDictionary(Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 928
    :cond_0
    :try_start_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :try_start_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 931
    sget-object v3, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 932
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    :try_start_2
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->deleteTracks(Lmobi/beyondpod/rsscore/TrackList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 932
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "FeedRepository"

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete track from repository! reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static repositoryLoadState()I
    .locals 1

    .line 85
    sget v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    return v0
.end method

.method public static saveAndUnloadRepositoryAsync()V
    .locals 0

    .line 181
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->saveAndUnloadRepositoryAsync()V

    return-void
.end method

.method public static saveRepositoryAsOpml(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->saveRepositoryAsOpml(Ljava/lang/String;)V

    return-void
.end method

.method public static saveRepositoryAsync()V
    .locals 0

    .line 176
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->saveRepositoryAsync()V

    return-void
.end method

.method public static saveRepositorySync()V
    .locals 0

    .line 186
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->saveRepositorySync()V

    return-void
.end method

.method public static searchForCategory(Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)Lmobi/beyondpod/rsscore/categories/CategoryList;
    .locals 4

    .line 1067
    new-instance v0, Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;-><init>()V

    if-eqz p0, :cond_3

    .line 1069
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1072
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 1074
    invoke-virtual {p0, v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->matches(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1075
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static searchForFeeds(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)Lmobi/beyondpod/rsscore/Feed;
    .locals 2

    .line 1019
    new-instance v0, Lmobi/beyondpod/rsscore/Feed;

    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->FEED_SEARCH_RESULT_ROOT_ID:Ljava/util/UUID;

    invoke-direct {v0, v1, p0}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    .line 1024
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1027
    :cond_1
    invoke-static {v0, p0, p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->searchForFeeds(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static searchForFeeds(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)V
    .locals 2

    .line 1034
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Feed;

    .line 1036
    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->matches(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1040
    invoke-static {p0, v0, p2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->searchForFeeds(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static searchForTracks(Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)Lmobi/beyondpod/rsscore/TrackList;
    .locals 5

    .line 1046
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    if-eqz p0, :cond_3

    .line 1048
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1051
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v1

    .line 1053
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1055
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 1057
    invoke-virtual {p0, v3}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->matches(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1058
    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1060
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static setRootPath(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FeedRepository"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repository Root: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sput-object p0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootPath:Ljava/lang/String;

    .line 114
    sget-object p0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootFeed:Lmobi/beyondpod/rsscore/Feed;

    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RootPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V

    return-void
.end method

.method static touchAllTracks()V
    .locals 4

    .line 1193
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 1195
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    const/4 v3, 0x1

    .line 1197
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Track;->setIsModified(Z)V

    goto :goto_0

    .line 1199
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

.method public static unloadRepository()V
    .locals 2

    const-string v0, "FeedRepository"

    const-string v1, "Unloading the feed Repository!"

    .line 946
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 948
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->clearTrackDictionary()V

    const/4 v0, -0x1

    .line 949
    sput v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_RepositoryState:I

    .line 950
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->clear()V

    return-void
.end method
