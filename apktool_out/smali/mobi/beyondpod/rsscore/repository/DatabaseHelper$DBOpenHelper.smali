.class Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/repository/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOpenHelper"
.end annotation


# static fields
.field private static final DB_CREATE_CATEGORIES:Ljava/lang/String; = "CREATE TABLE categories (_id INTEGER PRIMARY KEY, categories TEXT );"

.field private static final DB_CREATE_CHANGE_HISTORY:Ljava/lang/String; = "CREATE TABLE change_history ( _id INTEGER PRIMARY KEY, timestamp INTEGER, changeType INTEGER, syncStatus INTEGER, blob TEXT);"

.field private static final DB_CREATE_EPISODE_HISTORY:Ljava/lang/String; = "CREATE TABLE episode_history ( _id INTEGER PRIMARY KEY, episodeUrl TEXT, feedUrl TEXT, timestamp INTEGER, entryType INTEGER);"

.field private static final DB_CREATE_FEEDS:Ljava/lang/String; = "CREATE TABLE feeds (_id INTEGER PRIMARY KEY, feedId TEXT , path TEXT, name TEXT, autodelete INTEGER, view INTEGER,type INTEGER, url TEXT, imageUrl TEXT, hasUnread INTEGER, pubDate INTEGER,srvPubDate INTEGER, category TEXT, custDownload INTEGER, forceUniqueNames INTEGER,leftTruncateLongTrackNames INTEGER, forceItemSort INTEGER, lastItemId TEXT,trackSort INTEGER, feedPlayer INTEGER, username TEXT, maxDownload INTEGER,maxGReaderItems INTEGER, maxTracks INTEGER, maxTrackAge INTEGER, savePlayedPosition INTEGER, fingerprintType INTEGER, audioSettings TEXT);"

.field private static final DB_CREATE_SCHEDULER:Ljava/lang/String; = "CREATE TABLE scheduled_tasks ( _id INTEGER PRIMARY KEY, taskId TEXT, active INTEGER, minBattLevel INTEGER, startTime INTEGER,recPeriod INTEGER, recInterval INTEGER, operationId TEXT, state TEXT );"

.field private static final DB_CREATE_SMART_PLAYLIST:Ljava/lang/String; = "CREATE TABLE smartplaylist (_id INTEGER PRIMARY KEY, playlistId INTEGER, playlistName TEXT, feedId TEXT, sortOrder INTEGER, categoryId TEXT, numEpisodes INTEGER, episodeFilter INTEGER, playbackType INTEGER, config STRING);"

.field private static final DB_CREATE_TRACKS:Ljava/lang/String; = "CREATE TABLE tracks (_id INTEGER PRIMARY KEY, path TEXT, totalTime INTEGER, playedTime INTEGER, name TEXT, contentType TEXT, played INTEGER,protocol TEXT, url TEXT, downloadSize INTEGER, downloadPortion INTEGER, pubDate INTEGER,orgFeedItemID TEXT, orgRssItemID TEXT, parentFeedID TEXT, imagePath TEXT, description TEXT, postTitle TEXT, postUrl TEXT, locked INTEGER, showNotes TEXT );"

.field private static final UPGRADE_ADD_FEED_AUDIO_SETTINGS_COLUMN:Ljava/lang/String; = "ALTER TABLE feeds ADD COLUMN audioSettings TEXT"

.field private static final UPGRADE_ADD_FEED_FINGERPRINT_COLUMN:Ljava/lang/String; = "ALTER TABLE feeds ADD COLUMN fingerprintType INTEGER"

.field private static final UPGRADE_ADD_ORG_RSS_ITEM_ID_COLUMN:Ljava/lang/String; = "ALTER TABLE tracks ADD COLUMN orgRssItemID TEXT"

.field private static final UPGRADE_ADD_PARENT_FEED_ID_COLUMN:Ljava/lang/String; = "ALTER TABLE tracks ADD COLUMN parentFeedID TEXT"

.field private static final UPGRADE_ADD_SAVE_PLAYED_POSITION_COLUMN:Ljava/lang/String; = "ALTER TABLE feeds ADD COLUMN savePlayedPosition INTEGER"

.field private static final UPGRADE_ADD_TRACK_DESCRIPTION_COLUMN:Ljava/lang/String; = "ALTER TABLE tracks ADD COLUMN description TEXT"

.field private static final UPGRADE_ADD_TRACK_IMAGE_PATH_COLUMN:Ljava/lang/String; = "ALTER TABLE tracks ADD COLUMN imagePath TEXT"

.field private static final UPGRADE_ADD_TRACK_LOCKED_COLUMN:Ljava/lang/String; = "ALTER TABLE tracks ADD COLUMN locked INTEGER"

.field private static final UPGRADE_ADD_TRACK_POSTTITLE_COLUMN:Ljava/lang/String; = "ALTER TABLE tracks ADD COLUMN postTitle TEXT"

.field private static final UPGRADE_ADD_TRACK_POSTURL_COLUMN:Ljava/lang/String; = "ALTER TABLE tracks ADD COLUMN postUrl TEXT"

.field private static final UPGRADE_ADD_TRACK_SHOW_NOTES_COLUMN:Ljava/lang/String; = "ALTER TABLE tracks ADD COLUMN showNotes TEXT"


# instance fields
.field private _ForceSchemaCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "beyondpod.db"

    const/4 v1, 0x0

    const/16 v2, 0xa

    .line 219
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->_ForceSchemaCheck:Z

    return-void
.end method

.method private forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 279
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Executing Schema Check..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tracks"

    const-string v1, "orgRssItemID"

    .line 280
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE tracks ADD COLUMN orgRssItemID TEXT"

    .line 282
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted orgRssItemID column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "tracks"

    const-string v1, "parentFeedID"

    .line 286
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ALTER TABLE tracks ADD COLUMN parentFeedID TEXT"

    .line 288
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted parentFeedID column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "feeds"

    const-string v1, "savePlayedPosition"

    .line 292
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALTER TABLE feeds ADD COLUMN savePlayedPosition INTEGER"

    .line 294
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted savePlayedPosition column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "tracks"

    const-string v1, "imagePath"

    .line 298
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ALTER TABLE tracks ADD COLUMN imagePath TEXT"

    .line 300
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted imagePath column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "tracks"

    const-string v1, "description"

    .line 304
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ALTER TABLE tracks ADD COLUMN description TEXT"

    .line 306
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted description column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "tracks"

    const-string v1, "postTitle"

    .line 310
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ALTER TABLE tracks ADD COLUMN postTitle TEXT"

    .line 312
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted postTitle column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "tracks"

    const-string v1, "postUrl"

    .line 316
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ALTER TABLE tracks ADD COLUMN postUrl TEXT"

    .line 318
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted postUrl column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "tracks"

    const-string v1, "locked"

    .line 322
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ALTER TABLE tracks ADD COLUMN locked INTEGER"

    .line 324
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted locked column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "feeds"

    const-string v1, "fingerprintType"

    .line 328
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ALTER TABLE feeds ADD COLUMN fingerprintType INTEGER"

    .line 330
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted fingerprintType column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v0, "feeds"

    const-string v1, "audioSettings"

    .line 334
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ALTER TABLE feeds ADD COLUMN audioSettings TEXT"

    .line 336
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted audioSettings column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "tracks"

    const-string v1, "showNotes"

    .line 340
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ALTER TABLE tracks ADD COLUMN showNotes TEXT"

    .line 342
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserted showNotes column"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v0, "change_history"

    .line 346
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$100()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CREATE TABLE change_history ( _id INTEGER PRIMARY KEY, timestamp INTEGER, changeType INTEGER, syncStatus INTEGER, blob TEXT);"

    .line 348
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Created CHANGE_HISTORY table"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v0, "episode_history"

    .line 351
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$200()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "CREATE TABLE episode_history ( _id INTEGER PRIMARY KEY, episodeUrl TEXT, feedUrl TEXT, timestamp INTEGER, entryType INTEGER);"

    .line 353
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Created EPISODE_HISTORY table"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v0, "smartplaylist"

    .line 356
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$300()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "CREATE TABLE smartplaylist (_id INTEGER PRIMARY KEY, playlistId INTEGER, playlistName TEXT, feedId TEXT, sortOrder INTEGER, categoryId TEXT, numEpisodes INTEGER, episodeFilter INTEGER, playbackType INTEGER, config STRING);"

    .line 358
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Created SMARTPLAYLIST table"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_d
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Schema Check Completed!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to Force Shchema Check!"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private hasField(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA table_info("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 527
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 529
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move p2, v1

    .line 535
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    :cond_2
    return p2
.end method

.method private onUpgradeInternal(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .line 392
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-ne p3, v0, :cond_0

    :try_start_0
    const-string v1, "ALTER TABLE tracks ADD COLUMN orgRssItemID TEXT"

    .line 398
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 402
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to upgrade from v 1 -> v2"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v1, 0x3

    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    :try_start_1
    const-string v0, "ALTER TABLE tracks ADD COLUMN parentFeedID TEXT"

    .line 410
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE feeds ADD COLUMN savePlayedPosition INTEGER"

    .line 411
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 415
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to upgrade database from v1 -> v2! Forcing Schema Check..."

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    :goto_1
    const/4 v0, 0x4

    if-ne p2, v1, :cond_2

    if-ne p3, v0, :cond_2

    :try_start_2
    const-string v1, "ALTER TABLE tracks ADD COLUMN imagePath TEXT"

    .line 425
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE tracks ADD COLUMN description TEXT"

    .line 426
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE tracks ADD COLUMN postTitle TEXT"

    .line 427
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE tracks ADD COLUMN postUrl TEXT"

    .line 428
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 432
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to upgrade database from v3 -> v4! Forcing Schema Check..."

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    :goto_2
    const/4 v1, 0x5

    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    :try_start_3
    const-string v0, "ALTER TABLE tracks ADD COLUMN locked INTEGER"

    .line 442
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 446
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to upgrade database from v4 -> v5! Forcing Schema Check..."

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    :goto_3
    const/4 v0, 0x6

    if-ne p2, v1, :cond_4

    if-ne p3, v0, :cond_4

    :try_start_4
    const-string v1, "ALTER TABLE feeds ADD COLUMN fingerprintType INTEGER"

    .line 456
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 460
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to upgrade database from v5 -> v6! Forcing Schema Check..."

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    :goto_4
    const/4 v1, 0x7

    if-ne p2, v0, :cond_5

    if-ne p3, v1, :cond_5

    :try_start_5
    const-string v0, "CREATE TABLE change_history ( _id INTEGER PRIMARY KEY, timestamp INTEGER, changeType INTEGER, syncStatus INTEGER, blob TEXT);"

    .line 470
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 474
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to upgrade database from v6 -> v7! Forcing Schema Check..."

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    :goto_5
    const/16 v0, 0x8

    if-ne p2, v1, :cond_6

    if-ne p3, v0, :cond_6

    :try_start_6
    const-string v1, "CREATE TABLE episode_history ( _id INTEGER PRIMARY KEY, episodeUrl TEXT, feedUrl TEXT, timestamp INTEGER, entryType INTEGER);"

    .line 484
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    .line 488
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to upgrade database from v7 -> v8! Forcing Schema Check..."

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    :goto_6
    const/16 v1, 0x9

    if-ne p2, v0, :cond_7

    if-ne p3, v1, :cond_7

    :try_start_7
    const-string v0, "CREATE TABLE smartplaylist (_id INTEGER PRIMARY KEY, playlistId INTEGER, playlistName TEXT, feedId TEXT, sortOrder INTEGER, categoryId TEXT, numEpisodes INTEGER, episodeFilter INTEGER, playbackType INTEGER, config STRING);"

    .line 497
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 501
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to upgrade database from v8 -> v9! Forcing Schema Check..."

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_7
    :goto_7
    if-ne p2, v1, :cond_8

    const/16 p2, 0xa

    if-ne p3, p2, :cond_8

    :try_start_8
    const-string p2, "ALTER TABLE feeds ADD COLUMN audioSettings TEXT"

    .line 510
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE tracks ADD COLUMN showNotes TEXT"

    .line 511
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception p2

    .line 515
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Unable to upgrade database from v9 -> v10! Forcing Schema Check..."

    invoke-static {p3, v0, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8
    :goto_8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const-string v0, "CREATE TABLE feeds (_id INTEGER PRIMARY KEY, feedId TEXT , path TEXT, name TEXT, autodelete INTEGER, view INTEGER,type INTEGER, url TEXT, imageUrl TEXT, hasUnread INTEGER, pubDate INTEGER,srvPubDate INTEGER, category TEXT, custDownload INTEGER, forceUniqueNames INTEGER,leftTruncateLongTrackNames INTEGER, forceItemSort INTEGER, lastItemId TEXT,trackSort INTEGER, feedPlayer INTEGER, username TEXT, maxDownload INTEGER,maxGReaderItems INTEGER, maxTracks INTEGER, maxTrackAge INTEGER, savePlayedPosition INTEGER, fingerprintType INTEGER, audioSettings TEXT);"

    .line 227
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE tracks (_id INTEGER PRIMARY KEY, path TEXT, totalTime INTEGER, playedTime INTEGER, name TEXT, contentType TEXT, played INTEGER,protocol TEXT, url TEXT, downloadSize INTEGER, downloadPortion INTEGER, pubDate INTEGER,orgFeedItemID TEXT, orgRssItemID TEXT, parentFeedID TEXT, imagePath TEXT, description TEXT, postTitle TEXT, postUrl TEXT, locked INTEGER, showNotes TEXT );"

    .line 228
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE categories (_id INTEGER PRIMARY KEY, categories TEXT );"

    .line 229
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE scheduled_tasks ( _id INTEGER PRIMARY KEY, taskId TEXT, active INTEGER, minBattLevel INTEGER, startTime INTEGER,recPeriod INTEGER, recInterval INTEGER, operationId TEXT, state TEXT );"

    .line 230
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE change_history ( _id INTEGER PRIMARY KEY, timestamp INTEGER, changeType INTEGER, syncStatus INTEGER, blob TEXT);"

    .line 231
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE episode_history ( _id INTEGER PRIMARY KEY, episodeUrl TEXT, feedUrl TEXT, timestamp INTEGER, entryType INTEGER);"

    .line 232
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE smartplaylist (_id INTEGER PRIMARY KEY, playlistId INTEGER, playlistName TEXT, feedId TEXT, sortOrder INTEGER, categoryId TEXT, numEpisodes INTEGER, episodeFilter INTEGER, playbackType INTEGER, config STRING);"

    .line 233
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to create BeyondPod Database"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 387
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrading database from v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to v"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 246
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->_ForceSchemaCheck:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->forceSchemaCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 378
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper$DBOpenHelper;->onUpgradeInternal(Landroid/database/sqlite/SQLiteDatabase;II)V

    add-int/lit8 p2, v0, 0x1

    if-le p2, p3, :cond_0

    return-void

    :cond_0
    move v1, v0

    move v0, p2

    move p2, v1

    goto :goto_0
.end method
