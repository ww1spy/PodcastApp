.class public Lmobi/beyondpod/rsscore/ConcurrentTrackList;
.super Ljava/lang/Object;
.source "ConcurrentTrackList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConcurrentTrackList"


# instance fields
.field public final _List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)Z"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public appendTo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 141
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public disableChangeTracking()V
    .locals 4

    .line 164
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    const/4 v3, 0x0

    .line 167
    iput-boolean v3, v2, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    goto :goto_0

    .line 168
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ensureTrackPathMatchesParent()V
    .locals 6

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 95
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->patchTrackPathToMatchParent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    sget-object v3, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found streamable episode with download path that does not match parent! Patched to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;
    .locals 4

    .line 72
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 74
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 78
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    monitor-exit v0

    return-object v2

    .line 81
    :cond_1
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    monitor-exit v0

    return-object v2

    .line 84
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;
    .locals 4

    .line 56
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 58
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 62
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    monitor-exit v0

    return-object v2

    .line 65
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUnplayedTrackCount()I
    .locals 4

    .line 41
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 45
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isNew()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public indexOf(Lmobi/beyondpod/rsscore/Track;)I
    .locals 1

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public remove(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->_List:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
