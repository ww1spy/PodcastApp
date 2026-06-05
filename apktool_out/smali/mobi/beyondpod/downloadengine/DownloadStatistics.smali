.class public Lmobi/beyondpod/downloadengine/DownloadStatistics;
.super Ljava/lang/Object;
.source "DownloadStatistics.java"


# instance fields
.field public completedNormally:Z

.field public contentDisposition:Ljava/lang/String;

.field public contentEncoding:Ljava/lang/String;

.field public contentLastModifyDate:Ljava/util/Date;

.field public downloadSkipped:Z

.field public downloadTime:J

.field public downloadedSize:Ljava/lang/Long;

.field public eventDate:Ljava/util/Date;

.field public finalDownloadUrl:Ljava/net/URI;

.field public lastException:Ljava/lang/Exception;

.field public ownerFeed:Lmobi/beyondpod/rsscore/Feed;

.field public ownerTrack:Lmobi/beyondpod/rsscore/Track;

.field public responseCookie:Ljava/lang/String;

.field public skipDate:Ljava/util/Date;

.field public skipSize:Ljava/lang/Long;

.field public startPosition:J

.field public terminated:Z

.field public timeToFirstByte:J

.field public totalSize:Ljava/lang/Long;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadSpeed()Ljava/lang/String;
    .locals 5

    .line 59
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->contentEncoding:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadedSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 62
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadedSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadTime:J

    long-to-double v3, v3

    div-double/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "kb/s."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<N/A>"

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    instance-of v0, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$InsuficientStorageSpaceException;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesSDCardCorruption()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Unable to write to the Storage Card! (Try removing and reinserting the storage card)"

    return-object v0

    .line 183
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesReaderLoginFailure()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Google Reader Login failed or expired! (Try to clear your login and log in again)"

    return-object v0

    :cond_3
    const-string v0, "Unknown Error"

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesSDCardCorruption()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesReaderLoginFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public indicatesReaderLoginFailure()Z
    .locals 3

    .line 201
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    instance-of v0, v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    .line 203
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "feedly.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 207
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->responseCookie:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->responseCookie:Ljava/lang/String;

    const-string v2, "GoogleAccounts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    .line 208
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    .line 209
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "google.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    .line 210
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "servicelogin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->finalDownloadUrl:Ljava/net/URI;

    .line 211
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "clientlogin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public indicatesSDCardCorruption()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesSDCardCorruption()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesReaderLoginFailure()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-boolean v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->completedNormally:Z

    if-eqz v2, :cond_1

    const-string v2, "Completed"

    const-string v3, "DarkGreen"

    goto :goto_1

    .line 88
    :cond_1
    iget-boolean v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->terminated:Z

    if-eqz v2, :cond_2

    const-string v2, "Canceled"

    const-string v3, "Goldenrod"

    goto :goto_1

    .line 93
    :cond_2
    iget-boolean v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadSkipped:Z

    if-eqz v2, :cond_3

    const-string v2, "Unchanged"

    const-string v3, "DodgerBlue"

    goto :goto_1

    :cond_3
    const-string v2, "failed"

    const-string v3, "Firebrick"

    goto :goto_1

    :cond_4
    :goto_0
    const-string v2, "failed"

    const-string v3, "Firebrick"

    :goto_1
    const-string v4, "<div style=\'color: %s\'><b>%s</b> - %s"

    const/4 v5, 0x3

    .line 104
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v2, v6, v3

    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerTrack:Lmobi/beyondpod/rsscore/Track;

    if-nez v2, :cond_6

    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v2, :cond_5

    const-string v2, "Unknown"

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 107
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v8, 0x2

    aput-object v2, v6, v8

    .line 104
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<ul style=\'margin-top:5px; margin-bottom:5px\'>"

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v2, :cond_7

    const-string v2, "Unknown"

    goto :goto_3

    :cond_7
    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v4, "<li>feed url: %s</li>"

    .line 113
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerTrack:Lmobi/beyondpod/rsscore/Track;

    if-nez v2, :cond_8

    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_8

    .line 116
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "<li>feed is synced with Feedly! (will get <b>%d</b> posts)</li>"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v9, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v9}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumGReaderItemsToGet()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v2, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_8
    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerTrack:Lmobi/beyondpod/rsscore/Track;

    if-eqz v2, :cond_a

    const-string v2, "<li>Episode url: %s</li>"

    .line 119
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v6, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->url:Ljava/lang/String;

    if-nez v6, :cond_9

    const-string v6, "Unknown"

    goto :goto_4

    :cond_9
    iget-object v6, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->url:Ljava/lang/String;

    :goto_4
    aput-object v6, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_a
    iget-boolean v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadSkipped:Z

    if-nez v2, :cond_d

    const-string v2, "<li>downloaded: <b>%s</b>, starting at position: <b>%s</b> took: <b>%s</b> at <b>%s</b></li>"

    const/4 v4, 0x4

    .line 123
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadedSize:Ljava/lang/Long;

    if-nez v6, :cond_b

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_b
    iget-object v6, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadedSize:Ljava/lang/Long;

    .line 125
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :goto_5
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v7

    iget-wide v11, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->startPosition:J

    .line 126
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v3

    iget-wide v11, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadTime:J

    iget-wide v13, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->timeToFirstByte:J

    add-long v9, v11, v13

    .line 127
    invoke-static {v9, v10}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getTimeDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    iget-object v6, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadedSize:Ljava/lang/Long;

    if-nez v6, :cond_c

    const-wide/16 v9, 0x0

    goto :goto_6

    :cond_c
    iget-object v6, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadedSize:Ljava/lang/Long;

    .line 128
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_6
    iget-wide v11, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadTime:J

    iget-wide v13, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->timeToFirstByte:J

    add-long v7, v11, v13

    invoke-static {v9, v10, v7, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDownloadSpeedAsString(JJ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 123
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v2, "<li>Content Size: <b>%s</b>. Cache Size: <b>%s</b></li>"

    const/4 v4, 0x2

    .line 131
    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->totalSize:Ljava/lang/Long;

    if-nez v4, :cond_e

    const-wide/16 v9, 0x0

    goto :goto_7

    :cond_e
    iget-object v4, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->totalSize:Ljava/lang/Long;

    .line 133
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_7
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    iget-object v4, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->skipSize:Ljava/lang/Long;

    if-nez v4, :cond_f

    const-string v4, "Not Set"

    goto :goto_8

    :cond_f
    iget-object v4, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->skipSize:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    aput-object v4, v5, v3

    .line 131
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<li>Content Date: <b>%s</b>. Cache Date: <b>%s</b></li>"

    const/4 v4, 0x2

    .line 135
    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->contentLastModifyDate:Ljava/util/Date;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->contentLastModifyDate:Ljava/util/Date;

    .line 137
    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_9
    const/4 v6, 0x0

    goto :goto_a

    :cond_10
    const-string v4, "Unknown"

    goto :goto_9

    :goto_a
    aput-object v4, v5, v6

    iget-object v4, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->skipDate:Ljava/util/Date;

    if-eqz v4, :cond_11

    iget-object v4, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->skipDate:Ljava/util/Date;

    .line 138
    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_11
    const-string v4, "Not Set"

    :goto_b
    aput-object v4, v5, v3

    .line 135
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<li>feed has Image: <b>%s</b>, image downloaded: <b>%s</b></li>"

    const/4 v4, 0x2

    .line 140
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 142
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "No"

    :goto_c
    const/4 v6, 0x0

    goto :goto_d

    :cond_12
    const-string v5, "Yes"

    goto :goto_c

    :goto_d
    aput-object v5, v4, v6

    iget-object v5, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 143
    invoke-static {v5}, Lmobi/beyondpod/ui/core/FeedImageCache;->hasCachedImageFor(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "Yes"

    goto :goto_e

    :cond_13
    const-string v5, "No"

    :goto_e
    aput-object v5, v4, v3

    .line 140
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-boolean v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadSkipped:Z

    if-nez v2, :cond_15

    const-string v2, "<li>Content Compression: <b>%s</b></li>"

    .line 147
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->contentEncoding:Ljava/lang/String;

    .line 149
    invoke-static {v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "Not Compressed"

    :goto_f
    const/4 v6, 0x0

    goto :goto_10

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " compressed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :goto_10
    aput-object v5, v4, v6

    .line 147
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatistics;->lastException:Ljava/lang/Exception;

    if-eqz v2, :cond_15

    const-string v2, "<li>reason to fail: <b>%s</b></li>"

    .line 153
    new-array v4, v3, [Ljava/lang/Object;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 153
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesSDCardCorruption()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesReaderLoginFailure()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const-string v2, "<li>"

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</li>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v2, "</ul></div>"

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<hr style=\'color:%s; height: 0px;\' />"

    .line 165
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Gainsboro"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
