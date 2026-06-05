.class Lmobi/beyondpod/downloadengine/FeedImageDownloader;
.super Ljava/lang/Object;
.source "FeedImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedImageDownloader"


# instance fields
.field private _FeedDownloadPath:Ljava/io/File;

.field _FeedImageDownloadListener:Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;

.field private _FeedUpdateListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

.field private _ImageDownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

.field private m_Feed:Lmobi/beyondpod/rsscore/Feed;

.field private m_ImageDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

.field private m_UpdateDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssCachePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageDownloaderTemp.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedDownloadPath:Ljava/io/File;

    .line 127
    new-instance v0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;-><init>(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    .line 192
    new-instance v0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/downloadengine/FeedImageDownloader$2;-><init>(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_ImageDownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Lmobi/beyondpod/rsscore/Feed;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Ljava/io/File;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedDownloadPath:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->downloadFeedImage()V

    return-void
.end method

.method static synthetic access$400(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->publishImageDownloadCompletedEvent()V

    return-void
.end method

.method private downloadFeedImage()V
    .locals 4

    .line 112
    :try_start_0
    new-instance v0, Lmobi/beyondpod/downloadengine/DownloadAgent;

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeCreateUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 113
    invoke-static {v2}, Lmobi/beyondpod/ui/core/FeedImageCache;->getTempFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->credentials()Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmobi/beyondpod/downloadengine/DownloadAgent;-><init>(Landroid/net/Uri;Ljava/io/File;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_ImageDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_ImageDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_ImageDownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setDownloadListener(Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;)V

    .line 116
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_ImageDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setAllowResume(Z)V

    .line 117
    sget-object v0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading image for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_ImageDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->startDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_ImageDownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;->onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private publishImageDownloadCompletedEvent()V
    .locals 2

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedImageDownloadListener:Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedImageDownloadListener:Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {v0, v1}, Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;->onImageDownloadCompleted(Lmobi/beyondpod/rsscore/Feed;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedDownloadPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedDownloadPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public downloadImage(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 5

    .line 60
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_UpdateDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    .line 63
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    :try_start_0
    new-instance v1, Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p1

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedDownloadPath:Ljava/io/File;

    iget-object v3, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->credentials()Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lmobi/beyondpod/downloadengine/DownloadAgent;-><init>(Landroid/net/Uri;Ljava/io/File;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;)V

    iput-object v1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_UpdateDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    .line 68
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_UpdateDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setDownloadListener(Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;)V

    .line 69
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_UpdateDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setAllowResume(Z)V

    .line 71
    sget-object p1, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating feed to get feed image for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_UpdateDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->startDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    sget-object v1, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->TAG:Ljava/lang/String;

    const-string v2, "Unable to start feed update for image download! url: %s reason: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 77
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    .line 76
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->publishImageDownloadCompletedEvent()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->downloadFeedImage()V

    :goto_0
    return-void
.end method

.method public setFeedUpdateListener(Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->_FeedImageDownloadListener:Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 92
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_UpdateDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_UpdateDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->stop()V

    .line 95
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_ImageDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->m_ImageDownloadAgent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->stop()V

    :cond_1
    return-void
.end method
