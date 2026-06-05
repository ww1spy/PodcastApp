.class final Lmobi/beyondpod/downloadengine/VersionCheckManager$1;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/downloadengine/VersionCheckManager;->downloadVersionInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Lmobi/beyondpod/downloadengine/DownloadAgent;Z)V
    .locals 1

    .line 145
    :try_start_0
    sget-object p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;->VersionInfoTempFile:Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;

    invoke-static {p1}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->access$000(Lmobi/beyondpod/downloadengine/VersionCheckManager$CheckLocation;)Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    move-result-object p1

    .line 147
    iget-object p2, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/helpers/Version;->isZero()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/helpers/Version;->isZero()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lmobi/beyondpod/downloadengine/VersionCheckManager;->VersionInfo:Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 149
    invoke-static {}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->access$100()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->access$200()Ljava/io/File;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->setNextNotificationTime(Ljava/util/Date;)V

    .line 152
    sput-object p1, Lmobi/beyondpod/downloadengine/VersionCheckManager;->VersionInfo:Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-static {}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unable to rename the Version Info temp file."

    invoke-static {p2, v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V
    .locals 2

    .line 164
    invoke-static {}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to check for new version! reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadProgress(Lmobi/beyondpod/downloadengine/DownloadAgent;JJ)V
    .locals 0

    return-void
.end method

.method public onDownloadStarted(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 0

    return-void
.end method

.method public onDownloadTerminated(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 0

    return-void
.end method
