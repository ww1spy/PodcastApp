.class final Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$2;
.super Ljava/lang/Object;
.source "DownloadEngineNotificationManager.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private remainingPodcastsText()Ljava/lang/String;
    .locals 6

    .line 196
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$600()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 197
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->queueCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$800()Ljava/util/Formatter;

    move-result-object v0

    const-string v3, ", %s %s %s %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 198
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->queueCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$000()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    .line 199
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->queueCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-le v5, v2, :cond_0

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1000()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1100()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v4, v1

    const/4 v1, 0x3

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1200()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 197
    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method


# virtual methods
.method public onAnotherDownloadIsInProgress()V
    .locals 0

    return-void
.end method

.method public onEnclosureBatchDownloadCanceled()V
    .locals 0

    return-void
.end method

.method public onEnclosureBatchDownloadCompleted()V
    .locals 0

    return-void
.end method

.method public onEnclosureBatchDownloadStarted()V
    .locals 1

    .line 181
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->queueCount()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onBatchDownloadStarted(I)V

    return-void
.end method

.method public onEnclosureBatchEnclosureDownloadStarting(Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, ""

    .line 211
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    .line 212
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1300()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1400()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$2;->remainingPodcastsText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    .line 211
    invoke-static {v0, v1, p1, p2, v2}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onEnclosureDownloadCanceled(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    return-void
.end method

.method public onEnclosureDownloadCompleted(Lmobi/beyondpod/rsscore/Track;)V
    .locals 4

    .line 244
    invoke-static {p1}, Lmobi/beyondpod/ui/core/TrackMetadataParser;->loadMetadataFor(Lmobi/beyondpod/rsscore/Track;)Z

    .line 246
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->sharePodcasts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p1}, Lmobi/beyondpod/ui/core/TrackMetadataParser;->addToAndroidMediaDatabase(Lmobi/beyondpod/rsscore/Track;)V

    .line 249
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    const-class v2, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;

    sget v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_COMPLETED:I

    invoke-direct {v1, v2, v3, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;-><init>(Ljava/lang/Object;ILmobi/beyondpod/rsscore/Track;)V

    .line 250
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method public onEnclosureDownloadFailed(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onEnclosureDownloadProgress(Lmobi/beyondpod/rsscore/Track;)V
    .locals 5

    .line 218
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$600()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 225
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$2;->remainingPodcastsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadPercent()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$2;->remainingPodcastsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x4

    const-string v2, ""

    .line 233
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadPercent()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v1, v2, v3, v0, p1}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onEnclosureDownloadStarted(Lmobi/beyondpod/rsscore/Track;)V
    .locals 4

    .line 263
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    const-class v2, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;

    sget v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_STARTED:I

    invoke-direct {v1, v2, v3, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;-><init>(Ljava/lang/Object;ILmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method public onEnclosureDownloadTerminated(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    return-void
.end method

.method public onUnableToEstablishNetworkConnection()V
    .locals 0

    .line 280
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->access$1600()V

    return-void
.end method
