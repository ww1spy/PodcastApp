.class public Lmobi/beyondpod/downloadengine/VersionCheckManager;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;,
        Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VersionCheckManager"

.field public static VersionInfo:Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

.field private static _VersionCheckAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

.field private static _VersionInfoFile:Ljava/io/File;

.field private static _VersionInfoTmpFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->versionInfoPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionInfoFile:Ljava/io/File;

    .line 48
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->versionInfoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionInfoTmpFile:Ljava/io/File;

    .line 50
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;->VersionInfoFile:Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->loadVersionFromInfoFile(Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;)Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->VersionInfo:Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;)Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;
    .locals 0

    .line 38
    invoke-static {p0}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->loadVersionFromInfoFile(Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;)Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/io/File;
    .locals 1

    .line 38
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionInfoTmpFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    .line 38
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionInfoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkForNewVersionIfNeeded()V
    .locals 5

    .line 104
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionInfoTmpFile:Ljava/io/File;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->getFileAgeInHours(Ljava/io/File;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionCheckAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_1

    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionCheckAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->downloadVersionInfo()V

    .line 118
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->dispatch()V

    return-void
.end method

.method private static constructAutoVersionCheckURL()Landroid/net/Uri;
    .locals 3

    .line 198
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->currentLicenseKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "am"

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const-string v0, "az"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "bt"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "pp"

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const-string v0, "xp"

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    const-string v0, "tr"

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const-string v0, "ot"

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const-string v0, "uk"

    goto :goto_0

    :cond_7
    const-string v0, "xx"

    .line 219
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicWebSite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/VersionCheck.aspx?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&lt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&k="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->appKind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static downloadVersionInfo()V
    .locals 4

    .line 135
    :try_start_0
    new-instance v0, Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-static {}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->constructAutoVersionCheckURL()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionInfoTmpFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmobi/beyondpod/downloadengine/DownloadAgent;-><init>(Landroid/net/Uri;Ljava/io/File;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;)V

    sput-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionCheckAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    .line 137
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionCheckAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    new-instance v1, Lmobi/beyondpod/downloadengine/VersionCheckManager$1;

    invoke-direct {v1}, Lmobi/beyondpod/downloadengine/VersionCheckManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setDownloadListener(Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;)V

    .line 183
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionCheckAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setAllowResume(Z)V

    .line 185
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->TAG:Ljava/lang/String;

    const-string v1, "Checking for New Version"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionCheckAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->startDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    sget-object v1, Lmobi/beyondpod/downloadengine/VersionCheckManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to check for new version! reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static getFileAgeInHours(Ljava/io/File;)Ljava/lang/Double;
    .locals 7

    .line 123
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-direct {v0, v5, v6}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalHours()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadVersionFromInfoFile(Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;)Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;
    .locals 4

    .line 59
    new-instance v0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;-><init>()V

    .line 61
    sget-object v1, Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;->VersionInfoTempFile:Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;

    if-ne p0, v1, :cond_0

    sget-object p0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionInfoTmpFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    sget-object p0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionInfoFile:Ljava/io/File;

    .line 63
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 69
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, p0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x6

    if-le p0, v1, :cond_2

    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 83
    new-instance p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    invoke-direct {p0, v2}, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;-><init>(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    :cond_4
    if-eqz v3, :cond_5

    .line 93
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 88
    :goto_3
    :try_start_2
    sget-object v2, Lmobi/beyondpod/downloadengine/VersionCheckManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse version file!"

    invoke-static {v2, v3, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    :cond_5
    :goto_4
    return-object v0

    :goto_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    :cond_6
    throw p0
.end method

.method public static versionInfoAgeInHours()Ljava/lang/Double;
    .locals 1

    .line 54
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->_VersionInfoFile:Ljava/io/File;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->getFileAgeInHours(Ljava/io/File;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
