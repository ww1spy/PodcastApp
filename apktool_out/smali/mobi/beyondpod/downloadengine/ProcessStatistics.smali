.class public Lmobi/beyondpod/downloadengine/ProcessStatistics;
.super Ljava/lang/Object;
.source "ProcessStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;
    }
.end annotation


# instance fields
.field public ignoredEnclosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastException:Ljava/lang/Exception;

.field public newEnclosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public podcastDownloadForced:Z

.field public podcastDownloadSkippedDeviceIsNotPluggedIn:Z

.field public podcastDownloadSkippedWiFiNotDetected:Z

.field public processedFeed:Lmobi/beyondpod/rsscore/Feed;

.field public remoteEpisodes:Z

.field public streamableEnclosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->ignoredEnclosures:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->streamableEnclosures:Ljava/util/List;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->processedFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->remoteEpisodes:Z

    .line 41
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->podcastDownloadSkippedDeviceIsNotPluggedIn:Z

    .line 42
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->podcastDownloadSkippedWiFiNotDetected:Z

    .line 43
    iput-boolean v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->podcastDownloadForced:Z

    return-void
.end method

.method private getPodcastDownloadActionAsText(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string p1, "N/A"

    return-object p1

    :pswitch_0
    const-string p1, "Stream In Order"

    return-object p1

    .line 148
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download In Order"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifMultipleDownloadRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " (Trial Expired! - will Stream instead)"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string p1, "Ignore All Episodes"

    return-object p1

    :pswitch_3
    const-string p1, "Stream Latest"

    return-object p1

    .line 139
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download Latest"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifMultipleDownloadRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " (Trial Expired! - will Stream instead)"

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-string p1, "Download Manually"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 10

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget-boolean v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->remoteEpisodes:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 51
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v5, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->ignoredEnclosures:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    const-string v1, "<div style=\'color:DarkGreen\'>Processing Remote Episodes</div>"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v5, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->ignoredEnclosures:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_4

    const-string v1, "<ul style=\'margin-top:5px; margin-bottom:5px\'>"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "queued for download"

    .line 64
    iget-object v7, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->ignoredEnclosures:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v6, "marked as \'Already downloaded\'"

    :cond_1
    const-string v7, "<li>%s (%s)</li>"

    .line 67
    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v3

    aput-object v6, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "</ul>"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, "<div style=\'color:DodgerBlue\'>No new remote episodes</div>"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    const-string v1, "<hr style=\'color:Gainsboro; height: 0px;\' />"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_5
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->processedFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v1, :cond_6

    const-string v0, "<div style=\'red\'>Processed feed is Empty!</div>"

    return-object v0

    .line 84
    :cond_6
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->lastException:Ljava/lang/Exception;

    if-eqz v1, :cond_7

    const-string v1, "<div style=\'red\'>failed to process feed:%s. reason: %s</div>"

    .line 86
    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->processedFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->lastException:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_7
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, "DarkGreen"

    goto :goto_3

    :cond_8
    const-string v1, "DodgerBlue"

    .line 100
    :goto_3
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "<div style=\'color:%s\'><b>\u2022 %s</b><br>&nbsp;&nbsp;%s, New episodes: <b>%d</b>, Download Max: <b>%d</b>, Keep Max: <b>%d</b>, delete if more than: <b>%d</b> days old. "

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->processedFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 104
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->processedFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/downloadengine/ProcessStatistics;->getPodcastDownloadActionAsText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x3

    iget-object v8, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x4

    iget-object v8, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->processedFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 105
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v8

    .line 104
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x5

    iget-object v8, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->processedFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 105
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x6

    iget-object v8, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->processedFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v8

    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 102
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    const-string v1, "<ul style=\'margin-top:5px; margin-bottom:5px\'>"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "queued for download"

    .line 114
    iget-object v7, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->ignoredEnclosures:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v6, "marked as \'Already downloaded\'"

    .line 117
    :cond_9
    iget-object v7, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->streamableEnclosures:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v6, "added as a \'Streamable\' track"

    .line 120
    :cond_a
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "<li>%s (%s)</li>"

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v5, v9, v3

    aput-object v6, v9, v4

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    const-string v1, "</ul>"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v1, "</div>"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<hr style=\'color:Gainsboro; height: 0px;\' />"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
