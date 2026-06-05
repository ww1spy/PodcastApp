.class public Lmobi/beyondpod/rsscore/BackupRestore;
.super Ljava/lang/Object;
.source "BackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;
    }
.end annotation


# static fields
.field private static BuffSize:I = 0x400

.field public static final PREFERENCE_KEY:Ljava/lang/String; = "BackupRestore"

.field public static final RESULT_BACKUP_FAILED:I = -0x1

.field public static final RESULT_BACKUP_RESTORE_ALREADY_IN_PROGRESS:I = -0x4

.field public static final RESULT_BACKUP_SUCCESS:I = 0x0

.field public static final RESULT_RESTORE_FAILED:I = -0x3

.field public static final RESULT_RESTORE_PREPARE_FAILED:I = -0x2

.field public static final RESULT_RESTORE_PREPARE_SUCCESS:I = 0x1

.field public static final RESULT_RESTORE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BackupRestore"

.field private static _BPBackupFilter:Ljava/io/FileFilter; = null

.field private static _Worker:Ljava/lang/Thread; = null

.field private static final _ZipFileExtension:Ljava/lang/String; = ".bpbak"

.field private static _ZipFileName:Ljava/lang/String; = "BeyondPod_Backup_"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 643
    new-instance v0, Lmobi/beyondpod/rsscore/BackupRestore$7;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/BackupRestore$7;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_BPBackupFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 0

    .line 36
    invoke-static {p0}, Lmobi/beyondpod/rsscore/BackupRestore;->createZippedBackupInternal(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/BackupRestore;->unzipBackupInternal(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    return-void
.end method

.method static synthetic access$200(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/BackupRestore;->restoreBackup(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    return-void
.end method

.method static synthetic access$300(Ljava/io/File;)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lmobi/beyondpod/rsscore/BackupRestore;->clearDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static adjustHomePathIfNeeded(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 6

    .line 112
    invoke-static {p0}, Lmobi/beyondpod/rsscore/BackupRestore;->openXmlDocument(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "boolean"

    const-string v2, "preferLastSDCardRoot"

    .line 115
    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/BackupRestore;->getNamedValueElementFromXml(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 117
    sget-object v2, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEBUG: Reading value for node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    .line 119
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    sget-object v2, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEBUG: Got value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    sget-object v1, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v2, "DEBUG: User has path preference in settings."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string"

    const-string v2, "lastSDCardRootPath"

    .line 127
    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/BackupRestore;->getNamedValueElementFromXml(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    sget-object v2, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEBUG: Reading value for node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 132
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEBUG: Got value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    sget-object v2, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "DEBUG: Path does not exist. Attempting to adjust path..."

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getOptionalStorageFullDataPath()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 140
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEBUG: Found likely replacement path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 142
    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/BackupRestore;->writeXmlDocument(Lorg/w3c/dom/Document;Ljava/io/File;)V

    const/4 p0, 0x1

    .line 143
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    sget-object p0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v0, "DEBUG: No matching value node found for lastSDCardRootPath."

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    sget-object p0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v0, "DEBUG: No matching value node found for preferLastSDCardRoot."

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 157
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static cleanSnapshotFolder()V
    .locals 3

    .line 314
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 323
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmobi/beyondpod/rsscore/BackupRestore$4;

    invoke-direct {v2, v0}, Lmobi/beyondpod/rsscore/BackupRestore$4;-><init>(Ljava/io/File;)V

    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    .line 332
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static clearDirectory(Ljava/io/File;)Z
    .locals 10

    .line 616
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_BPBackupFilter:Ljava/io/FileFilter;

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 621
    array-length v2, v0

    if-ge v2, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 627
    array-length v3, v0

    move v6, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v7, v0, v4

    .line 629
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_2

    .line 631
    sget-object v6, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 638
    :cond_3
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v4, "Cleaned %s of %s files from %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v0, 0x2

    aput-object p0, v7, v0

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_4
    :goto_2
    return v1
.end method

.method public static createZippedBackup(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 2

    .line 162
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const/4 v0, -0x4

    const-string v1, ""

    .line 165
    invoke-interface {p0, v0, v1}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmobi/beyondpod/rsscore/BackupRestore$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/BackupRestore$1;-><init>(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    sget-object p0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    .line 178
    sget-object p0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static createZippedBackupInternal(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 7

    .line 183
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v1, "Starting Backup"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {v0}, Lmobi/beyondpod/rsscore/BackupRestore;->clearDirectory(Ljava/io/File;)Z

    .line 191
    sget-object v1, Lmobi/beyondpod/rsscore/BackupRestore;->_BPBackupFilter:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 192
    array-length v1, v1

    if-lez v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to empty backup snapshot folder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-interface {p0, v2, v0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    return-void

    .line 201
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->createRepositorySnapshot()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "failed to create backup snapshot!"

    .line 203
    invoke-interface {p0, v2, v0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    return-void

    .line 208
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 211
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup folder does not exist! Creating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 215
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create the backup folder "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    return-void

    .line 222
    :cond_3
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 223
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lmobi/beyondpod/rsscore/BackupRestore;->_ZipFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x1

    .line 228
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".bpbak"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v5

    goto :goto_0

    .line 231
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bpbak"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving backup to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :try_start_0
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/BackupRestore;->zipBackupFiles(Ljava/io/File;Ljava/lang/String;)Lmobi/beyondpod/rsscore/BackupManifest;

    move-result-object v3

    const/4 v4, 0x0

    .line 237
    invoke-interface {p0, v4, v1, v3}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationCompleted(ILjava/lang/String;Lmobi/beyondpod/rsscore/BackupManifest;)V

    .line 238
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v4, "Backup Completed!"

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_1
    invoke-static {v0}, Lmobi/beyondpod/rsscore/BackupRestore;->clearDirectory(Ljava/io/File;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 243
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 247
    :cond_5
    sget-object v1, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup failed! reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 252
    :goto_3
    invoke-static {v0}, Lmobi/beyondpod/rsscore/BackupRestore;->clearDirectory(Ljava/io/File;)Z

    throw p0
.end method

.method public static enumerateRestoreZipFiles()[Ljava/io/File;
    .locals 3

    .line 567
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 570
    new-instance v1, Lmobi/beyondpod/rsscore/BackupRestore$5;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/BackupRestore$5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 580
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 585
    :cond_1
    new-instance v1, Lmobi/beyondpod/rsscore/BackupRestore$6;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/BackupRestore$6;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public static extractRestoreFileNames([Ljava/io/File;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 599
    sget-object v2, Lmobi/beyondpod/rsscore/BackupRestore;->_ZipFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".bpbak"

    .line 600
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 602
    array-length v4, p0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, p0, v5

    .line 604
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 605
    sget-object v7, Lmobi/beyondpod/rsscore/BackupRestore;->_ZipFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getNamedValueElementFromXml(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 81
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG: Looking up node for value named: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    .line 85
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 86
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "name"

    .line 87
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    sget-object p0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DEBUG: Found matching node for element: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static openXmlDocument(Ljava/io/File;)Lorg/w3c/dom/Document;
    .locals 4

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG: Opening backup settings file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 70
    sget-object v1, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to open XML file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Error: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static restoreBackup(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 6

    .line 337
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting Restore of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/io/File;

    const-string v1, "BackupManifest.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, -0x3

    .line 342
    :try_start_0
    new-instance v2, Lmobi/beyondpod/rsscore/BackupManifest;

    invoke-direct {v2, v0}, Lmobi/beyondpod/rsscore/BackupManifest;-><init>(Ljava/io/File;)V

    .line 343
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/BackupManifest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->restoreFromRepositorySnapshot()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "failed to copy snapshot files"

    .line 347
    invoke-interface {p1, v1, v0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_0
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v4, "Restore complete!"

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v4, "Patching feed paths..."

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->patchDatabaseAfterRestore()V

    .line 355
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v4, "Patching complete!"

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0, v2}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationCompleted(ILjava/lang/String;Lmobi/beyondpod/rsscore/BackupManifest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 362
    :try_start_1
    sget-object v2, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore failed! reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :goto_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/BackupRestore;->clearDirectory(Ljava/io/File;)Z

    return-void

    :goto_1
    invoke-static {p0}, Lmobi/beyondpod/rsscore/BackupRestore;->clearDirectory(Ljava/io/File;)Z

    throw p1
.end method

.method public static restoreBackup(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 3

    .line 285
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const/4 v0, -0x4

    const-string v1, ""

    .line 288
    invoke-interface {p0, v0, v1}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 292
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, -0x3

    const-string v1, "Invalid snapshot folder"

    .line 296
    invoke-interface {p0, v0, v1}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 300
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmobi/beyondpod/rsscore/BackupRestore$3;

    invoke-direct {v2, v0, p0}, Lmobi/beyondpod/rsscore/BackupRestore$3;-><init>(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    sget-object p0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    .line 309
    sget-object p0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static unzipBackup(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 2

    .line 258
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, -0x4

    const-string v0, ""

    .line 261
    invoke-interface {p1, p0, v0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p0, :cond_3

    .line 265
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 272
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmobi/beyondpod/rsscore/BackupRestore$2;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/rsscore/BackupRestore$2;-><init>(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    sget-object p0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    .line 280
    sget-object p0, Lmobi/beyondpod/rsscore/BackupRestore;->_Worker:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    const/4 p0, -0x3

    const-string v0, "Invalid restore file"

    .line 268
    invoke-interface {p1, p0, v0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static unzipBackupFiles(Ljava/io/File;Ljava/io/File;)Lmobi/beyondpod/rsscore/BackupManifest;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Backup file is missing!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 477
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Snapshot Folder does not exist!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    .line 488
    sget v1, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    new-array v1, v1, [B

    .line 496
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const-string p0, "BackupManifest.txt"

    .line 497
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 500
    new-instance v3, Ljava/io/File;

    const-string v4, "BackupManifest.txt"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 501
    :try_start_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget v5, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 502
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    sget v5, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    invoke-direct {v4, p0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 503
    :goto_0
    sget p0, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p0

    const/4 v6, -0x1

    if-eq p0, v6, :cond_2

    .line 505
    invoke-virtual {v0, v1, v5, p0}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 509
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 511
    new-instance p0, Lmobi/beyondpod/rsscore/BackupManifest;

    invoke-direct {p0, v3}, Lmobi/beyondpod/rsscore/BackupManifest;-><init>(Ljava/io/File;)V

    .line 519
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 522
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BackupManifest.txt"

    .line 523
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 528
    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 530
    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget v9, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    invoke-direct {v3, v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 531
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    sget v9, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    invoke-direct {v7, v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 532
    :goto_2
    sget v4, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    invoke-virtual {v7, v1, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 534
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    .line 537
    :cond_4
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 538
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 540
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Settings.xml.autobak"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 542
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v4, "DEBUG: Checking to see if lastSDCardRootPath needs adjustment..."

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {v8}, Lmobi/beyondpod/rsscore/BackupRestore;->adjustHomePathIfNeeded(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    .line 544
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v4, "DEBUG: No path adjustment performed."

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move-object v3, v8

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 549
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    move-object v8, v3

    goto :goto_3

    .line 515
    :cond_7
    :try_start_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid backup file! Unable to find the backup manifest."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    move-object v8, v0

    :goto_3
    if-eqz v8, :cond_8

    .line 557
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_8
    throw p0
.end method

.method private static unzipBackupInternal(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 4

    .line 373
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing restore of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    .line 379
    invoke-static {v0}, Lmobi/beyondpod/rsscore/BackupRestore;->clearDirectory(Ljava/io/File;)Z

    .line 380
    sget-object v1, Lmobi/beyondpod/rsscore/BackupRestore;->_BPBackupFilter:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 381
    array-length v1, v1

    if-lez v1, :cond_1

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to empty backup snapshot folder "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 383
    invoke-interface {p1, v2, p0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    return-void

    .line 388
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create backup snapshot folder "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 390
    invoke-interface {p1, v2, p0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    return-void

    .line 397
    :cond_1
    :try_start_0
    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/BackupRestore;->unzipBackupFiles(Ljava/io/File;Ljava/io/File;)Lmobi/beyondpod/rsscore/BackupManifest;

    move-result-object p0

    .line 398
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    const-string v1, "Prepare complete!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, ""

    .line 399
    invoke-interface {p1, v0, v1, p0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationCompleted(ILjava/lang/String;Lmobi/beyondpod/rsscore/BackupManifest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 403
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare failed! reason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;->operationFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static writeXmlDocument(Lorg/w3c/dom/Document;Ljava/io/File;)V
    .locals 3

    .line 99
    :try_start_0
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG: Writing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 102
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 103
    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 104
    invoke-virtual {v0, v1, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    sget-object p1, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG: Error writing document: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static zipBackupFiles(Ljava/io/File;Ljava/lang/String;)Lmobi/beyondpod/rsscore/BackupManifest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 410
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destination backup file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 415
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/BackupRestore;->_BPBackupFilter:Ljava/io/FileFilter;

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 416
    array-length v1, v0

    if-nez v1, :cond_1

    .line 418
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There is nothing to compress!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 421
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/BackupManifest;->createManifest(Ljava/lang/String;[Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    .line 424
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to create backup manifest!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 427
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 428
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 433
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 437
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 438
    new-instance p1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 442
    sget v0, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    new-array v0, v0, [B

    .line 445
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 447
    sget-object v3, Lmobi/beyondpod/rsscore/BackupRestore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compressing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget v5, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 453
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 458
    :goto_1
    sget v2, Lmobi/beyondpod/rsscore/BackupRestore;->BuffSize:I

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    .line 459
    invoke-virtual {p1, v0, v4, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 461
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 464
    :cond_4
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 466
    new-instance p1, Lmobi/beyondpod/rsscore/BackupManifest;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/BackupManifest;-><init>(Ljava/io/File;)V

    return-object p1
.end method
