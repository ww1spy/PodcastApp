.class Lmobi/beyondpod/downloadengine/EnclosureDownloader;
.super Ljava/lang/Object;
.source "EnclosureDownloader.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnclosureDownloader"

.field private static m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;


# instance fields
.field _EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

.field _LastProgressNotificationTime:J

.field private m_CurrentEnclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

.field private m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_LastProgressNotificationTime:J

    return-void
.end method


# virtual methods
.method public downloadTrack(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V
    .locals 4

    .line 88
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    .line 89
    iput-object p2, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentEnclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    const/4 p1, 0x1

    .line 93
    :try_start_0
    new-instance p2, Lmobi/beyondpod/downloadengine/DownloadAgent;

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeCreateUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    .line 94
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->credentials()Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lmobi/beyondpod/downloadengine/DownloadAgent;-><init>(Landroid/net/Uri;Ljava/io/File;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;)V

    sput-object p2, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    .line 95
    sget-object p2, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {p2, p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setDownloadListener(Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;)V

    .line 96
    sget-object p2, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setUpdateType(I)V

    .line 97
    sget-object p2, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->allowMobileDataUseForDownloads()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setAllowMobileDataUse(Z)V

    .line 98
    sget-object p2, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {p2}, Lmobi/beyondpod/downloadengine/DownloadAgent;->startDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 102
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Unable to start the download of url:%s!"

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    .line 103
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    .line 102
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public isDownloading()Z
    .locals 1

    .line 72
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDownloadCompleted(Lmobi/beyondpod/downloadengine/DownloadAgent;Z)V
    .locals 0

    .line 117
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    iget-object p2, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/Track;->setDownloadStatus(I)V

    .line 120
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyTrackChanged(Lmobi/beyondpod/rsscore/Track;)V

    .line 121
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentEnclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->addEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    .line 128
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    if-eqz p1, :cond_2

    .line 129
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    iget-object p2, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-interface {p1, p2}, Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;->onEnclosureDownloadCompleted(Lmobi/beyondpod/rsscore/Track;)V

    :cond_2
    return-void
.end method

.method public onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setDownloadStatus(I)V

    .line 136
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lmobi/beyondpod/rsscore/Feed;->downloadFailed:Z

    .line 138
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyTrackChanged(Lmobi/beyondpod/rsscore/Track;)V

    .line 139
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 141
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-interface {p1, v0, p2}, Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;->onEnclosureDownloadError(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onDownloadProgress(Lmobi/beyondpod/downloadengine/DownloadAgent;JJ)V
    .locals 2

    .line 150
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1, p4, p5}, Lmobi/beyondpod/rsscore/Track;->setDownloadSize(J)V

    .line 151
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1, p2, p3}, Lmobi/beyondpod/rsscore/Track;->setDownloadedPortion(J)V

    .line 152
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/Track;->setDownloadStatus(I)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 157
    iget-wide p3, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_LastProgressNotificationTime:J

    sub-long v0, p1, p3

    const-wide/16 p3, 0xbb8

    cmp-long p5, v0, p3

    if-lez p5, :cond_0

    .line 159
    iget-object p3, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-static {p3}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyTrackChanged(Lmobi/beyondpod/rsscore/Track;)V

    .line 160
    iget-object p3, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p3

    invoke-static {p3}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 161
    iput-wide p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_LastProgressNotificationTime:J

    .line 163
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    iget-object p2, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-interface {p1, p2}, Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;->onEnclosureDownloadProgress(Lmobi/beyondpod/rsscore/Track;)V

    :cond_0
    return-void
.end method

.method public onDownloadStarted(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setDownloadStatus(I)V

    .line 172
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmobi/beyondpod/rsscore/Feed;->downloadFailed:Z

    .line 174
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyTrackChanged(Lmobi/beyondpod/rsscore/Track;)V

    .line 175
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 177
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-interface {p1, v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;->onEnclosureDownloadStarted(Lmobi/beyondpod/rsscore/Track;)V

    :cond_0
    return-void
.end method

.method public onDownloadTerminated(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setDownloadStatus(I)V

    .line 187
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyTrackChanged(Lmobi/beyondpod/rsscore/Track;)V

    .line 188
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 190
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-interface {p1, v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;->onEnclosureDownloadTerminated(Lmobi/beyondpod/rsscore/Track;)V

    :cond_0
    return-void
.end method

.method public setEnclosureDownloadListener(Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->_EnclosureDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;

    return-void
.end method

.method public statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;
    .locals 1

    .line 80
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public stop()V
    .locals 1

    .line 110
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_Agent:Lmobi/beyondpod/downloadengine/DownloadAgent;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->stop()V

    :cond_0
    return-void
.end method

.method public track()Lmobi/beyondpod/rsscore/Track;
    .locals 1

    .line 64
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloader;->m_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    return-object v0
.end method
