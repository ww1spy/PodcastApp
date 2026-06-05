.class final Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$1;
.super Ljava/lang/Object;
.source "DownloadEngineNotificationManager.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field _FeedsLeftToUpdate:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnotherUpdateIsInProgress()V
    .locals 0

    return-void
.end method

.method public onFeedBatchUpdateCanceled()V
    .locals 0

    return-void
.end method

.method public onFeedBatchUpdateCompleted()V
    .locals 0

    .line 118
    invoke-static {}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->checkForNewVersionIfNeeded()V

    return-void
.end method

.method public onFeedBatchUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 6

    .line 126
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->queueCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    const-string v0, "%s %s %s %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 127
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->queueCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$000()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->queueCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-le v5, v3, :cond_0

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$100()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$200()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v4, v1

    const/4 v3, 0x3

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$300()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 126
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$1;->_FeedsLeftToUpdate:Ljava/lang/String;

    const-string v0, ""

    .line 130
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$1;->_FeedsLeftToUpdate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, p1, v3, v2}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onFeedBatchUpdateUnableToEstablishNetworkConnection()V
    .locals 0

    return-void
.end method

.method public onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    return-void
.end method

.method public onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 9

    .line 138
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$600()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 140
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getUpdateSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-gtz v0, :cond_0

    .line 141
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$800()Ljava/util/Formatter;

    move-result-object v0

    const-string v6, "%s %s, %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$700()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    .line 142
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getUpdatedPortion()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$1;->_FeedsLeftToUpdate:Ljava/lang/String;

    aput-object v1, v5, v3

    .line 141
    invoke-virtual {v0, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$800()Ljava/util/Formatter;

    move-result-object v0

    const-string v6, "%s %s%% %s %s, %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$700()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->updatePercent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$900()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 145
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getUpdateSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$1;->_FeedsLeftToUpdate:Ljava/lang/String;

    aput-object v1, v7, v2

    .line 144
    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ""

    .line 147
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->updatePercent()I

    move-result p1

    invoke-static {v2, v1, v3, v0, p1}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    return-void
.end method

.method public onInsufficientSpaceAtDownloadLocation(Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;)V
    .locals 0

    return-void
.end method
