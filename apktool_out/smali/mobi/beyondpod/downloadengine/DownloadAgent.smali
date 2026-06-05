.class public Lmobi/beyondpod/downloadengine/DownloadAgent;
.super Ljava/lang/Object;
.source "DownloadAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/downloadengine/DownloadAgent$WebException;,
        Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;,
        Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;
    }
.end annotation


# static fields
.field private static final BOTH_MOBILE_AND_WI_FI_DATA_CONNECTIONS_ARE_ALLOWED:Ljava/lang/String;

.field private static final INSUFFICIENT_DISK_SPACE:Ljava/lang/String;

.field private static final PODCAST_DOWNLOAD_MOBILE:Ljava/lang/String;

.field private static final PODCAST_WIFI_ALLOWED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DownloadAgent"

.field private static final UNABLE_TO_ESTABLISH_INTERNET_CONNECTION:Ljava/lang/String;

.field public static final UPDATE_TYPE_FeedUpdate:I = 0x0

.field public static final UPDATE_TYPE_PodcastDownload:I = 0x1


# instance fields
.field private _AllowMobileDataUse:Z

.field private _AllowRedirects:Z

.field private _AllowResume:Z

.field private _ContentDisposition:Ljava/lang/String;

.field private _Credentials:Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

.field private final _Destination:Ljava/io/File;

.field private _DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

.field private _DownloadThread:Ljava/lang/Thread;

.field private volatile _DownloadThreadIsDownloading:Z

.field private _ExpectedSize:Ljava/lang/Long;

.field private _HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

.field private _IgnoreIfNotModifiedSinceDate:Ljava/util/Date;

.field private _IgnoreIfSize:Ljava/lang/Long;

.field private _LastConnectionCheckTime:J

.field private _LastWakeLock:J

.field private _LocalStream:Ljava/io/FileOutputStream;

.field private _MustRequestReaderAuthToken:Z

.field private _RequestCookie:Ljava/lang/String;

.field private _ResourceContentLength:Ljava/lang/Long;

.field private _ResourceLastModified:Ljava/util/Date;

.field private _ResponseCookie:Ljava/lang/String;

.field private _Source:Ljava/net/URI;

.field private _Statistics:Lmobi/beyondpod/downloadengine/DownloadStatistics;

.field private _StopDownload:Z

.field private _UpdateType:I

.field private _UrlUserInfo:Ljava/lang/String;

.field private _UserAgent:Ljava/lang/String;

.field private _WebResponseStream:Ljava/io/InputStream;

.field private _extraHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget v0, Lmobi/beyondpod/R$string;->download_agent_mobile_connections_not_allowed:I

    .line 49
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->PODCAST_DOWNLOAD_MOBILE:Ljava/lang/String;

    .line 50
    sget v0, Lmobi/beyondpod/R$string;->download_agent_wifi_allowed:I

    .line 51
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->PODCAST_WIFI_ALLOWED:Ljava/lang/String;

    .line 52
    sget v0, Lmobi/beyondpod/R$string;->download_agent_both_mobile_and_wifi_data_connections_are_allowed:I

    .line 53
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->BOTH_MOBILE_AND_WI_FI_DATA_CONNECTIONS_ARE_ALLOWED:Ljava/lang/String;

    .line 54
    sget v0, Lmobi/beyondpod/R$string;->download_agent_unable_to_establish_internet_connection:I

    .line 55
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->UNABLE_TO_ESTABLISH_INTERNET_CONNECTION:Ljava/lang/String;

    .line 56
    sget v0, Lmobi/beyondpod/R$string;->download_agent_insufficient_disk_space_to_complete_the_download_required:I

    .line 57
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->INSUFFICIENT_DISK_SPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/io/File;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;)V
    .locals 4

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowResume:Z

    .line 69
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThread:Ljava/lang/Thread;

    .line 71
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_IgnoreIfNotModifiedSinceDate:Ljava/util/Date;

    .line 72
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_IgnoreIfSize:Ljava/lang/Long;

    .line 73
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ExpectedSize:Ljava/lang/Long;

    .line 74
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LocalStream:Ljava/io/FileOutputStream;

    .line 75
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    .line 76
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceLastModified:Ljava/util/Date;

    const-wide/16 v2, 0x0

    .line 79
    iput-wide v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LastWakeLock:J

    .line 80
    iput-wide v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LastConnectionCheckTime:J

    .line 84
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_WebResponseStream:Ljava/io/InputStream;

    .line 85
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Credentials:Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    .line 86
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UrlUserInfo:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UserAgent:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowRedirects:Z

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowMobileDataUse:Z

    .line 94
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_MustRequestReaderAuthToken:Z

    .line 95
    iput v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UpdateType:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_extraHeaders:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 159
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Download agent was created with an empty URL!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_0
    iput-object p2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeCreateURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UrlUserInfo:Ljava/lang/String;

    .line 168
    iget-object p2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UrlUserInfo:Ljava/lang/String;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 169
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeCreateURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    goto :goto_0

    .line 171
    :cond_1
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    .line 173
    :goto_0
    iput-object p3, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Credentials:Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    .line 175
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Credentials:Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    iget-object p2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-static {p1, p2}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient(Lmobi/beyondpod/rsscore/helpers/NetworkCredential;Ljava/net/URI;)Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    :cond_2
    return-void
.end method

.method private allowMobileDataConnectionsForThisSession()Z
    .locals 1

    .line 792
    iget-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowMobileDataUse:Z

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isCellularConnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->enclosureDownloadMustUseWiFi()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private doCleanup()V
    .locals 6

    .line 623
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const-string v0, "sync request"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 625
    :goto_0
    sget-object v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> Cleanup Started... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    const/4 v1, 0x0

    .line 628
    iput-boolean v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThreadIsDownloading:Z

    const/4 v1, 0x0

    .line 632
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LocalStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_1

    .line 636
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LocalStream:Ljava/io/FileOutputStream;

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 637
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LocalStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 641
    :cond_1
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    if-eqz v2, :cond_3

    .line 645
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/IHttpClient;->abort()V

    .line 649
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_WebResponseStream:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 653
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_WebResponseStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 658
    :cond_2
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    :cond_3
    :goto_1
    iput-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_WebResponseStream:Ljava/io/InputStream;

    .line 669
    iput-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LocalStream:Ljava/io/FileOutputStream;

    .line 670
    iput-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 663
    :try_start_1
    sget-object v3, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Unable to close the HTTP stream. reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "---"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 673
    :goto_2
    sget-object v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> Cleanup Complete..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 668
    :goto_3
    iput-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_WebResponseStream:Ljava/io/InputStream;

    .line 669
    iput-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LocalStream:Ljava/io/FileOutputStream;

    .line 670
    iput-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    throw v0
.end method

.method private enclosureDownloadMustUseWiFi()Z
    .locals 2

    .line 797
    iget v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UpdateType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 798
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->downloadEnclosuresOnWiFiOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowMobileDataUse:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasNetworkConnection()Z
    .locals 3

    .line 772
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->allowMobileDataConnectionsForThisSession()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 773
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->turnWiFiDuringUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->unableToEstablishWiFiConnectionInThisSession()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 777
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectedToNetwork()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 782
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->allowMobileDataConnectionsForThisSession()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 785
    :cond_2
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionWiFi()Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isUnAuthorizedMobileDataConnection()Z
    .locals 8

    .line 805
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->allowMobileDataConnectionsForThisSession()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 808
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 810
    iget-wide v4, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LastConnectionCheckTime:J

    sub-long v6, v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    return v1

    .line 813
    :cond_1
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v1, "Checking for unauthorized mobile data connection..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iput-wide v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LastConnectionCheckTime:J

    .line 815
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionCellular()Z

    move-result v0

    return v0
.end method

.method private onDownloadCompleted(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 713
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThreadIsDownloading:Z

    .line 715
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    invoke-interface {v0, p0, p1}, Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;->onDownloadCompleted(Lmobi/beyondpod/downloadengine/DownloadAgent;Z)V

    :cond_0
    return-void
.end method

.method private onDownloadError(Ljava/lang/Exception;)V
    .locals 3

    .line 678
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===> Download Agent Exception! reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_StopDownload:Z

    if-eqz v0, :cond_0

    .line 684
    sget-object p1, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v0, "===> Download Exception was received after manual download termination. Ignoring..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 689
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    iput-object p1, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    .line 691
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    invoke-interface {v0, p0, p1}, Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;->onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method private onDownloadProgress(JJ)V
    .locals 7

    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 698
    iget-wide v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LastWakeLock:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 700
    iput-wide v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LastWakeLock:J

    .line 701
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 704
    :cond_0
    iget-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_StopDownload:Z

    if-nez v0, :cond_2

    .line 706
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    if-eqz v0, :cond_2

    .line 707
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    move-wide v5, p1

    goto :goto_0

    :cond_1
    move-wide v5, p3

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    invoke-interface/range {v1 .. v6}, Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;->onDownloadProgress(Lmobi/beyondpod/downloadengine/DownloadAgent;JJ)V

    :cond_2
    return-void
.end method

.method private waitForInternetConnection()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;
        }
    .end annotation

    .line 725
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableQuickNetworkCheck()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->allowMobileDataConnectionsForThisSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->turnWiFiDuringUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionCellular()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 732
    sget-object v2, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v3, ">> Waiting for internet connection was ignored!"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 737
    :goto_0
    iget-boolean v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_StopDownload:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->hasNetworkConnection()Z

    move-result v2

    if-nez v2, :cond_1

    if-gt v0, v1, :cond_1

    .line 739
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 740
    sget-object v2, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> Waiting for internet connection ... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (Available Connections: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->extraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 742
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->nap(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le v0, v1, :cond_5

    const/4 v0, 0x1

    .line 749
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setUnableToEstablishWiFiConnectionInThisSession(Z)V

    .line 751
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->UNABLE_TO_ESTABLISH_INTERNET_CONNECTION:Ljava/lang/String;

    .line 753
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->allowMobileDataConnectionsForThisSession()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->BOTH_MOBILE_AND_WI_FI_DATA_CONNECTIONS_ARE_ALLOWED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 755
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->enclosureDownloadMustUseWiFi()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->PODCAST_WIFI_ALLOWED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 758
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->PODCAST_DOWNLOAD_MOBILE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 760
    :goto_2
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->allowMobileDataConnectionsForThisSession()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 761
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->allowMobileDataConnectionsForThisSession()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v1

    .line 762
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectedToNetwork()Z

    move-result v1

    if-nez v1, :cond_5

    .line 763
    :cond_4
    new-instance v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;

    invoke-direct {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-void
.end method


# virtual methods
.method public addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_extraHeaders:Ljava/util/ArrayList;

    new-instance v1, Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;

    invoke-direct {v1, p1, p2}, Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowResume()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowResume:Z

    return v0
.end method

.method public destination()Ljava/io/File;
    .locals 1

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    return-object v0
.end method

.method public ignoreIfNotModifiedSinceDate()Ljava/util/Date;
    .locals 1

    .line 286
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_IgnoreIfNotModifiedSinceDate:Ljava/util/Date;

    return-object v0
.end method

.method public ignoreIfSize()Ljava/lang/Long;
    .locals 1

    .line 276
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_IgnoreIfSize:Ljava/lang/Long;

    return-object v0
.end method

.method public isDownloading()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThreadIsDownloading:Z

    return v0
.end method

.method public lastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 249
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceLastModified:Ljava/util/Date;

    return-object v0
.end method

.method public resourceContentLength()Ljava/lang/Long;
    .locals 1

    .line 241
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public responseCookie()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResponseCookie:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 302
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isRuntimeShuttingDown()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    sget-object v2, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARN: Not downloading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " since the runtime is shutting down."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v2, 0xa

    .line 307
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v2, 0x0

    .line 309
    iput-boolean v2, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_StopDownload:Z

    .line 310
    new-instance v3, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    invoke-direct {v3}, Lmobi/beyondpod/downloadengine/DownloadStatistics;-><init>()V

    iput-object v3, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Statistics:Lmobi/beyondpod/downloadengine/DownloadStatistics;

    const/4 v3, 0x1

    .line 316
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->allowResume()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 318
    iget-object v6, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    .line 321
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v8

    iput-wide v6, v8, Lmobi/beyondpod/downloadengine/DownloadStatistics;->startPosition:J

    .line 322
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v8

    iget-object v9, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lmobi/beyondpod/downloadengine/DownloadStatistics;->url:Ljava/lang/String;

    .line 323
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->ignoreIfSize()Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lmobi/beyondpod/downloadengine/DownloadStatistics;->skipSize:Ljava/lang/Long;

    .line 324
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->ignoreIfNotModifiedSinceDate()Ljava/util/Date;

    move-result-object v9

    iput-object v9, v8, Lmobi/beyondpod/downloadengine/DownloadStatistics;->skipDate:Ljava/util/Date;

    const/4 v8, 0x0

    .line 326
    iput-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceLastModified:Ljava/util/Date;

    .line 328
    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    if-eqz v8, :cond_2

    .line 329
    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    invoke-interface {v8, v1}, Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;->onDownloadStarted(Lmobi/beyondpod/downloadengine/DownloadAgent;)V

    .line 331
    :cond_2
    sget-object v8, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v8, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">> -------------- Download of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " started from pos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "! --------------"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->waitForInternetConnection()V

    .line 337
    iget-boolean v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_StopDownload:Z

    if-eqz v8, :cond_3

    .line 339
    sget-object v6, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v7, ">> Wait for Connection Canceled!"

    invoke-static {v6, v7}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v6

    iput-boolean v3, v6, Lmobi/beyondpod/downloadengine/DownloadStatistics;->terminated:Z

    .line 341
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->doCleanup()V

    return-void

    :cond_3
    long-to-int v6, v6

    .line 347
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpGet(Ljava/lang/String;)V

    .line 350
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Credentials:Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    if-nez v7, :cond_4

    .line 353
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UrlUserInfo:Ljava/lang/String;

    invoke-static {v7}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 354
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UrlUserInfo:Ljava/lang/String;

    invoke-static {v7, v8}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setUserInfoTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 357
    :cond_4
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UserAgent:Ljava/lang/String;

    invoke-static {v7, v8}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setUserAgentTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 358
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    const-string v8, "*/*"

    invoke-static {v7, v8}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 362
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_RequestCookie:Ljava/lang/String;

    invoke-static {v7}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 364
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_RequestCookie:Ljava/lang/String;

    invoke-static {v7, v8}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setRequestCookie(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 367
    :cond_5
    iget-boolean v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_MustRequestReaderAuthToken:Z

    if-eqz v7, :cond_7

    .line 369
    sget-object v7, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v8, "Requesting Aggregator authentication..."

    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->blockingGetAuthToken()Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-static {v7}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "feedly.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 374
    sget-object v6, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v7, "Not logged in!"

    invoke-static {v6, v7}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v6

    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    iput-object v7, v6, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    .line 376
    new-instance v6, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    invoke-direct {v6}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;-><init>()V

    throw v6

    .line 379
    :cond_6
    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-static {v8, v7}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAuthorizationTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 380
    sget-object v7, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v8, "Reader authentication granted!"

    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_7
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_extraHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 385
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_extraHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;

    .line 386
    iget-object v9, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    iget-object v10, v8, Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;->name:Ljava/lang/String;

    iget-object v8, v8, Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;->value:Ljava/lang/String;

    invoke-interface {v9, v10, v8}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 390
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->ignoreIfNotModifiedSinceDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 392
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->ignoreIfNotModifiedSinceDate()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setIfModifiedSinceTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/util/Date;)V

    :cond_9
    const/16 v7, 0xce

    const/16 v8, 0xc8

    if-lez v6, :cond_a

    .line 397
    iget-object v9, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    iget-object v10, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ExpectedSize:Ljava/lang/Long;

    invoke-static {v9, v6, v10}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setRangeTo(Lmobi/beyondpod/downloadengine/IHttpClient;ILjava/lang/Long;)V

    move v9, v7

    goto :goto_2

    :cond_a
    move v9, v8

    .line 401
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    iput-object v11, v10, Lmobi/beyondpod/downloadengine/DownloadStatistics;->eventDate:Ljava/util/Date;

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 404
    sget-object v12, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v13, ">> Sending Request..."

    invoke-static {v12, v13}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 408
    iget-object v12, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v12}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 410
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 414
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v15

    sub-long v4, v12, v10

    iput-wide v4, v15, Lmobi/beyondpod/downloadengine/DownloadStatistics;->timeToFirstByte:J

    iput-wide v4, v14, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadTime:J

    .line 415
    sget-object v4, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">> Got Response... status Code: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    .line 416
    invoke-interface {v10}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    .line 417
    invoke-interface {v10}, Lmobi/beyondpod/downloadengine/IHttpClient;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "), expected code: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v4}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result v4

    if-eq v4, v9, :cond_12

    .line 423
    iget-boolean v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowRedirects:Z

    if-nez v5, :cond_b

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_12

    const/16 v5, 0x12e

    if-ne v4, v5, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v5, 0x1a0

    if-ne v4, v8, :cond_c

    if-eq v9, v7, :cond_d

    :cond_c
    if-ne v4, v5, :cond_f

    .line 431
    :cond_d
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 433
    sget-object v4, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v6, ">> Server does not support partial downloads! Deleting the partially downloaded file and Retrying..."

    .line 434
    invoke-static {v4, v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 439
    :cond_e
    new-instance v4, Lmobi/beyondpod/downloadengine/DownloadAgent$WebException;

    const-string v6, "Server does not support partial downloads!"

    invoke-direct {v4, v5, v6}, Lmobi/beyondpod/downloadengine/DownloadAgent$WebException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_f
    const/16 v5, 0x191

    if-ne v4, v5, :cond_11

    .line 442
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    .line 443
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "google.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    .line 444
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "feedly.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    .line 445
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "feedproxy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 447
    sget-object v4, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v5, ">> Request failed! failed to authenticate against aggregator service!"

    .line 448
    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v4, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    invoke-direct {v4}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;-><init>()V

    throw v4

    .line 453
    :cond_11
    sget-object v4, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> Request failed! status Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    .line 454
    invoke-interface {v6}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    .line 455
    invoke-interface {v6}, Lmobi/beyondpod/downloadengine/IHttpClient;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 453
    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v4, Lmobi/beyondpod/downloadengine/DownloadAgent$WebException;

    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v5}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result v5

    iget-object v6, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v6}, Lmobi/beyondpod/downloadengine/IHttpClient;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmobi/beyondpod/downloadengine/DownloadAgent$WebException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 460
    :cond_12
    :goto_3
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-static {v4}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->getResponseCookie(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResponseCookie:Ljava/lang/String;

    .line 461
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-static {v4}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->getContentDisposition(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ContentDisposition:Ljava/lang/String;

    .line 462
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-static {v4}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->getContentLengthFrom(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    .line 463
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-static {v4}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->getLastModifiedFrom(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceLastModified:Ljava/util/Date;

    .line 466
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    if-nez v4, :cond_13

    const-wide/16 v4, 0x0

    goto :goto_4

    :cond_13
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_4
    const-wide/32 v7, 0x1f4000

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 468
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v5}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->checkIfSpaceIsAvailable(Ljava/lang/String;J)Z

    move-result v7

    if-nez v7, :cond_15

    .line 470
    iget-object v6, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 471
    new-instance v4, Lmobi/beyondpod/rsscore/helpers/CoreHelper$InsuficientStorageSpaceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid download folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$InsuficientStorageSpaceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    :cond_14
    new-instance v6, Lmobi/beyondpod/rsscore/helpers/CoreHelper$InsuficientStorageSpaceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lmobi/beyondpod/downloadengine/DownloadAgent;->INSUFFICIENT_DISK_SPACE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$InsuficientStorageSpaceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 478
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v4

    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    iput-object v5, v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;->totalSize:Ljava/lang/Long;

    .line 479
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v4

    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceLastModified:Ljava/util/Date;

    iput-object v5, v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;->contentLastModifyDate:Ljava/util/Date;

    .line 480
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v4

    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResponseCookie:Ljava/lang/String;

    iput-object v5, v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;->responseCookie:Ljava/lang/String;

    .line 481
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v4

    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ContentDisposition:Ljava/lang/String;

    iput-object v5, v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;->contentDisposition:Ljava/lang/String;

    .line 482
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v4

    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-static {v5}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->getContentEncodingFrom(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;->contentEncoding:Ljava/lang/String;

    .line 483
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v4

    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v5}, Lmobi/beyondpod/downloadengine/IHttpClient;->finalDownloadUrl()Ljava/net/URI;

    move-result-object v5

    iput-object v5, v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    .line 485
    sget-object v4, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> Downloading Response Stream... "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ContentDisposition:Ljava/lang/String;

    if-eqz v7, :cond_16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " for file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ContentDisposition:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_16
    const-string v7, ""

    :goto_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v4}, Lmobi/beyondpod/downloadengine/IHttpClient;->getUnzippedContent()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_WebResponseStream:Ljava/io/InputStream;

    .line 495
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->allowResume()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v3

    goto :goto_6

    :cond_17
    move v4, v2

    .line 498
    :goto_6
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Destination:Ljava/io/File;

    invoke-direct {v5, v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LocalStream:Ljava/io/FileOutputStream;

    const v4, 0x8000

    .line 501
    new-array v4, v4, [B

    int-to-long v5, v6

    .line 506
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    if-nez v7, :cond_18

    const-wide/16 v7, 0x0

    goto :goto_7

    :cond_18
    iget-object v7, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_7
    add-long v9, v7, v5

    move-wide v7, v5

    .line 508
    :goto_8
    iget-boolean v11, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_StopDownload:Z

    if-nez v11, :cond_1e

    iget-object v11, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_WebResponseStream:Ljava/io/InputStream;

    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_1e

    .line 510
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 512
    sget-object v4, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">> The download thread was aborted when downloading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v4, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v4}, Lmobi/beyondpod/downloadengine/IHttpClient;->abort()V

    .line 514
    iput-boolean v3, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_StopDownload:Z

    goto/16 :goto_b

    :cond_19
    int-to-long v14, v11

    add-long v2, v5, v14

    .line 520
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->debugDownloadProgress()Z

    move-result v5

    if-eqz v5, :cond_1c

    sub-long v5, v2, v7

    const-wide/16 v14, 0x0

    cmp-long v18, v9, v14

    if-nez v18, :cond_1a

    const-wide/32 v14, 0xf4240

    goto :goto_9

    :cond_1a
    const-wide/16 v14, 0x64

    div-long v14, v9, v14

    :goto_9
    cmp-long v18, v5, v14

    if-lez v18, :cond_1c

    .line 523
    sget-object v5, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> Downloading content... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x0

    cmp-long v7, v9, v14

    if-nez v7, :cond_1b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v8, v2

    float-to-double v14, v8

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v16

    double-to-int v8, v14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " K"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_1b
    long-to-float v7, v2

    long-to-float v8, v9

    div-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v14

    double-to-int v7, v7

    .line 525
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " %"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 523
    invoke-static {v5, v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget v5, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->VIBRATE_SHORT:I

    invoke-static {v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->vibrate(I)V

    move-wide v7, v2

    .line 530
    :cond_1c
    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_LocalStream:Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 531
    invoke-direct {v1, v2, v3, v9, v10}, Lmobi/beyondpod/downloadengine/DownloadAgent;->onDownloadProgress(JJ)V

    .line 533
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->isUnAuthorizedMobileDataConnection()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 535
    sget-object v2, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v3, "!!!!!! Detected unauthorized mobile connection! Aborting Download!"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v2, Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;

    const-string v3, "Update or Download was interrupted because mobile connections are NOT allowed, and the WiFi connection has disconnected."

    invoke-direct {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    move-wide v5, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_8

    .line 541
    :cond_1e
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadedSize:Ljava/lang/Long;

    .line 543
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->doCleanup()V

    .line 545
    iget-boolean v2, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_StopDownload:Z

    if-nez v2, :cond_21

    .line 547
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v7, v3, v12

    iput-wide v7, v2, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadTime:J

    .line 550
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesReaderLoginFailure()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 552
    sget-object v2, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v3, ">> Download completed, but there was a Aggregator Authentication Error!"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v2, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    invoke-direct {v2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;-><init>()V

    invoke-direct {v1, v2}, Lmobi/beyondpod/downloadengine/DownloadAgent;->onDownloadError(Ljava/lang/Exception;)V

    goto/16 :goto_e

    .line 558
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lmobi/beyondpod/downloadengine/DownloadStatistics;->completedNormally:Z

    .line 559
    sget-object v2, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v3, ">> Download completed!"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v2, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    if-nez v2, :cond_20

    .line 565
    invoke-direct {v1, v5, v6, v5, v6}, Lmobi/beyondpod/downloadengine/DownloadAgent;->onDownloadProgress(JJ)V

    :cond_20
    const/4 v2, 0x1

    .line 567
    invoke-direct {v1, v2}, Lmobi/beyondpod/downloadengine/DownloadAgent;->onDownloadCompleted(Z)V

    goto/16 :goto_e

    .line 572
    :cond_21
    sget-object v2, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v3, ">> Download Canceled!"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lmobi/beyondpod/downloadengine/DownloadStatistics;->terminated:Z
    :try_end_0
    .catch Lmobi/beyondpod/downloadengine/DownloadAgent$WebException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 606
    sget-object v3, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Error downloading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->debugDownloadProgress()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 611
    sget v3, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->VIBRATE_LONG:I

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->vibrate(I)V

    .line 612
    sget v3, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->VIBRATE_SHORT:I

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->vibrate(I)V

    .line 613
    sget v3, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->VIBRATE_LONG:I

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->vibrate(I)V

    .line 616
    :cond_22
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->doCleanup()V

    .line 617
    invoke-direct {v1, v2}, Lmobi/beyondpod/downloadengine/DownloadAgent;->onDownloadError(Ljava/lang/Exception;)V

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 600
    sget-object v3, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Error downloading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->doCleanup()V

    .line 602
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v3}, Lmobi/beyondpod/downloadengine/DownloadAgent;->onDownloadError(Ljava/lang/Exception;)V

    goto :goto_e

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 579
    iget v3, v2, Lmobi/beyondpod/downloadengine/DownloadAgent$WebException;->StatusCode:I

    const/16 v4, 0x130

    if-ne v3, v4, :cond_25

    .line 581
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadSkipped:Z

    .line 582
    sget-object v2, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v3, ">> Download skipped!"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->doCleanup()V

    .line 584
    iget-object v2, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    if-nez v2, :cond_23

    const-wide/16 v4, 0x0

    goto :goto_c

    :cond_23
    iget-object v2, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_c
    iget-object v2, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    if-nez v2, :cond_24

    const-wide/16 v2, 0x0

    goto :goto_d

    :cond_24
    iget-object v2, v1, Lmobi/beyondpod/downloadengine/DownloadAgent;->_ResourceContentLength:Ljava/lang/Long;

    .line 585
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 584
    :goto_d
    invoke-direct {v1, v4, v5, v2, v3}, Lmobi/beyondpod/downloadengine/DownloadAgent;->onDownloadProgress(JJ)V

    const/4 v2, 0x0

    .line 586
    invoke-direct {v1, v2}, Lmobi/beyondpod/downloadengine/DownloadAgent;->onDownloadCompleted(Z)V

    return-void

    .line 590
    :cond_25
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->debugDownloadProgress()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 591
    sget v3, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->VIBRATE_LONG:I

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->vibrate(I)V

    .line 593
    :cond_26
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->doCleanup()V

    .line 596
    invoke-direct {v1, v2}, Lmobi/beyondpod/downloadengine/DownloadAgent;->onDownloadError(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method

.method public setAllowMobileDataUse(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowMobileDataUse:Z

    return-void
.end method

.method public setAllowRedirects(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowRedirects:Z

    return-void
.end method

.method public setAllowResume(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_AllowResume:Z

    return-void
.end method

.method public setDownloadListener(Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    return-void
.end method

.method public setIgnoreIfNotModifiedSinceDate(Ljava/util/Date;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_IgnoreIfNotModifiedSinceDate:Ljava/util/Date;

    return-void
.end method

.method public setIgnoreIfSize(Ljava/lang/Long;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_IgnoreIfSize:Ljava/lang/Long;

    return-void
.end method

.method public setMustRequestReaderToken(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_MustRequestReaderAuthToken:Z

    return-void
.end method

.method public setRequestCookie(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_RequestCookie:Ljava/lang/String;

    return-void
.end method

.method public setUpdateType(I)V
    .locals 0

    .line 118
    iput p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UpdateType:I

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_UserAgent:Ljava/lang/String;

    return-void
.end method

.method public startDownload()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "You must use a new instance of this class for each new download!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThreadIsDownloading:Z

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Download is already in progress!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isRuntimeShuttingDown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThreadIsDownloading:Z

    .line 191
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThread:Ljava/lang/Thread;

    .line 192
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThread:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 195
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    const-class v0, Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot start download thread. Runtime is shutting down."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;
    .locals 1

    .line 296
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Statistics:Lmobi/beyondpod/downloadengine/DownloadStatistics;

    return-object v0
.end method

.method public stop()V
    .locals 3

    .line 205
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> Received stop command to terminate the Download of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_Source:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v1, ">> Download is already stopped!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v1, ">> Download is in progress! Waiting for the download thread to stop!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_StopDownload:Z

    .line 217
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    if-eqz v0, :cond_1

    .line 219
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v1, ">> Awaiting Response! Canceling the request..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->abort()V

    :cond_1
    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadThreadIsDownloading:Z

    .line 230
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadAgent;->_DownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    invoke-interface {v0, p0}, Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;->onDownloadTerminated(Lmobi/beyondpod/downloadengine/DownloadAgent;)V

    .line 233
    :cond_2
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadAgent;->TAG:Ljava/lang/String;

    const-string v1, ">> stop Download operation complete!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
