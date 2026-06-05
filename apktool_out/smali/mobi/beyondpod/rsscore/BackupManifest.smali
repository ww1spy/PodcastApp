.class public Lmobi/beyondpod/rsscore/BackupManifest;
.super Ljava/lang/Object;
.source "BackupManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;
    }
.end annotation


# static fields
.field static final ManifestName:Ljava/lang/String; = "BackupManifest.txt"

.field private static final TAG:Ljava/lang/String; = "BackupManifest"

.field private static final _ManifestDeviceLabel:Ljava/lang/String; = "[device]"

.field private static final _ManifestFileNamesLabel:Ljava/lang/String; = "[FileNames]"

.field private static final _ManifestFileNumLabel:Ljava/lang/String; = "[FileNum]"

.field private static final _ManifestFilesSizesLabel:Ljava/lang/String; = "[FileSizes]"

.field private static final _ManifestFilesTotalSizeLabel:Ljava/lang/String; = "[totalSize]"

.field private static final _ManifestRootPathLabel:Ljava/lang/String; = "[RootPath]"

.field private static final _ManifestTimeLabel:Ljava/lang/String; = "[timeStamp]"

.field private static final _ManifestVersionLabel:Ljava/lang/String; = "[Version]"


# instance fields
.field private _manifestFile:Ljava/io/File;

.field public backupTime:Ljava/util/Date;

.field public device:Ljava/lang/String;

.field public fileCount:I

.field private files:[Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;

.field public repositoryRootPath:Ljava/lang/String;

.field public totalFileSize:J

.field public versionCode:Lmobi/beyondpod/rsscore/helpers/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lmobi/beyondpod/rsscore/BackupManifest;->_manifestFile:Ljava/io/File;

    const-string v0, "N/A"

    .line 40
    iput-object v0, p0, Lmobi/beyondpod/rsscore/BackupManifest;->device:Ljava/lang/String;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lmobi/beyondpod/rsscore/BackupManifest;->_manifestFile:Ljava/io/File;

    const-string v0, "N/A"

    .line 40
    iput-object v0, p0, Lmobi/beyondpod/rsscore/BackupManifest;->device:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 68
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/rsscore/BackupManifest;->_manifestFile:Ljava/io/File;

    .line 72
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 75
    sget-object v1, Lmobi/beyondpod/rsscore/BackupManifest;->TAG:Ljava/lang/String;

    const-string v2, "Reading backup manifest..."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p1}, Ljava/io/FileReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 77
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    if-gtz v1, :cond_1

    .line 81
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to read anything from manifest file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 85
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 87
    new-array v1, v0, [Ljava/lang/String;

    .line 88
    new-array v2, v0, [J

    const-string v3, "[\\r\\n]+"

    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    .line 91
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_f

    .line 93
    aget-object v4, p1, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_2

    goto/16 :goto_4

    .line 98
    :cond_2
    aget-object v4, p1, v1

    const-string v5, "[Version]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    new-instance v4, Lmobi/beyondpod/rsscore/helpers/Version;

    add-int/lit8 v1, v1, 0x1

    aget-object v5, p1, v1

    invoke-direct {v4, v5}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lmobi/beyondpod/rsscore/BackupManifest;->versionCode:Lmobi/beyondpod/rsscore/helpers/Version;

    goto/16 :goto_4

    .line 102
    :cond_3
    aget-object v4, p1, v1

    const-string v5, "[timeStamp]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    aget-object v4, p1, v1

    const-string v5, "[TimeStamp]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_3

    .line 107
    :cond_4
    aget-object v4, p1, v1

    const-string v5, "[RootPath]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 109
    aget-object v4, p1, v1

    iput-object v4, p0, Lmobi/beyondpod/rsscore/BackupManifest;->repositoryRootPath:Ljava/lang/String;

    goto/16 :goto_4

    .line 111
    :cond_5
    aget-object v4, p1, v1

    const-string v5, "[FileNum]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 113
    new-instance v4, Ljava/util/Scanner;

    add-int/lit8 v1, v1, 0x1

    aget-object v5, p1, v1

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    iput v4, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    goto/16 :goto_4

    .line 116
    :cond_6
    aget-object v4, p1, v1

    const-string v5, "[FileNames]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 118
    aget-object v2, p1, v1

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 120
    :cond_7
    aget-object v4, p1, v1

    const-string v5, "[FileSizes]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    aget-object v4, p1, v1

    const-string v5, "[TotalSize]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    .line 143
    :cond_8
    aget-object v4, p1, v1

    const-string v5, "[totalSize]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 145
    new-instance v4, Ljava/util/Scanner;

    add-int/lit8 v1, v1, 0x1

    aget-object v5, p1, v1

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmobi/beyondpod/rsscore/BackupManifest;->totalFileSize:J

    goto :goto_4

    .line 148
    :cond_9
    aget-object v4, p1, v1

    const-string v5, "[device]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    aget-object v4, p1, v1

    const-string v5, "[Device]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 150
    aget-object v4, p1, v1

    iput-object v4, p0, Lmobi/beyondpod/rsscore/BackupManifest;->device:Ljava/lang/String;

    goto :goto_4

    .line 122
    :cond_b
    :goto_1
    new-instance v4, Ljava/util/Scanner;

    add-int/lit8 v1, v1, 0x1

    aget-object v5, p1, v1

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 123
    iget v5, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    if-gtz v5, :cond_c

    goto :goto_5

    .line 128
    :cond_c
    iget v3, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    new-array v3, v3, [J

    move v5, v0

    .line 130
    :goto_2
    iget v6, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    if-ge v5, v6, :cond_e

    .line 132
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLong()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 134
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 104
    aget-object v4, p1, v1

    sget-object v5, Lmobi/beyondpod/rsscore/helpers/DateTime;->RFC822DATEFORMATUTC:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTimeWithFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lmobi/beyondpod/rsscore/BackupManifest;->backupTime:Ljava/util/Date;

    :cond_e
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 154
    :cond_f
    :goto_5
    iget p1, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    if-nez p1, :cond_10

    .line 155
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Manifest is empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_10
    iget p1, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    array-length v1, v2

    if-ne p1, v1, :cond_13

    iget p1, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    array-length v1, v3

    if-eq p1, v1, :cond_11

    goto :goto_7

    .line 160
    :cond_11
    :goto_6
    iget p1, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    if-eq v0, p1, :cond_12

    .line 162
    iget p1, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    new-array p1, p1, [Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;

    iput-object p1, p0, Lmobi/beyondpod/rsscore/BackupManifest;->files:[Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;

    .line 163
    iget-object p1, p0, Lmobi/beyondpod/rsscore/BackupManifest;->files:[Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;

    new-instance v1, Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;

    aget-object v4, v2, v0

    aget-wide v5, v3, v0

    invoke-direct {v1, v4, v5, v6}, Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;-><init>(Ljava/lang/String;J)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-void

    .line 158
    :cond_13
    :goto_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid or corrupted manifest!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_14
    :goto_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Manifest file is missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static createManifest(Ljava/lang/String;[Ljava/io/File;)Ljava/io/File;
    .locals 12

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 179
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v2, "BackupManifest.txt"

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lmobi/beyondpod/rsscore/BackupManifest;->TAG:Ljava/lang/String;

    const-string v2, "Deleting pre-existing manifest file."

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 187
    :try_start_0
    sget-object v0, Lmobi/beyondpod/rsscore/BackupManifest;->TAG:Ljava/lang/String;

    const-string v2, "Creating new manifest file."

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    .line 201
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 202
    sget-object v2, Lmobi/beyondpod/rsscore/BackupManifest;->TAG:Ljava/lang/String;

    const-string v3, "Begin writing to manifest file."

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersionAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "[Version]"

    .line 206
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "[timeStamp]"

    .line 211
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toRFC822UTCString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "[RootPath]"

    .line 217
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v4, 0x0

    .line 225
    array-length v6, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, p1, v7

    .line 227
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long v10, v4, v8

    add-int/lit8 v7, v7, 0x1

    move-wide v4, v10

    goto :goto_1

    :cond_2
    const-string v6, "[FileNum]"

    .line 232
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "[totalSize]"

    .line 235
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "[FileNames]"

    .line 238
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ","

    .line 239
    invoke-static {p1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "[FileSizes]"

    .line 241
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ","

    .line 242
    invoke-static {p1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "[device]"

    .line 245
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 250
    sget-object p1, Lmobi/beyondpod/rsscore/BackupManifest;->TAG:Ljava/lang/String;

    const-string v0, "Finished writing to manifest file."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v1
.end method


# virtual methods
.method public getManifestFile()Ljava/io/File;
    .locals 1

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/rsscore/BackupManifest;->_manifestFile:Ljava/io/File;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Backup Manifest data: Backup of version: %s from %s (%s files, total size %s bytes)"

    const/4 v1, 0x4

    .line 262
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/BackupManifest;->versionCode:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 263
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/Version;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmobi/beyondpod/rsscore/BackupManifest;->backupTime:Ljava/util/Date;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lmobi/beyondpod/rsscore/BackupManifest;->fileCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lmobi/beyondpod/rsscore/BackupManifest;->totalFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 262
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
