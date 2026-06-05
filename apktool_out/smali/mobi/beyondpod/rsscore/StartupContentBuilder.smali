.class public Lmobi/beyondpod/rsscore/StartupContentBuilder;
.super Ljava/lang/Object;
.source "StartupContentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartupContentBuilder"

.field private static _RepositoryBackupInProgress:Z = false

.field private static _RepositoryBackupRunnable:Ljava/lang/Runnable; = null

.field private static _RepositorySnapshotInProgress:Z = false


# instance fields
.field private _DemoContent:[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

.field private _PermanentContent:[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lmobi/beyondpod/rsscore/StartupContentBuilder$1;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/StartupContentBuilder$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositoryBackupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    new-instance v1, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    sget v2, Lmobi/beyondpod/R$raw;->seed_trackstate:I

    new-instance v3, Ljava/io/File;

    .line 82
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->trackStateBackupPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;-><init>(ILjava/io/File;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    sget v2, Lmobi/beyondpod/R$raw;->nomedia:I

    new-instance v3, Ljava/io/File;

    .line 83
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssImageCachePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;-><init>(ILjava/io/File;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_PermanentContent:[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    .line 85
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getDemoContent()[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_DemoContent:[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 48
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->backupRepositoriesInternal()V

    return-void
.end method

.method public static addRemoveNoMediaFile(Z)V
    .locals 3

    .line 874
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 877
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 878
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 883
    sget p0, Lmobi/beyondpod/R$raw;->nomedia:I

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->copyResToFile(ILjava/io/File;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static backupRepositoriesAsync()V
    .locals 2

    .line 210
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositoryBackupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositoryBackupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static backupRepositoriesInternal()V
    .locals 8

    .line 223
    sget-boolean v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositoryBackupInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 226
    sput-boolean v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositoryBackupInProgress:Z

    .line 230
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 231
    new-instance v2, Lmobi/beyondpod/rsscore/repository/XMLRepositoryStorage;

    invoke-direct {v2}, Lmobi/beyondpod/rsscore/repository/XMLRepositoryStorage;-><init>()V

    .line 232
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->trackStateBackupPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/repository/XMLRepositoryStorage;->backupRepositoryToFile(Ljava/lang/String;)V

    .line 233
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created long term XML feed Repository backup in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create long term XML feed repository backup!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->currentLicenseKind()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 245
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isTagUnlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 250
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->databasePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created long term feed Repository database backup in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_3
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create long term feed repository database backup!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 262
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "failed to create long term feed repository database backup!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 267
    :cond_4
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "DB backup is skipped in Lite versions!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 276
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryBackupFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created long term Item State History backup in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 283
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create long term Item State History backup!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :cond_5
    :goto_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 293
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryFilePath()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryBackupFilePath()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created long term Download History backup in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 301
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create long term Download History backup!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    :cond_6
    :goto_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 311
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistBackupFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 312
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created long term Smart Playlist backup in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 318
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create long term Smart Playlist backup!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    :cond_7
    :goto_4
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 328
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistBackupFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created long term Playlist backup in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 334
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create long term Playlist backup!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    const/4 v0, 0x0

    .line 338
    sput-boolean v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositoryBackupInProgress:Z

    return-void
.end method

.method public static backupRepositoriesSync()V
    .locals 0

    .line 216
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->backupRepositoriesInternal()V

    return-void
.end method

.method public static createRepositorySnapshot()Z
    .locals 22

    .line 408
    sget-boolean v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositorySnapshotInProgress:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 411
    sput-boolean v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositorySnapshotInProgress:Z

    .line 414
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    mul-long/2addr v4, v6

    .line 418
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->settingsFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->databasePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    new-instance v10, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x6

    .line 426
    new-array v11, v11, [Ljava/io/File;

    aput-object v3, v11, v2

    aput-object v6, v11, v1

    const/4 v12, 0x2

    aput-object v7, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    const/4 v12, 0x4

    aput-object v9, v11, v12

    const/4 v12, 0x5

    aput-object v10, v11, v12

    const-wide/16 v12, 0x0

    .line 436
    array-length v14, v11

    move-wide/from16 v20, v12

    move v12, v2

    move-wide/from16 v1, v20

    :goto_0
    if-ge v12, v14, :cond_1

    aget-object v13, v11, v12

    .line 437
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v18, v1, v16

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v1, v18

    goto :goto_0

    :cond_1
    cmp-long v11, v1, v4

    if-lez v11, :cond_2

    .line 441
    sget-object v3, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not enough free space for snapshot. Required: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes, Available: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 442
    sput-boolean v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositorySnapshotInProgress:Z

    return v1

    .line 448
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEBUG: Settings file path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->settingsFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 454
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->settingsBackupManagerFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 455
    sget-object v3, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created long term Settings snapshot in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v1

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 460
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create long term Settings snapshot!"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto :goto_2

    .line 466
    :cond_3
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->settingsFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x1

    .line 470
    :goto_2
    new-instance v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 475
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 476
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupManagerFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 478
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created long term feed Repository database snapshot in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v3

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 484
    :cond_4
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create long term feed repository database snapshot!"

    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 489
    sget-object v3, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v4, "failed to create long term feed repository database snapshot!"

    invoke-static {v3, v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 493
    :goto_3
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 497
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 498
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryBackupManagerFilePath()Ljava/lang/String;

    move-result-object v5

    .line 498
    invoke-static {v1, v5}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 500
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created long term Item State History snapshot in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v11, v6, v3

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 506
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create long term Item State History snapshot!"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 512
    :cond_5
    :goto_4
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 516
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 517
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryBackupManagerFilePath()Ljava/lang/String;

    move-result-object v5

    .line 517
    invoke-static {v1, v5}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 519
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created long term Download History snapshot in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v11, v6, v3

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 525
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create long term Download History snapshot!"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 531
    :cond_6
    :goto_5
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 535
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 536
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistBackupManagerFilePath()Ljava/lang/String;

    move-result-object v5

    .line 536
    invoke-static {v1, v5}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 538
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created long term Smart Playlist snapshot in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v3

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 544
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create long term Smart Playlist snapshot!"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 550
    :cond_7
    :goto_6
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 554
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 555
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistBackupManagerFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 556
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created long term Playlist snapshot in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v3

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 561
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create long term Playlist snapshot!"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    const/4 v15, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    move v15, v2

    const/4 v1, 0x0

    .line 566
    :goto_8
    sput-boolean v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_RepositorySnapshotInProgress:Z

    return v15
.end method

.method private static deleteAllSyncRecords(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    :try_start_0
    const-string v0, "change_history"

    const/4 v1, 0x0

    .line 739
    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 740
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sync records."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    sget-object p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v0, "Unable to delete sync records in restored database! Probably restoring an old database"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static deleteDatabase()Z
    .locals 3

    .line 859
    new-instance v0, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 860
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 861
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->databasePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "BeyondPod database file was sucessfully deleted!"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to delete BeyondPod database!"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public static loadSeedFeedImages()[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;
    .locals 2

    .line 131
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->loadSeedFeedImagesForLocale(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 134
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->loadSeedFeedImagesForLocale(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    return-object v0
.end method

.method private static loadSeedFeedImagesForFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;",
            ">;"
        }
    .end annotation

    const-string v0, "include__"

    .line 169
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 170
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 177
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    .line 181
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 183
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    .line 184
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 186
    :cond_0
    new-instance v7, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssImageCachePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".jpg"

    const-string v12, ".img"

    .line 187
    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 186
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-static {v0}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->loadSeedFeedImagesForFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_2
    return-object v2
.end method

.method private static loadSeedFeedImagesForLocale(Ljava/util/Locale;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;",
            ">;"
        }
    .end annotation

    const-string v0, "seed_feed_images"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v1}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->loadSeedFeedImagesForFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v1}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->loadSeedFeedImagesForFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 149
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 150
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded demo content from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Locale: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded demo content from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v0}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->loadSeedFeedImagesForFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 157
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 158
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No demo content for locale: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method public static patchDatabaseAfterRestore()V
    .locals 5

    const/4 v0, 0x0

    .line 716
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupFilePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    :try_start_1
    invoke-static {v1}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->patchFeedPaths(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 721
    invoke-static {v1}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->patchTrackPaths(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 722
    invoke-static {v1}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->deleteAllSyncRecords(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 726
    :goto_0
    :try_start_2
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Unable to patch restored database!"

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 731
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v0
.end method

.method private static patchFeedPaths(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const-string v0, "_id"

    const-string v1, "feedId"

    const-string v2, "path"

    .line 805
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 811
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 813
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "feeds"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    .line 814
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 815
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 816
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    .line 819
    :try_start_2
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x2

    .line 820
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-static {v9, v10}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 821
    invoke-static {v9}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->patchRootPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 823
    invoke-static {v9, v10}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "path"

    .line 825
    invoke-virtual {v2, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "feeds"

    .line 826
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v10, v2, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 828
    sget-object v7, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to patch feed record: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 836
    :cond_1
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move v1, v6

    goto :goto_2

    .line 839
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 847
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_3

    .line 848
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_3

    .line 850
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_3
    sget-object p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Patched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v3, v0

    move v6, v1

    move-object v0, v2

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    .line 843
    :goto_2
    :try_start_3
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v4, "Unable to patch restored database feed records"

    invoke-static {v2, v4, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 847
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_4

    .line 848
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_4

    .line 850
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_4
    sget-object p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Patched "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, " feed records."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    move v6, v1

    .line 847
    :goto_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_5

    .line 848
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_5

    .line 850
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_5
    sget-object p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Patched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " feed records."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static patchTrackPaths(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15

    const-string v0, "_id"

    const-string v1, "path"

    .line 751
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 757
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 759
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "tracks"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 760
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 761
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 762
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    .line 765
    :try_start_2
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 766
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-static {v9, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 767
    invoke-static {v9}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->patchRootPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 769
    invoke-static {v9, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "path"

    .line 771
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "tracks"

    .line 772
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v11, v10, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 774
    sget-object v6, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to patch track record: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 782
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move v1, v5

    goto :goto_2

    .line 785
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 793
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_3

    .line 794
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_3

    .line 796
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 799
    :cond_3
    sget-object p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Patched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v2

    move v5, v1

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    .line 789
    :goto_2
    :try_start_3
    sget-object v3, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v4, "Unable to patch restored database track records"

    invoke-static {v3, v4, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 793
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_4

    .line 794
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_4

    .line 796
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 799
    :cond_4
    sget-object p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Patched "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, " track records."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    move v5, v1

    .line 793
    :goto_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v2, :cond_5

    .line 794
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_5

    .line 796
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 799
    :cond_5
    sget-object p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Patched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " track records."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static restoreFromRepositorySnapshot()Z
    .locals 4

    .line 587
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 591
    :try_start_0
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupManagerFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->databaseBackupFilePath()Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 594
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Restored Database from snapshot!"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 609
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->settingsBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    :try_start_1
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copying \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->settingsBackupManagerFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->settingsFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->settingsBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->settingsFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 618
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Restored Settings from snapshot!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 622
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to restore Settings from snapshot!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 627
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Unable to restore Settings from snapshot! Snapshot file does not exist!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    :try_start_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 637
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Restored Item State History from snapshot!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 641
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to restore Item State History from snapshot!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 646
    :cond_1
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Unable to restore Item State History from snapshot! Snapshot file does not exist!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    :try_start_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryFilePath()Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 657
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Restored Download History from snapshot!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 661
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to restore Download History from snapshot!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 666
    :cond_2
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Unable to restore Download History from snapshot! Snapshot file does not exist!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :goto_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    :try_start_4
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistFilePath()Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 677
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Restored Smart Playlist from snapshot!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 681
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to restore Smart Playlist from snapshot!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 686
    :cond_3
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Unable to restore Smart Playlist from snapshot! Snapshot file does not exist!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :goto_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    :try_start_5
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistBackupManagerFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 696
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Restored Playlist from snapshot!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 700
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to restore Playlist from snapshot!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 705
    :cond_4
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Unable to restore Playlist from snapshot! Snapshot file does not exist!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v0, 0x1

    return v0

    :catch_5
    move-exception v0

    .line 598
    sget-object v2, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v3, "Unable to restore Database from snapshot!"

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 604
    :cond_5
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to restore Database from snapshot! Snapshot file does not exist!"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static restoreRepositoriesIfNeeded(Z)V
    .locals 3

    .line 344
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryBackupFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryBackupFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 350
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Restored long term Item State History backup!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to restore long term Item State History backup!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    :cond_0
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryBackupFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :try_start_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryBackupFilePath()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryFilePath()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 367
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Restored long term Download History backup!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 371
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to restore long term Download History backup!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    :cond_1
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistBackupFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    :try_start_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistBackupFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 382
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Restored long term Smart Playlist backup!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 386
    sget-object v1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v2, "Unable to restore long term Smart Playlist backup!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    .line 391
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistBackupFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 392
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 396
    :try_start_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistBackupFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 397
    sget-object p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v0, "Restored long term Playlist backup!"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 401
    sget-object v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Unable to restore long term Playlist backup!"

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public checkAndCreateStartupContent(Z)V
    .locals 5

    .line 90
    invoke-static {p1}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->restoreRepositoriesIfNeeded(Z)V

    .line 92
    iget-object p1, p0, Lmobi/beyondpod/rsscore/StartupContentBuilder;->_PermanentContent:[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    const/4 v0, 0x0

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 94
    iget-object v4, v3, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;->destinationFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    iget v4, v3, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;->sourceResourceID:I

    iget-object v3, v3, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;->destinationFile:Ljava/io/File;

    invoke-static {v4, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->copyResToFile(ILjava/io/File;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->googleSyncInitialized()Z

    move-result p1

    if-nez p1, :cond_2

    .line 100
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->purgeAllGoogleReaderItems()V

    const/4 p1, 0x1

    .line 101
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setGoogleSyncInitialized(Z)V

    .line 104
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->areSettingsInitialized()Z

    move-result p1

    if-nez p1, :cond_3

    .line 106
    sget-object p1, Lmobi/beyondpod/rsscore/StartupContentBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Initializing User Default Settings..."

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->configureDefaults()V

    .line 111
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->sharePodcasts()Z

    move-result p1

    if-nez p1, :cond_4

    .line 112
    invoke-static {v0}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->addRemoveNoMediaFile(Z)V

    :cond_4
    return-void
.end method
