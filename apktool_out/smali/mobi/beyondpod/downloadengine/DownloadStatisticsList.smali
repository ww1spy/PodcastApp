.class public Lmobi/beyondpod/downloadengine/DownloadStatisticsList;
.super Ljava/lang/Object;
.source "DownloadStatisticsList.java"


# instance fields
.field private final _List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/DownloadStatistics;",
            ">;"
        }
    .end annotation
.end field

.field public downloadTime:Ljava/util/Date;

.field public isUnattended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lmobi/beyondpod/downloadengine/DownloadStatistics;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 163
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearStatistics()V
    .locals 1

    .line 152
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->downloadTime:Ljava/util/Date;

    return-void
.end method

.method public getFailedDownloads()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/DownloadStatistics;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    .line 81
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 83
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    add-int/lit8 v2, v2, 0x1

    .line 85
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 88
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    if-eqz v4, :cond_1

    .line 89
    iget-object v5, v3, Lmobi/beyondpod/downloadengine/DownloadStatistics;->url:Ljava/lang/String;

    iget-object v4, v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;->url:Ljava/lang/String;

    invoke-static {v5, v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v3}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->hasErrors()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSuccessfulDownloads()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/DownloadStatistics;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {v3}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->hasErrors()Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
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

.method public hasAnyFailedDownloads()Z
    .locals 1

    .line 144
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->getFailedDownloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAnyReaderLoginFailures()Z
    .locals 6

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 107
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 109
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    add-int/lit8 v2, v2, 0x1

    .line 110
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 113
    iget-object v4, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    if-eqz v4, :cond_1

    .line 114
    iget-object v5, v3, Lmobi/beyondpod/downloadengine/DownloadStatistics;->url:Ljava/lang/String;

    iget-object v4, v4, Lmobi/beyondpod/downloadengine/DownloadStatistics;->url:Ljava/lang/String;

    invoke-static {v5, v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {v3}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesReaderLoginFailure()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 123
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasAnySDCardCorruptionFalures()Z
    .locals 3

    .line 130
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    .line 134
    invoke-virtual {v2}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesSDCardCorruption()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 135
    monitor-exit v0

    return v1

    .line 137
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 42
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    .line 45
    invoke-virtual {v3}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
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
    const-string v1, "No feeds were Updated"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
