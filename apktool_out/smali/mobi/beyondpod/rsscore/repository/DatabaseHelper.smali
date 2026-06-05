.class public Lmobi/beyondpod/rsscore/repository/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;
    }
.end annotation


# static fields
.field private static final CATEGORY_COL_categories:I = 0x1

.field private static final CATEGORY_COL_rowId:I = 0x0

.field private static final CHANGE_HISTORY_COL_blob:I = 0x4

.field private static final CHANGE_HISTORY_COL_changeType:I = 0x2

.field private static final CHANGE_HISTORY_COL_rowId:I = 0x0

.field private static final CHANGE_HISTORY_COL_syncStatus:I = 0x3

.field private static final CHANGE_HISTORY_COL_timestamp:I = 0x1

.field private static final COLS_CATEGORIES:[Ljava/lang/String;

.field private static final COLS_CHANGE_HISTORY:[Ljava/lang/String;

.field private static final COLS_EPISODES_HISTORY:[Ljava/lang/String;

.field public static final COLS_FEEDS:[Ljava/lang/String;

.field private static final COLS_SCHEDULER:[Ljava/lang/String;

.field private static final COLS_SMART_PLAYLIST:[Ljava/lang/String;

.field public static final COLS_TRACKS:[Ljava/lang/String;

.field public static final COLS_TRACK_SHOW_NOTES:[Ljava/lang/String;

.field public static final DB_NAME:Ljava/lang/String; = "beyondpod.db"

.field private static final DB_TABLE_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final DB_TABLE_CHANGE_HISTORY:Ljava/lang/String; = "change_history"

.field public static final DB_TABLE_EPISODE_HISTORY:Ljava/lang/String; = "episode_history"

.field public static final DB_TABLE_FEEDS:Ljava/lang/String; = "feeds"

.field private static final DB_TABLE_SCHEDULER:Ljava/lang/String; = "scheduled_tasks"

.field public static final DB_TABLE_SMART_PLAYLIST:Ljava/lang/String; = "smartplaylist"

.field public static final DB_TABLE_TRACKS:Ljava/lang/String; = "tracks"

.field private static final DB_VERSION:I = 0xa

.field private static final EPISODES_HISTORY_COL_entryType:I = 0x4

.field private static final EPISODES_HISTORY_COL_episodeUrl:I = 0x1

.field private static final EPISODES_HISTORY_COL_feedUrl:I = 0x2

.field private static final EPISODES_HISTORY_COL_rowId:I = 0x0

.field private static final EPISODES_HISTORY_COL_timestamp:I = 0x3

.field private static final FEED_COL_audio_settings:I = 0x1b

.field private static final FEED_COL_autodelete:I = 0x4

.field private static final FEED_COL_category:I = 0xc

.field private static final FEED_COL_custDownload:I = 0xd

.field private static final FEED_COL_feedId:I = 0x1

.field private static final FEED_COL_feedPlayer:I = 0x13

.field private static final FEED_COL_fingerprintType:I = 0x1a

.field private static final FEED_COL_forceItemSort:I = 0x10

.field private static final FEED_COL_forceUniqueNames:I = 0xe

.field private static final FEED_COL_hasUnread:I = 0x9

.field private static final FEED_COL_imageUrl:I = 0x8

.field private static final FEED_COL_lastItemId:I = 0x11

.field private static final FEED_COL_leftTruncateLongTrackNames:I = 0xf

.field private static final FEED_COL_maxDownload:I = 0x15

.field private static final FEED_COL_maxGReaderItems:I = 0x16

.field private static final FEED_COL_maxTrackAge:I = 0x18

.field private static final FEED_COL_maxTracks:I = 0x17

.field private static final FEED_COL_name:I = 0x3

.field public static final FEED_COL_path:I = 0x2

.field private static final FEED_COL_pubDate:I = 0xa

.field public static final FEED_COL_rowID:I = 0x0

.field private static final FEED_COL_savePlayedPosition:I = 0x19

.field private static final FEED_COL_srvPubDate:I = 0xb

.field private static final FEED_COL_trackSort:I = 0x12

.field private static final FEED_COL_type:I = 0x6

.field private static final FEED_COL_url:I = 0x7

.field private static final FEED_COL_username:I = 0x14

.field private static final FEED_COL_view:I = 0x5

.field private static final SCHEDULER_COL_active:I = 0x2

.field private static final SCHEDULER_COL_minBattLevel:I = 0x3

.field private static final SCHEDULER_COL_operationId:I = 0x7

.field private static final SCHEDULER_COL_recInterval:I = 0x6

.field private static final SCHEDULER_COL_recPeriod:I = 0x5

.field private static final SCHEDULER_COL_rowId:I = 0x0

.field private static final SCHEDULER_COL_startTime:I = 0x4

.field private static final SCHEDULER_COL_state:I = 0x8

.field private static final SCHEDULER_COL_taskId:I = 0x1

.field private static final SMART_PLAYLIST_COL_categoryId:I = 0x5

.field private static final SMART_PLAYLIST_COL_config:I = 0x9

.field private static final SMART_PLAYLIST_COL_episodeFilter:I = 0x7

.field private static final SMART_PLAYLIST_COL_feedId:I = 0x3

.field private static final SMART_PLAYLIST_COL_numEpisodes:I = 0x6

.field private static final SMART_PLAYLIST_COL_playbackType:I = 0x8

.field private static final SMART_PLAYLIST_COL_playlistId:I = 0x1

.field private static final SMART_PLAYLIST_COL_playlistName:I = 0x2

.field private static final SMART_PLAYLIST_COL_rowId:I = 0x0

.field private static final SMART_PLAYLIST_COL_sortOrder:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DatabaseHelper"

.field private static final TRACK_COL_contentType:I = 0x5

.field private static final TRACK_COL_description:I = 0x10

.field private static final TRACK_COL_downloadPortion:I = 0xa

.field private static final TRACK_COL_downloadSize:I = 0x9

.field private static final TRACK_COL_imagePath:I = 0xf

.field private static final TRACK_COL_locked:I = 0x13

.field private static final TRACK_COL_name:I = 0x4

.field private static final TRACK_COL_orgRssItemID:I = 0xd

.field private static final TRACK_COL_parentFeedID:I = 0xe

.field public static final TRACK_COL_path:I = 0x1

.field private static final TRACK_COL_played:I = 0x6

.field private static final TRACK_COL_playedTime:I = 0x3

.field private static final TRACK_COL_postTitle:I = 0x11

.field private static final TRACK_COL_postUrl:I = 0x12

.field private static final TRACK_COL_protocol:I = 0x7

.field private static final TRACK_COL_pubDate:I = 0xb

.field public static final TRACK_COL_rowId:I = 0x0

.field private static final TRACK_COL_showNotesSize:I = 0x14

.field private static final TRACK_COL_totalTime:I = 0x2

.field private static final TRACK_COL_url:I = 0x8


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbOpenHelper:Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "_id"

    const-string v1, "feedId"

    const-string v2, "path"

    const-string v3, "name"

    const-string v4, "autodelete"

    const-string v5, "view"

    const-string v6, "type"

    const-string v7, "url"

    const-string v8, "imageUrl"

    const-string v9, "hasUnread"

    const-string v10, "pubDate"

    const-string v11, "srvPubDate"

    const-string v12, "category"

    const-string v13, "custDownload"

    const-string v14, "forceUniqueNames"

    const-string v15, "leftTruncateLongTrackNames"

    const-string v16, "forceItemSort"

    const-string v17, "lastItemId"

    const-string v18, "trackSort"

    const-string v19, "feedPlayer"

    const-string v20, "username"

    const-string v21, "maxDownload"

    const-string v22, "maxGReaderItems"

    const-string v23, "maxTracks"

    const-string v24, "maxTrackAge"

    const-string v25, "savePlayedPosition"

    const-string v26, "fingerprintType"

    const-string v27, "audioSettings"

    .line 72
    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_FEEDS:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "path"

    const-string v3, "totalTime"

    const-string v4, "playedTime"

    const-string v5, "name"

    const-string v6, "contentType"

    const-string v7, "played"

    const-string v8, "protocol"

    const-string v9, "url"

    const-string v10, "downloadSize"

    const-string v11, "downloadPortion"

    const-string v12, "pubDate"

    const-string v13, "orgFeedItemID"

    const-string v14, "orgRssItemID"

    const-string v15, "parentFeedID"

    const-string v16, "imagePath"

    const-string v17, "description"

    const-string v18, "postTitle"

    const-string v19, "postUrl"

    const-string v20, "locked"

    const-string v21, "length(showNotes)"

    .line 106
    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_TRACKS:[Ljava/lang/String;

    const-string v0, "showNotes"

    .line 110
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_TRACK_SHOW_NOTES:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "taskId"

    const-string v3, "active"

    const-string v4, "minBattLevel"

    const-string v5, "startTime"

    const-string v6, "recPeriod"

    const-string v7, "recInterval"

    const-string v8, "operationId"

    const-string v9, "state"

    .line 134
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SCHEDULER:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "categories"

    .line 147
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CATEGORIES:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "timestamp"

    const-string v2, "changeType"

    const-string v3, "syncStatus"

    const-string v4, "blob"

    .line 151
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CHANGE_HISTORY:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "episodeUrl"

    const-string v2, "feedUrl"

    const-string v3, "timestamp"

    const-string v4, "entryType"

    .line 158
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_EPISODES_HISTORY:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "playlistId"

    const-string v3, "playlistName"

    const-string v4, "feedId"

    const-string v5, "sortOrder"

    const-string v6, "categoryId"

    const-string v7, "numEpisodes"

    const-string v8, "episodeFilter"

    const-string v9, "playbackType"

    const-string v10, "config"

    .line 167
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    new-instance v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;

    invoke-direct {v0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->dbOpenHelper:Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;

    .line 627
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->establishDb()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CHANGE_HISTORY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_EPISODES_HISTORY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    return-object v0
.end method

.method public static createTempDB()Z
    .locals 4

    .line 590
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->databasePath()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "BeyondPod database file already EXIST!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 598
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating a temporary database file at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 603
    :try_start_0
    new-instance v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-direct {v2, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 604
    :try_start_1
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 613
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 608
    :goto_0
    :try_start_2
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create a temporary database!"

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 613
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_2
    const/4 v0, 0x0

    return v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_3
    throw v0
.end method

.method public static dataBaseExists()Z
    .locals 6

    .line 552
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->databasePath()Ljava/lang/String;

    move-result-object v0

    .line 554
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for BeyondPod database file at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "BeyondPod database file DOES NOT EXIST!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 564
    :try_start_0
    invoke-static {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 565
    :try_start_1
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "Found BeyondPod database file"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 582
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-object v2, v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v0, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 577
    :goto_1
    :try_start_2
    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v4, "BeyondPod SQL database file exists but opening the database failed!"

    invoke-static {v3, v4, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 570
    :catch_3
    :goto_2
    :try_start_3
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "Found BeyondPod database file"

    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 582
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    :goto_3
    return v1

    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v1
.end method

.method public static databasePath()Ljava/lang/String;
    .locals 2

    .line 621
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "beyondpod.db"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private establishDb()V
    .locals 1

    .line 632
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->dbOpenHelper:Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method private loadEpisodeHistoryEntry(Landroid/database/Cursor;)Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;
    .locals 9

    const/4 v0, 0x0

    .line 1510
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v1, 0x1

    .line 1511
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x2

    .line 1512
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    .line 1513
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x4

    .line 1514
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1516
    new-instance p1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 1517
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->setIsModified(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1523
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read history entry! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private loadFeed(Landroid/database/Cursor;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 755
    :try_start_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 756
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseUUIDFromString(Ljava/lang/String;Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v7

    const/4 v8, 0x3

    .line 758
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 760
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-static {v9, v10}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    .line 761
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    .line 762
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-static {v11, v12}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc

    .line 763
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x14

    .line 764
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-static {v13, v14}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    .line 766
    invoke-direct {v1, v2, v14, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v14

    const/4 v15, 0x5

    .line 768
    invoke-direct {v1, v2, v15, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v15

    const/4 v6, 0x6

    .line 769
    invoke-direct {v1, v2, v6, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v6

    const/16 v3, 0x17

    move-object/from16 v16, v13

    .line 770
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v13

    invoke-direct {v1, v2, v3, v13}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v3

    const/16 v13, 0x18

    move/from16 v17, v3

    const v3, 0x1869f

    .line 771
    invoke-direct {v1, v2, v13, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v3

    const/16 v13, 0x15

    move/from16 v18, v3

    .line 773
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result v3

    .line 772
    invoke-direct {v1, v2, v13, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v3

    const/16 v13, 0x16

    move/from16 v19, v3

    const/4 v3, 0x0

    .line 774
    invoke-direct {v1, v2, v13, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v13

    move/from16 v20, v13

    const/16 v13, 0x9

    .line 775
    invoke-direct {v1, v2, v13, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v13

    move-object/from16 v21, v12

    const/16 v12, 0xd

    .line 776
    invoke-direct {v1, v2, v12, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v12

    move/from16 v22, v12

    const/16 v12, 0xe

    .line 777
    invoke-direct {v1, v2, v12, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetBoolean(Landroid/database/Cursor;IZ)Z

    move-result v12

    const/16 v3, 0x19

    move/from16 v23, v12

    const/4 v12, 0x1

    .line 778
    invoke-direct {v1, v2, v3, v12}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetBoolean(Landroid/database/Cursor;IZ)Z

    move-result v3

    move/from16 v24, v3

    const/16 v3, 0x1a

    .line 779
    invoke-direct {v1, v2, v3, v12}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v3

    const/16 v12, 0xf

    move/from16 v25, v3

    const/4 v3, 0x0

    .line 780
    invoke-direct {v1, v2, v12, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetBoolean(Landroid/database/Cursor;IZ)Z

    move-result v12

    const/16 v3, 0x10

    move/from16 v26, v12

    const/4 v12, -0x1

    .line 781
    invoke-direct {v1, v2, v3, v12}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v3

    move/from16 v27, v3

    const/16 v3, 0x12

    .line 782
    invoke-direct {v1, v2, v3, v12}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v3

    move/from16 v28, v3

    const/16 v3, 0x13

    .line 783
    invoke-direct {v1, v2, v3, v12}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v3

    const/16 v12, 0xa

    .line 785
    invoke-direct {v1, v2, v12}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetDate(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v12

    move/from16 v29, v3

    const/16 v3, 0xb

    .line 786
    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetDate(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v3

    const/16 v1, 0x11

    .line 788
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1b

    .line 789
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 791
    new-instance v3, Lmobi/beyondpod/rsscore/Feed;

    move-object/from16 v31, v2

    move-object/from16 v2, p2

    invoke-direct {v3, v7, v2}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 795
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->initRowID(Ljava/lang/Long;)V

    .line 796
    invoke-virtual {v3, v8}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v3, v10}, Lmobi/beyondpod/rsscore/Feed;->setFeedUrl(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v3, v11}, Lmobi/beyondpod/rsscore/Feed;->setFeedImageUrl(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v3, v14}, Lmobi/beyondpod/rsscore/Feed;->setAllowAutoTrackDeletions(I)V

    .line 800
    invoke-virtual {v3, v15}, Lmobi/beyondpod/rsscore/Feed;->setPreferredEnclosureIndex(I)V

    .line 801
    invoke-virtual {v3, v6}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    .line 802
    invoke-virtual {v3, v9}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v3, v13}, Lmobi/beyondpod/rsscore/Feed;->setNumUnreadItems(I)V

    .line 804
    invoke-virtual {v3, v12}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V

    move-object/from16 v4, v30

    .line 805
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setLastServerModifiedDate(Ljava/util/Date;)V

    move-object/from16 v4, v21

    .line 806
    invoke-static {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->deserialize(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setCategories(Lmobi/beyondpod/rsscore/categories/FeedCategories;)V

    move/from16 v4, v27

    .line 807
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    move/from16 v4, v23

    .line 808
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setForceUniqueTrackNames(Z)V

    move/from16 v4, v24

    .line 809
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setShouldRememberPlayedPosition(Z)V

    move/from16 v4, v25

    .line 810
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setItemFingerprintAlgorithm(I)V

    move/from16 v4, v26

    .line 811
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setLeftTruncateLongTrackNames(Z)V

    .line 812
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setLastItemID(Ljava/lang/String;)V

    move/from16 v1, v29

    .line 813
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setFeedPlayer(I)V

    move-object/from16 v1, v16

    .line 814
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setUserName(Ljava/lang/String;)V

    move/from16 v1, v28

    .line 815
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    if-lez v20, :cond_0

    move/from16 v1, v20

    .line 818
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumGReaderItemsToGet(I)V

    :cond_0
    move/from16 v1, v22

    .line 820
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setPodcastDownloadAction(I)V

    move/from16 v1, v19

    .line 821
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumberPodcastsToDownload(I)V

    move/from16 v1, v17

    .line 822
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setKeepAtMostPodcasts(I)V

    .line 823
    new-instance v1, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move/from16 v4, v18

    int-to-long v5, v4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJ)V

    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setMaximumPodcastAge(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    move-object/from16 v1, v31

    .line 824
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->deserialize(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setAudioSettings(Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;)V

    const/4 v1, 0x0

    .line 826
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setIsModified(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 830
    :try_start_2
    sget-object v4, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read feed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 837
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read feed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private loadSmartPlaylistEntry(Landroid/database/Cursor;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;
    .locals 17

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1612
    :try_start_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    .line 1613
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v4, 0x2

    .line 1614
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x3

    .line 1615
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x4

    .line 1616
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v4, 0x5

    .line 1617
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x6

    .line 1618
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v4, 0x7

    .line 1619
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v4, 0x8

    .line 1620
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v4, 0x9

    .line 1621
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1623
    new-instance v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;-><init>(JILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;)V

    .line 1625
    invoke-virtual {v1, v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1631
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read smart playlist! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private loadTask(Landroid/database/Cursor;)V
    .locals 12

    const/4 v0, 0x0

    .line 924
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 929
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 930
    invoke-direct {p0, p1, v5, v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetBoolean(Landroid/database/Cursor;IZ)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x6

    .line 932
    invoke-direct {p0, p1, v6, v7}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v6

    const/4 v8, 0x4

    .line 937
    invoke-direct {p0, p1, v8}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetDate(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v8

    if-nez v8, :cond_0

    .line 939
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 941
    :cond_0
    invoke-direct {p0, p1, v7, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v7

    const/4 v3, 0x5

    const-wide/16 v9, 0x1

    .line 942
    invoke-direct {p0, p1, v3, v9, v10}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetLong(Landroid/database/Cursor;IJ)J

    move-result-wide v9

    const/4 v3, 0x7

    .line 945
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseUUIDFromString(Ljava/lang/String;Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v11

    const/16 v3, 0x8

    .line 946
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    move-wide v8, v9

    move-object v10, v11

    move-object v11, p1

    .line 948
    invoke-static/range {v1 .. v11}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->loadTask(JLjava/lang/String;ZILjava/util/Date;IJLjava/util/UUID;Ljava/lang/String;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object p1

    .line 951
    invoke-virtual {p1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->setIsModified(Z)V

    .line 952
    iget-object v1, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/schedulercore/Event;->setIsModified(Z)V

    .line 953
    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/schedulercore/OperationBase;->setIsModified(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 957
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read scheduled task from database! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private loadTrack(Landroid/database/Cursor;Lmobi/beyondpod/rsscore/TrackDictionary;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1067
    :try_start_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 1068
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    .line 1069
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    .line 1070
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-static {v9, v10}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    .line 1071
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xf

    .line 1073
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-static {v11, v12}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    .line 1074
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x11

    .line 1077
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-static {v13, v14}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x12

    .line 1078
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-static {v14, v15}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x13

    .line 1080
    invoke-direct {v1, v2, v15, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v15

    const/4 v6, 0x5

    .line 1082
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, ""

    invoke-static {v6, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    move-object/from16 v16, v14

    move/from16 v17, v15

    const-wide/16 v14, 0x0

    .line 1085
    invoke-direct {v1, v2, v6, v14, v15}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetLong(Landroid/database/Cursor;IJ)J

    move-result-wide v21

    const/4 v6, 0x3

    .line 1086
    invoke-direct {v1, v2, v6, v14, v15}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetLong(Landroid/database/Cursor;IJ)J

    move-result-wide v19

    const/4 v6, 0x6

    const/4 v14, 0x0

    .line 1088
    invoke-direct {v1, v2, v6, v14}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetBoolean(Landroid/database/Cursor;IZ)Z

    move-result v23

    const/16 v6, 0x9

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    const-wide/16 v14, 0x0

    .line 1090
    invoke-direct {v1, v2, v6, v14, v15}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetLong(Landroid/database/Cursor;IJ)J

    move-result-wide v11

    const/16 v6, 0xa

    move-wide/from16 v26, v11

    .line 1091
    invoke-direct {v1, v2, v6, v14, v15}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetLong(Landroid/database/Cursor;IJ)J

    move-result-wide v11

    const/16 v6, 0xb

    .line 1093
    invoke-direct {v1, v2, v6}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetDate(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v6

    const/16 v14, 0xd

    .line 1095
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xe

    move-object/from16 v28, v13

    .line 1097
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x14

    move-wide/from16 v29, v11

    const-wide/16 v11, 0x0

    .line 1099
    invoke-direct {v1, v2, v15, v11, v12}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetLong(Landroid/database/Cursor;IJ)J

    move-result-wide v11

    .line 1103
    invoke-static {v13}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    const/4 v15, 0x0

    if-nez v13, :cond_0

    const/16 v13, 0xe

    .line 1105
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseUUIDFromString(Ljava/lang/String;Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1108
    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v15

    .line 1111
    :cond_0
    new-instance v2, Lmobi/beyondpod/rsscore/Track;

    invoke-direct {v2, v7, v15}, Lmobi/beyondpod/rsscore/Track;-><init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;)V

    .line 1113
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmobi/beyondpod/rsscore/Track;->initRowID(Ljava/lang/Long;)V

    .line 1114
    invoke-virtual {v2, v8}, Lmobi/beyondpod/rsscore/Track;->setName(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Track;->setContentMimeType(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v2, v9}, Lmobi/beyondpod/rsscore/Track;->setProtocol(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v2, v10}, Lmobi/beyondpod/rsscore/Track;->setUrl(Ljava/lang/String;)V

    move-object/from16 v18, v2

    .line 1118
    invoke-virtual/range {v18 .. v23}, Lmobi/beyondpod/rsscore/Track;->initializePlayedTimes(JJZ)V

    move-wide/from16 v3, v29

    .line 1119
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/Track;->setDownloadedPortion(J)V

    move-wide/from16 v3, v26

    .line 1120
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/Track;->setDownloadSize(J)V

    .line 1121
    invoke-virtual {v2, v6}, Lmobi/beyondpod/rsscore/Track;->setLastModifiedDate(Ljava/util/Date;)V

    .line 1122
    invoke-virtual {v2, v14}, Lmobi/beyondpod/rsscore/Track;->setRssItemID(Ljava/lang/String;)V

    move-object/from16 v3, v25

    .line 1123
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Track;->setTrackDescription(Ljava/lang/String;)V

    move-object/from16 v3, v24

    .line 1124
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    move-object/from16 v3, v28

    .line 1125
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Track;->setTrackPostTitle(Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 1126
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Track;->setTrackPostUrl(Ljava/lang/String;)V

    move/from16 v3, v17

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1127
    :goto_0
    invoke-virtual {v2, v4}, Lmobi/beyondpod/rsscore/Track;->setLocked(Z)V

    .line 1128
    invoke-virtual {v2, v11, v12}, Lmobi/beyondpod/rsscore/Track;->setSavedShowNotesSize(J)V

    .line 1130
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v4, v3, v2}, Lmobi/beyondpod/rsscore/TrackDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1132
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Track;->setIsModified(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1136
    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read track from database! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private loadTrackedChange(Landroid/database/Cursor;)Lmobi/beyondpod/sync/TrackedChangeBase;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1391
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v2, 0x2

    .line 1392
    invoke-direct {p0, p1, v2, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v8

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    .line 1393
    invoke-direct {p0, p1, v6, v3, v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetLong(Landroid/database/Cursor;IJ)J

    move-result-wide v9

    const/4 v3, 0x3

    .line 1394
    invoke-direct {p0, p1, v3, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->safeGetInt(Landroid/database/Cursor;II)I

    move-result v11

    const/4 v4, 0x4

    .line 1395
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v7, ""

    invoke-static {p1, v7}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eq v8, v6, :cond_7

    if-eq v8, v2, :cond_7

    if-eq v8, v3, :cond_7

    const/16 v2, 0xe

    if-ne v8, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eq v8, v4, :cond_6

    const/4 v2, 0x5

    if-eq v8, v2, :cond_6

    const/4 v2, 0x6

    if-ne v8, v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0xc

    if-eq v8, v2, :cond_5

    const/16 v2, 0xd

    if-eq v8, v2, :cond_5

    const/16 v2, 0xa

    if-eq v8, v2, :cond_5

    const/16 v2, 0xb

    if-ne v8, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x9

    if-eq v8, v2, :cond_4

    const/4 v2, 0x7

    if-eq v8, v2, :cond_4

    const/16 v2, 0x8

    if-eq v8, v2, :cond_4

    const/16 v2, 0xf

    if-ne v8, v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_4

    .line 1419
    :cond_4
    :goto_0
    new-instance v2, Lmobi/beyondpod/sync/TrackedChangeEpisode;

    move-object v4, v2

    move-wide v6, v9

    move v9, v11

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lmobi/beyondpod/sync/TrackedChangeEpisode;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    goto :goto_4

    .line 1413
    :cond_5
    :goto_1
    new-instance v2, Lmobi/beyondpod/sync/TrackedChangePost;

    move-object v4, v2

    move-wide v6, v9

    move v9, v11

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lmobi/beyondpod/sync/TrackedChangePost;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    goto :goto_4

    .line 1407
    :cond_6
    :goto_2
    new-instance v2, Lmobi/beyondpod/sync/TrackedChangeEnclosure;

    move-object v4, v2

    move-wide v6, v9

    move v9, v11

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    goto :goto_4

    .line 1402
    :cond_7
    :goto_3
    new-instance v2, Lmobi/beyondpod/sync/TrackedChangeFeed;

    move-object v4, v2

    move-wide v6, v9

    move v9, v11

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lmobi/beyondpod/sync/TrackedChangeFeed;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    :goto_4
    if-eqz v2, :cond_8

    .line 1423
    invoke-virtual {v2, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->setIsModified(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-object v2

    :catch_0
    move-exception p1

    .line 1428
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read feed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private safeGetBoolean(Landroid/database/Cursor;IZ)Z
    .locals 1

    .line 1676
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p3

    .line 1679
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private safeGetDate(Landroid/database/Cursor;I)Ljava/util/Date;
    .locals 1

    .line 1686
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1689
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private safeGetInt(Landroid/database/Cursor;II)I
    .locals 1

    .line 1660
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p3

    .line 1663
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method private safeGetLong(Landroid/database/Cursor;IJ)J
    .locals 1

    .line 1668
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p3

    .line 1671
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .line 1694
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public cleanAnyDuplicateDatabaseTracks(Lmobi/beyondpod/rsscore/TrackDictionary;)V
    .locals 10

    .line 1167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 1170
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->rowID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1176
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tracks"

    sget-object v4, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_TRACKS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1177
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1179
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    .line 1182
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1183
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1184
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1189
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-lez v1, :cond_5

    .line 1193
    :try_start_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->beginTransaction()V

    .line 1196
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1198
    iget-object v5, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "tracks"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 1199
    sget-object v5, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!! failed to delete record for track id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1204
    :cond_4
    sget-object p1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " duplicate track records. Deleted: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1210
    :try_start_3
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    throw p1

    .line 1215
    :cond_5
    sget-object p1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v0, "No duplicate track records were found."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    if-eqz v2, :cond_6

    .line 1224
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .line 1220
    :goto_4
    :try_start_4
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to load track database records"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_6

    .line 1224
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1226
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v2, :cond_7

    .line 1224
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1226
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1
.end method

.method public cleanup()V
    .locals 1

    .line 640
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method public deleteEpisodeFromHistory(Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 1466
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->rowID()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1468
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "episode_history"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->rowID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1469
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to delete record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->friendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public deleteFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 711
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->rowID()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 713
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting feed record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "feeds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->rowID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 716
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to delete feed record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0x3c

    .line 718
    invoke-static {v0, p1, v1}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalFeedChange(ILmobi/beyondpod/rsscore/Feed;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteSmartPlayEntry(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 1568
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->rowID()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1570
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "smartplaylist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->rowID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1571
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to delete record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public deleteTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 882
    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->rowID()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting task record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "scheduled_tasks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->rowID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 886
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to delete scheduled task record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deleteTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1020
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->rowID()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting track record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tracks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->rowID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1025
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to delete track record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deleteTrackedChange(Lmobi/beyondpod/sync/TrackedChangeBase;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 1347
    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->rowID()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "change_history"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->rowID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1350
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to delete record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->friendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public endTransaction()V
    .locals 2

    .line 1713
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1718
    :catch_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "failed to endTransaction"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getMaxPlaylistID()I
    .locals 12

    const/4 v0, 0x0

    .line 1641
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "smartplaylist"

    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " DESC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1642
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1643
    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadSmartPlaylistEntry(Landroid/database/Cursor;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getPlaylistId()I

    move-result v0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1651
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1647
    :goto_0
    :try_start_2
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read smart playlist! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 1651
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    return v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public loadCategories()V
    .locals 11

    const/4 v0, 0x0

    .line 1288
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "categories"

    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CATEGORIES:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CATEGORIES:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1292
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    invoke-static {v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->deserialize(Ljava/lang/String;)V

    .line 1294
    invoke-static {v9}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->setIsModified(Z)V

    goto :goto_0

    .line 1298
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "Load of categories failed - unable to move to the first record!"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_1

    .line 1307
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 1303
    :goto_1
    :try_start_2
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load categories database record"

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 1307
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1309
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 1307
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1309
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public loadEpisodeHistory(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 1478
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 1482
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "episode_history"

    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_EPISODES_HISTORY:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1483
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1484
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1487
    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadEpisodeHistoryEntry(Landroid/database/Cursor;)Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1489
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1499
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1501
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

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

    .line 1495
    :goto_1
    :try_start_2
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load episode history database records"

    invoke-static {v1, v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 1499
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1501
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    .line 1499
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1501
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public loadFeeds(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 9

    .line 724
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 729
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "feeds"

    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_FEEDS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 730
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 731
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 734
    invoke-direct {p0, v1, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadFeed(Landroid/database/Cursor;Lmobi/beyondpod/rsscore/Feed;)V

    .line 735
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 744
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 746
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

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

    .line 740
    :goto_1
    :try_start_2
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load feed database records"

    invoke-static {v1, v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 744
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 746
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    .line 744
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 746
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method public loadSmartPlaylist(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;",
            ">;)V"
        }
    .end annotation

    .line 1580
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1584
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "smartplaylist"

    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1585
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1586
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1589
    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadSmartPlaylistEntry(Landroid/database/Cursor;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1591
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1601
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1603
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

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

    .line 1597
    :goto_1
    :try_start_2
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load smart playlist database records"

    invoke-static {v1, v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 1601
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1603
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    .line 1601
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1603
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public loadTasks()V
    .locals 10

    const/4 v0, 0x0

    .line 895
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->clearAllTasks()V

    .line 897
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "scheduled_tasks"

    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SCHEDULER:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 899
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 900
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 903
    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadTask(Landroid/database/Cursor;)V

    .line 904
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 913
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 915
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 909
    :goto_1
    :try_start_2
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load track database records"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 913
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 915
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    .line 913
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 915
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public loadTrackShowNotes(Ljava/lang/Long;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 1146
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tracks"

    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_TRACK_SHOW_NOTES:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1148
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 1156
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    .line 1156
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 1152
    :goto_0
    :try_start_2
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load track show notes from database"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 1156
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1158
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    :goto_2
    if-eqz v0, :cond_3

    .line 1156
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1158
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public loadTrackedChanges(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;)V"
        }
    .end annotation

    .line 1359
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1363
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "change_history"

    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CHANGE_HISTORY:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1364
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1365
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1368
    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadTrackedChange(Landroid/database/Cursor;)Lmobi/beyondpod/sync/TrackedChangeBase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1370
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1380
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

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

    .line 1376
    :goto_1
    :try_start_2
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load change history database records"

    invoke-static {v1, v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 1380
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1382
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    .line 1380
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1382
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public loadTracks()Lmobi/beyondpod/rsscore/TrackDictionary;
    .locals 11

    .line 1033
    new-instance v0, Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackDictionary;-><init>()V

    const/4 v1, 0x0

    .line 1038
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tracks"

    sget-object v4, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_TRACKS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1040
    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Database has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " track records."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1044
    invoke-direct {p0, v2, v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadTrack(Landroid/database/Cursor;Lmobi/beyondpod/rsscore/TrackDictionary;)V

    .line 1045
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 1054
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 1050
    :goto_1
    :try_start_2
    sget-object v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load track database records"

    invoke-static {v3, v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 1054
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1056
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    .line 1054
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1056
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public saveCategories()V
    .locals 14

    .line 1235
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1237
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->serialize()Ljava/lang/String;

    move-result-object v1

    .line 1239
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CATEGORIES:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    sget-object v2, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving category record! Serialized Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1248
    :try_start_0
    iget-object v6, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "categories"

    sget-object v8, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CATEGORIES:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CATEGORIES:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1252
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    move-wide v7, v1

    :goto_0
    if-eqz v6, :cond_2

    .line 1261
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v7

    move-object v6, v5

    .line 1257
    :goto_1
    :try_start_2
    sget-object v8, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v9, "Unable to read categories database record"

    invoke-static {v8, v9, v7}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_1

    .line 1261
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v7, v1

    :cond_2
    :goto_2
    cmp-long v6, v7, v1

    if-nez v6, :cond_3

    .line 1270
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "categories"

    invoke-virtual {v1, v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_4

    .line 1272
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "!!! failed to insert category record!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1276
    :cond_3
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "categories"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v0, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 1277
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "!!! failed to update category record!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    :cond_4
    :goto_3
    invoke-static {v4}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->setIsModified(Z)V

    return-void

    :catchall_1
    move-exception v0

    move-object v5, v6

    :goto_4
    if-eqz v5, :cond_5

    .line 1261
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1263
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public saveEpisodeHistory(Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;)V
    .locals 8

    .line 1435
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1436
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_EPISODES_HISTORY:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->episodeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_EPISODES_HISTORY:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->feedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_EPISODES_HISTORY:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->timeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1439
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_EPISODES_HISTORY:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->entryType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1440
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->rowID()Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 1442
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "episode_history"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 1445
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->initRowID(Ljava/lang/Long;)V

    .line 1446
    invoke-virtual {p1, v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->setIsModified(Z)V

    goto :goto_0

    .line 1449
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to insert episode history record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->friendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1453
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "episode_history"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->rowID()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1455
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to update episode history record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->friendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    :cond_2
    invoke-virtual {p1, v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->setIsModified(Z)V

    :goto_0
    return-void
.end method

.method public saveFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 7

    .line 649
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "feedId"

    .line 651
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path"

    .line 652
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getRawFeedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    .line 653
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "autodelete"

    .line 654
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getAllowAutoTrackDeletions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "view"

    .line 655
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPreferredEnclosureIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    .line 656
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "url"

    .line 657
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imageUrl"

    .line 658
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hasUnread"

    .line 659
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "pubDate"

    .line 660
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "srvPubDate"

    .line 661
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLastServerModifiedDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLastServerModifiedDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "category"

    .line 662
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "custDownload"

    .line 663
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "forceUniqueNames"

    .line 664
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getForceUniqueTrackNames()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "savePlayedPosition"

    .line 665
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getShouldRememberPlayedPosition()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "fingerprintType"

    .line 666
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getItemFingerprintAlgorithm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "leftTruncateLongTrackNames"

    .line 667
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLeftTruncateLongTrackNames()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "forceItemSort"

    .line 668
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getForceFeedItemSort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "lastItemId"

    .line 669
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLastItemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "trackSort"

    .line 670
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getTrackSortOrder()I

    move-result v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v4

    if-eq v2, v4, :cond_2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getTrackSortOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "feedPlayer"

    .line 672
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPlayer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "username"

    .line 673
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxDownload"

    .line 674
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "maxGReaderItems"

    .line 675
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumGReaderItemsToGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "maxTracks"

    .line 678
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 679
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v2

    .line 678
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    .line 676
    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "maxTrackAge"

    .line 680
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v4

    if-eq v2, v4, :cond_4

    .line 681
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v4

    .line 680
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "audioSettings"

    .line 683
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving feed record for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->rowID()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 689
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "feeds"

    invoke-virtual {v1, v4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_5

    .line 692
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->initRowID(Ljava/lang/Long;)V

    const/16 v0, 0x3c

    .line 693
    invoke-static {v2, p1, v0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalFeedChange(ILmobi/beyondpod/rsscore/Feed;I)V

    goto :goto_5

    .line 697
    :cond_5
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to insert feed record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 702
    :cond_6
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "feeds"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->rowID()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 703
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to update feed record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    const/4 v0, 0x0

    .line 706
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setIsModified(Z)V

    return-void
.end method

.method public saveSmartPlaylistEntry(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)V
    .locals 8

    .line 1531
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1532
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getPlaylistId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1533
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getPlaylistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getSortID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1536
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getNumTracks()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1538
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getContentType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1539
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getEpisodeSortOrder()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1540
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_SMART_PLAYLIST:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->rowID()Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 1544
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "smartplaylist"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 1547
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->initRowID(Ljava/lang/Long;)V

    .line 1548
    invoke-virtual {p1, v3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    goto :goto_2

    .line 1551
    :cond_2
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to insert smart playlist record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1555
    :cond_3
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "smartplaylist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->rowID()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 1557
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to update smart playlist record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1561
    :cond_4
    invoke-virtual {p1, v3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    :goto_2
    return-void
.end method

.method public saveTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 6

    .line 844
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "taskId"

    .line 846
    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "active"

    .line 847
    iget-boolean v2, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "minBattLevel"

    .line 848
    iget v2, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->minBatteryLevelRequired:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "startTime"

    .line 849
    iget-object v2, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/Event;->getUnadjustedStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "recPeriod"

    .line 850
    iget-object v2, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/Event;->getRecurrencePeriod()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "recInterval"

    .line 851
    iget-object v2, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/Event;->getRecurrenceInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "operationId"

    .line 852
    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/OperationBase;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    .line 853
    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/OperationBase;->serializedData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving task record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->rowID()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 859
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "scheduled_tasks"

    invoke-virtual {v1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 862
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->initRowID(Ljava/lang/Long;)V

    goto :goto_0

    .line 866
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to insert task record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 871
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "scheduled_tasks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->rowID()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 872
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to update task record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 875
    invoke-virtual {p1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->setIsModified(Z)V

    .line 876
    iget-object v1, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/schedulercore/Event;->setIsModified(Z)V

    .line 877
    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/schedulercore/OperationBase;->setIsModified(Z)V

    return-void
.end method

.method public saveTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 7

    .line 965
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "path"

    .line 967
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "totalTime"

    .line 968
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "playedTime"

    .line 969
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "name"

    .line 970
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contentType"

    .line 971
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "played"

    .line 972
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "protocol"

    .line 973
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    .line 974
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "downloadSize"

    .line 975
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "downloadPortion"

    .line 976
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "pubDate"

    .line 977
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "orgRssItemID"

    .line 978
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parentFeedID"

    .line 979
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imagePath"

    .line 980
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    .line 981
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "postTitle"

    .line 982
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPostTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "postUrl"

    .line 983
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPostUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "locked"

    .line 984
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getShowNotes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "showNotes"

    .line 988
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getShowNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :cond_1
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving track record for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->rowID()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 994
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "tracks"

    invoke-virtual {v1, v4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    .line 997
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->initRowID(Ljava/lang/Long;)V

    .line 998
    iput-boolean v2, p1, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    goto :goto_1

    .line 1002
    :cond_2
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to insert track record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1007
    :cond_3
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "tracks"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->rowID()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 1008
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to update track record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 1013
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setIsModified(Z)V

    return-void
.end method

.method public saveTrackedChange(Lmobi/beyondpod/sync/TrackedChangeBase;)V
    .locals 8

    .line 1316
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1317
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CHANGE_HISTORY:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1318
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CHANGE_HISTORY:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->changeType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CHANGE_HISTORY:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->syncStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    sget-object v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->COLS_CHANGE_HISTORY:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->blob()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->rowID()Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 1323
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "change_history"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 1326
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->initRowID(Ljava/lang/Long;)V

    .line 1327
    invoke-virtual {p1, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->setIsModified(Z)V

    goto :goto_0

    .line 1330
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to isert change history record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->friendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1334
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "change_history"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->rowID()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1336
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! failed to update change history record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->friendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1340
    :cond_2
    invoke-virtual {p1, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->setIsModified(Z)V

    :goto_0
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .line 1701
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1705
    :catch_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "failed to setTransactionSuccessful"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
