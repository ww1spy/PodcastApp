.class public Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;
.super Ljava/lang/Object;
.source "ProcessStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/ProcessStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessedFeedList"
.end annotation


# instance fields
.field private final _List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/ProcessStatistics;",
            ">;"
        }
    .end annotation
.end field

.field public lastException:Ljava/lang/Exception;

.field public processTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lmobi/beyondpod/downloadengine/ProcessStatistics;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 263
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearStatistics()V
    .locals 1

    .line 192
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->processTime:Ljava/util/Date;

    .line 194
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->lastException:Ljava/lang/Exception;

    return-void
.end method

.method public getFeedsWithNewContent()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/ProcessStatistics;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/ProcessStatistics;

    .line 208
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 209
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPodcastDownloadSkippedDeviceIsNotPluggedIn()Lmobi/beyondpod/downloadengine/ProcessStatistics;
    .locals 4

    .line 237
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/ProcessStatistics;

    .line 241
    iget-boolean v3, v2, Lmobi/beyondpod/downloadengine/ProcessStatistics;->podcastDownloadSkippedDeviceIsNotPluggedIn:Z

    if-eqz v3, :cond_0

    .line 242
    monitor-exit v0

    return-object v2

    .line 244
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPodcastDownloadSkippedWiFiNotDetected()Lmobi/beyondpod/downloadengine/ProcessStatistics;
    .locals 4

    .line 250
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/ProcessStatistics;

    .line 254
    iget-boolean v3, v2, Lmobi/beyondpod/downloadengine/ProcessStatistics;->podcastDownloadSkippedWiFiNotDetected:Z

    if-eqz v3, :cond_0

    .line 255
    monitor-exit v0

    return-object v2

    .line 257
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUrlsOfNewEpisodes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/ProcessStatistics;

    .line 223
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 224
    iget-object v3, v3, Lmobi/beyondpod/downloadengine/ProcessStatistics;->newEnclosures:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 226
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 172
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/ProcessStatistics;

    .line 176
    invoke-virtual {v3}, Lmobi/beyondpod/downloadengine/ProcessStatistics;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string v1, "There were no feeds to check for new podcasts"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "<div>"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->dumpHistoryData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
