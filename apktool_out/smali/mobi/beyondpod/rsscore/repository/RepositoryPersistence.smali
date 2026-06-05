.class public Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;
.super Ljava/lang/Object;
.source "RepositoryPersistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RepositoryPersistence"

.field private static final _AlbumArtPattern:Ljava/util/regex/Pattern;

.field private static _RepositorySaver:Ljava/lang/Runnable;

.field private static _RepositoryUnloader:Ljava/lang/Runnable;

.field private static _Storage:Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

.field private static _Worker:Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lmobi/beyondpod/rsscore/repository/SQLRepositoryStorage;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/repository/SQLRepositoryStorage;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Storage:Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

    .line 47
    new-instance v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;-><init>(Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$1;)V

    sput-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Worker:Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;

    .line 52
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Worker:Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;

    const-string v1, "Repository Worker Thread"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->setName(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Worker:Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->setPriority(I)V

    .line 54
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Worker:Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->start()V

    .line 55
    :catch_0
    :goto_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Worker:Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->access$100(Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xa

    .line 59
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$1;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_RepositorySaver:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$2;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$2;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_RepositoryUnloader:Ljava/lang/Runnable;

    const-string v0, "AlbumArt\\S*jpg|folder.jpg|thumbs.db|desktop.ini"

    const/4 v1, 0x2

    .line 328
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_AlbumArtPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;
    .locals 1

    .line 41
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Storage:Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

    return-object v0
.end method

.method static addChildTrack(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 0

    .line 336
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->add(Lmobi/beyondpod/rsscore/Track;)Z

    .line 338
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->containsTrackKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 340
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->addTrack(Lmobi/beyondpod/rsscore/Track;)V

    if-eqz p2, :cond_0

    .line 342
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onTrackAdded(Lmobi/beyondpod/rsscore/Track;)V

    :cond_0
    return-void
.end method

.method static autoSaveRepository()V
    .locals 6

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_LastSavedTime:J

    sub-long v4, v0, v2

    const-wide/32 v0, 0x3a980

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 130
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->saveRepositoryAsync()V

    :cond_0
    return-void
.end method

.method static buildFeedList(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/TrackDictionary;)V
    .locals 7

    .line 177
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 193
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 194
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 196
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 198
    new-instance v5, Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {v5, v4, p0}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/io/File;Lmobi/beyondpod/rsscore/Feed;)V

    .line 199
    invoke-static {v5, p1}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->buildFeedList(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/TrackDictionary;)V

    .line 201
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 204
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 205
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gez v4, :cond_2

    .line 206
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RepositoryPersistence"

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading feeds! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_3
    :try_start_1
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->loadFeedTracks(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/TrackDictionary;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "RepositoryPersistence"

    const-string v1, "Error loading podcasts for feed: %s."

    const/4 v3, 0x1

    .line 222
    new-array v3, v3, [Ljava/lang/Object;

    .line 223
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    .line 222
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static canSaveRepository()Z
    .locals 2

    .line 143
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static deleteFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 450
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Storage:Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

    invoke-interface {v0, p0}, Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;->deleteFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public static deleteRepositoryFiles()V
    .locals 1

    .line 445
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Storage:Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

    invoke-interface {v0}, Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;->deleteRepositoryFiles()V

    return-void
.end method

.method public static deleteScheduledTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 1

    .line 465
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Storage:Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

    invoke-interface {v0, p0}, Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;->deleteTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    return-void
.end method

.method public static deleteTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 455
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Storage:Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

    invoke-interface {v0, p0}, Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;->deleteTrack(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method public static deleteTracks(Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 1

    .line 460
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Storage:Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

    invoke-interface {v0, p0}, Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;->deleteTracks(Lmobi/beyondpod/rsscore/TrackList;)V

    return-void
.end method

.method private static isOnIgnoreList(Ljava/lang/String;)Z
    .locals 1

    .line 331
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_AlbumArtPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static isRepositoryLoadingOrSaving()Z
    .locals 3

    .line 136
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 138
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static loadFeedTracks(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/TrackDictionary;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 229
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->clear()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 239
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_c

    const/4 v4, 0x0

    .line 242
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_c

    aget-object v7, v3, v6

    .line 244
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->isHidden()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->isOnIgnoreList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_2

    .line 250
    :cond_2
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->containsTrackKey(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    goto/16 :goto_2

    .line 260
    :cond_3
    new-instance v8, Lmobi/beyondpod/rsscore/Track;

    invoke-direct {v8, v7, v0}, Lmobi/beyondpod/rsscore/Track;-><init>(Ljava/io/File;Lmobi/beyondpod/rsscore/Feed;)V

    .line 262
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getHideUnsupportedFileTypes()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->isSupportedFileType()Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_2

    .line 268
    :cond_4
    invoke-static {v0, v8, v4}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->addChildTrack(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/Track;Z)V

    .line 271
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmobi/beyondpod/rsscore/TrackDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmobi/beyondpod/rsscore/Track;

    const/4 v9, 0x4

    if-nez v7, :cond_5

    .line 274
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lmobi/beyondpod/rsscore/Feed;->MNT_SDCARD_MOUNT:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 276
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lmobi/beyondpod/rsscore/TrackDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmobi/beyondpod/rsscore/Track;

    if-eqz v7, :cond_5

    const/4 v12, 0x0

    .line 278
    invoke-virtual {v7, v12}, Lmobi/beyondpod/rsscore/Track;->initRowID(Ljava/lang/Long;)V

    :cond_5
    if-eqz v7, :cond_9

    .line 283
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->rowID()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->initRowID(Ljava/lang/Long;)V

    .line 284
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->setName(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->setContentMimeType(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v13

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v15

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v17

    move-object v12, v8

    invoke-virtual/range {v12 .. v17}, Lmobi/beyondpod/rsscore/Track;->initializePlayedTimes(JJZ)V

    .line 287
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->setProtocol(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->setRssItemID(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->setTrackDescription(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->trackPostTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->setTrackPostTitle(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->trackPostUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->setTrackPostUrl(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v12

    invoke-virtual {v8, v12}, Lmobi/beyondpod/rsscore/Track;->setLocked(Z)V

    .line 295
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 298
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->getSizeOnDisk()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lmobi/beyondpod/rsscore/Track;->setDownloadedPortion(J)V

    .line 299
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v12

    cmp-long v14, v12, v10

    if-lez v14, :cond_6

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v10

    goto :goto_1

    :cond_6
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->getSizeOnDisk()J

    move-result-wide v10

    :goto_1
    invoke-virtual {v8, v10, v11}, Lmobi/beyondpod/rsscore/Track;->setDownloadSize(J)V

    .line 300
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lmobi/beyondpod/rsscore/Track;->setUrl(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v10

    if-nez v10, :cond_7

    .line 302
    invoke-virtual {v8, v9}, Lmobi/beyondpod/rsscore/Track;->setDownloadStatus(I)V

    .line 304
    :cond_7
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 305
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v8, v7}, Lmobi/beyondpod/rsscore/Track;->setLastModifiedDate(Ljava/util/Date;)V

    .line 308
    :cond_8
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->rowID()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 309
    invoke-virtual {v8, v4}, Lmobi/beyondpod/rsscore/Track;->setIsModified(Z)V

    .line 312
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v7

    if-nez v7, :cond_b

    .line 313
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 314
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v7

    .line 315
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v9

    .line 314
    invoke-virtual {v7, v9}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    if-gez v7, :cond_b

    .line 316
    :cond_a
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V

    :catch_0
    :cond_b
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 321
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_d

    .line 323
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V

    :cond_d
    return-void
.end method

.method static loadRepository()Z
    .locals 2

    .line 148
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->isRepositoryLoadingOrSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$3;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$3;-><init>()V

    .line 171
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static longTermRepositoryBackupDate()Ljava/util/Date;
    .locals 4

    .line 430
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->trackStateBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static repositoryHandler()Landroid/os/Handler;
    .locals 1

    .line 69
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Worker:Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->access$200(Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static saveAndUnloadRepositoryAsync()V
    .locals 3

    .line 113
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->canSaveRepository()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RepositoryPersistence"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to save the repository but the repository is in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Save Ignored!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_RepositorySaver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_RepositoryUnloader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_RepositorySaver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_RepositoryUnloader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static saveRepositoryAsOpml(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    :try_start_0
    new-instance v1, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :try_start_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartDocument()V

    const-string v0, "opml"

    .line 355
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v0, "version"

    const-string v2, "1.1"

    .line 356
    invoke-virtual {v1, v0, v2}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "head"

    .line 358
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v0, "title"

    .line 359
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v0, "BeyondPod Feeds"

    .line 360
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeString(Ljava/lang/String;)V

    const-string v0, "title"

    .line 361
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    const-string v0, "dateCreated"

    .line 363
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toRFC822String(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeString(Ljava/lang/String;)V

    const-string v0, "dateCreated"

    .line 367
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    const-string v0, "dateModified"

    .line 369
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toRFC822String(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeString(Ljava/lang/String;)V

    const-string v0, "dateModified"

    .line 371
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    const-string v0, "head"

    .line 373
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    const-string v0, "body"

    .line 375
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const-string v3, "outline"

    .line 379
    invoke-virtual {v1, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v3, "text"

    .line 380
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/Feed;

    .line 384
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v5

    if-ne v5, v2, :cond_0

    const-string v5, "outline"

    .line 386
    invoke-virtual {v1, v5}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v5, "text"

    .line 387
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "xmlUrl"

    .line 388
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    const-string v5, "rss"

    .line 389
    invoke-virtual {v1, v4, v5}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "outline"

    .line 390
    invoke-virtual {v1, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "outline"

    .line 393
    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "body"

    .line 396
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    const-string v0, "opml"

    .line 397
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    .line 408
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->close()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    :try_start_2
    const-string v2, "RepositoryPersistence"

    const-string v3, "Unable to export to file: %s reason: %s"

    const/4 v4, 0x2

    .line 401
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p0

    .line 401
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v1, :cond_4

    .line 408
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->close()V

    :cond_4
    throw p0
.end method

.method static saveRepositoryAsync()V
    .locals 3

    .line 101
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->canSaveRepository()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RepositoryPersistence"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to save the repository but the repository is in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Save Ignored!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_RepositorySaver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_RepositorySaver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static saveRepositorySync()V
    .locals 3

    .line 90
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->canSaveRepository()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RepositoryPersistence"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to save the repository but the repository is in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Save Ignored!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->_Storage:Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

    invoke-interface {v0}, Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;->saveRepository()V

    return-void
.end method
