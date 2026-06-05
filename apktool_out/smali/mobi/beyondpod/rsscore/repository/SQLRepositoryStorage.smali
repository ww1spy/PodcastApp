.class public Lmobi/beyondpod/rsscore/repository/SQLRepositoryStorage;
.super Ljava/lang/Object;
.source "SQLRepositoryStorage.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;


# static fields
.field private static final REPO_MOVED_BP_DLG:I = 0x2

.field private static final REPO_MOVED_EXTERNAL:I = 0x1

.field private static final REPO_NOT_MOVED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SQLRepositoryStorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIfRepositoryRootHasMoved()I
    .locals 4

    .line 511
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getRepoMovedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 514
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 516
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 518
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->downloadPathExists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 520
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->patchRootPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->directoryExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2

    :cond_3
    return v2
.end method

.method private loadRepositoryTables()Lmobi/beyondpod/rsscore/TrackDictionary;
    .locals 6

    .line 368
    new-instance v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 372
    :try_start_0
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadCategories()V

    .line 373
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadTasks()V

    .line 374
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadFeeds(Lmobi/beyondpod/rsscore/Feed;)V

    .line 375
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadTracks()Lmobi/beyondpod/rsscore/TrackDictionary;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 377
    :try_start_1
    sput v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->RepositoryLoadKind:I

    .line 378
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositoryScanningForChanges()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_0
    :try_start_2
    const-string v3, "SQLRepositoryStorage"

    const-string v4, "Unable to load the repository from database"

    .line 382
    invoke-static {v3, v4, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :goto_1
    return-object v1

    :goto_2
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    throw v1
.end method

.method private static patchRepositoryRoot(Lmobi/beyondpod/rsscore/TrackDictionary;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 484
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 486
    invoke-virtual {v1, p1}, Lmobi/beyondpod/rsscore/Feed;->patchFeedPathForCurrentRoot(Z)V

    goto :goto_1

    .line 490
    :cond_2
    new-instance v0, Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackDictionary;-><init>()V

    .line 491
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    if-eqz v2, :cond_3

    .line 495
    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/Track;->patchTrackPathForCurrentRoot(Z)V

    .line 496
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 500
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/TrackDictionary;->clear()V

    .line 501
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/TrackDictionary;->putAll(Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 503
    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->setRepoMovedPath(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deleteFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    const/4 v0, 0x0

    .line 404
    :try_start_0
    new-instance v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 405
    :try_start_1
    invoke-virtual {v1, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->deleteFeed(Lmobi/beyondpod/rsscore/Feed;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    const-string v1, "SQLRepositoryStorage"

    const-string v2, "Unable to delete feed from database"

    .line 409
    invoke-static {v1, v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_1
    throw p1
.end method

.method public deleteRepositoryFiles()V
    .locals 0

    return-void
.end method

.method public deleteTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 3

    const/4 v0, 0x0

    .line 424
    :try_start_0
    new-instance v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    :try_start_1
    invoke-virtual {v1, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->deleteTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    const-string v1, "SQLRepositoryStorage"

    const-string v2, "Unable to delete task from database"

    .line 429
    invoke-static {v1, v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_1
    throw p1
.end method

.method public deleteTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 441
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 442
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/repository/SQLRepositoryStorage;->deleteTracks(Lmobi/beyondpod/rsscore/TrackList;)V

    return-void
.end method

.method public deleteTracks(Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 3

    const/4 v0, 0x0

    .line 454
    :try_start_0
    new-instance v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 455
    :try_start_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->beginTransaction()V

    .line 457
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Track;

    .line 458
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->deleteTrack(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 470
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 471
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    const-string v1, "SQLRepositoryStorage"

    const-string v2, "Unable to delete track from database"

    .line 464
    invoke-static {v1, v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 471
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 471
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_2
    throw p1
.end method

.method public loadRepository()V
    .locals 10

    .line 52
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->dataBaseExists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    const-string v0, "SQLRepositoryStorage"

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feed Database not found, Trying to load from a SQL backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SQLRepositoryStorage"

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLite database backup exists. Restoring to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->databasePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "SQLRepositoryStorage"

    const-string v3, "Detected Android 4.4 or later! Creating a temporary database before restoring..."

    .line 67
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->createTempDB()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SQLRepositoryStorage"

    const-string v3, "Unable to create a temporary database!"

    .line 70
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->databasePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SQLRepositoryStorage"

    const-string v3, "SQLite database backup was restored!"

    .line 74
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "SQLRepositoryStorage"

    const-string v3, "Unable to restore SQLite database backup! Will try XML backup..."

    .line 79
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SQLRepositoryStorage"

    const-string v4, "failed to restore SQLite backup!"

    .line 85
    invoke-static {v3, v4, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string v0, "SQLRepositoryStorage"

    const-string v3, "SQLite database backup does not exist!"

    .line 90
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 95
    new-instance v0, Lmobi/beyondpod/rsscore/repository/XMLRepositoryStorage;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/repository/XMLRepositoryStorage;-><init>()V

    .line 96
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/XMLRepositoryStorage;->loadRepository()V

    .line 97
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->initializeHistory()V

    return-void

    :cond_3
    const-string v0, "SQLRepositoryStorage"

    const-string v3, "Detected Database restore! Clearing sync settings..."

    .line 101
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setCDSPassword(Ljava/lang/String;)V

    .line 103
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setCDSToken(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSTokenExpiration(Ljava/util/Date;)V

    const-wide/16 v3, -0x1

    .line 105
    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/Configuration;->setLastSyncTimeStamp(J)V

    .line 106
    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/Configuration;->setLastRemoteChangeTimeStamp(J)V

    .line 110
    :cond_4
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    const-string v0, "SQLRepositoryStorage"

    const-string v3, "Loading repository from SQL database..."

    .line 112
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositoryLoadStart()V

    .line 116
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->clearTrackDictionary()V

    .line 118
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/repository/SQLRepositoryStorage;->loadRepositoryTables()Lmobi/beyondpod/rsscore/TrackDictionary;

    move-result-object v0

    .line 120
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/SQLRepositoryStorage;->checkIfRepositoryRootHasMoved()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v4, "SQLRepositoryStorage"

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected change of the repository root folder! New location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/repository/SQLRepositoryStorage;->patchRepositoryRoot(Lmobi/beyondpod/rsscore/TrackDictionary;I)V

    .line 129
    :cond_5
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/rsscore/Feed;

    .line 131
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->patchFeedPathForMntRoot()V

    .line 132
    invoke-static {v5, v0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->buildFeedList(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/TrackDictionary;)V

    goto :goto_2

    .line 135
    :cond_6
    new-instance v4, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->beginTransaction()V

    .line 144
    :try_start_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackDictionary;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v6}, Lmobi/beyondpod/rsscore/TrackDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmobi/beyondpod/rsscore/Track;

    .line 147
    invoke-static {v6}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->containsTrackKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 155
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 157
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->keepMetadataForMissingEpisodes()Z

    move-result v6

    if-nez v6, :cond_8

    .line 158
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 162
    :cond_8
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v6

    if-eqz v6, :cond_9

    const-wide/16 v8, 0x0

    .line 164
    invoke-virtual {v7, v8, v9}, Lmobi/beyondpod/rsscore/Track;->setDownloadedPortion(J)V

    .line 165
    invoke-virtual {v7, v8, v9}, Lmobi/beyondpod/rsscore/Track;->setDownloadSize(J)V

    .line 169
    :cond_9
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 170
    invoke-virtual {v7, v2}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    .line 172
    :cond_a
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v6

    invoke-static {v6, v7, v1}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->addChildTrack(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/Track;Z)V

    goto :goto_3

    .line 177
    :cond_b
    invoke-virtual {v4, v7}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->deleteTrack(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_3

    .line 182
    :cond_c
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "SQLRepositoryStorage"

    const-string v2, "Unable to delete unused tracks from database"

    .line 186
    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :goto_4
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 191
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 195
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->loadFromFile()V

    .line 198
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->initializeHistory()V

    .line 201
    invoke-static {}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->initializeHistory()V

    .line 204
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->initialize()V

    if-eqz v3, :cond_d

    const-string v0, "SQLRepositoryStorage"

    const-string v1, "Saving Repository after root change..."

    .line 214
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->touchAllTracks()V

    .line 219
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/repository/SQLRepositoryStorage;->saveRepository()V

    :cond_d
    return-void

    .line 190
    :goto_5
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 191
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    throw v0
.end method

.method public saveRepository()V
    .locals 6

    .line 311
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 313
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositorySaveStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 318
    :try_start_1
    new-instance v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :try_start_2
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->beginTransaction()V

    .line 321
    sget-object v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 323
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isModified()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->saveTrack(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Feed;

    .line 331
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->rowID()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->isModified()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    :cond_3
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->saveFeed(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_1

    .line 335
    :cond_4
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->isModified()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 336
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->saveCategories()V

    .line 338
    :cond_5
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->tasks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 340
    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/ScheduledTask;->rowID()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/ScheduledTask;->isModified()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 342
    :cond_7
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->saveTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    goto :goto_2

    .line 346
    :cond_8
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_9

    .line 356
    :try_start_3
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 357
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 359
    :cond_9
    :goto_3
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositorySaveComplete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_4
    :try_start_4
    const-string v3, "SQLRepositoryStorage"

    const-string v4, "failed to save tracks and feeds to the database!"

    .line 350
    invoke-static {v3, v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_9

    .line 356
    :try_start_5
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 357
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    goto :goto_3

    .line 361
    :goto_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :goto_6
    if-eqz v2, :cond_a

    .line 356
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 357
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 359
    :cond_a
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositorySaveComplete()V

    throw v1

    :catchall_2
    move-exception v1

    .line 361
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
