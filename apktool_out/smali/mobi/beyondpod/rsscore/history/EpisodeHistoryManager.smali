.class public Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;
.super Ljava/lang/Object;
.source "EpisodeHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;
    }
.end annotation


# static fields
.field public static final EPISODE_HISTORY_TYPE_EPISODE_PLAYED:I = 0x1

.field public static final EPISODE_HISTORY_TYPE_MY_EPISODE_ADDED:I = 0x2

.field private static final HISTORY_CLEAN_BATCH:I = 0xf

.field static final MAX_HISTORY_AGE_DAYS:I = 0xf

.field private static final MAX_HISTORY_EPISODE_PLAYED_ENTRIES:I = 0x32

.field private static final MAX_HISTORY_MY_EPISODE_ADDED_ENTRIES:I = 0x32

.field private static final SAVE_DELAY_LONG:I = 0x7530

.field private static final SAVE_DELAY_SHORT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "EpisodeHistoryManager"

.field private static _IsInitialized:Z

.field private static _SaveHistoryRunnable:Ljava/lang/Runnable;

.field private static _SavingHistory:Z

.field private static _TimeStampComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    .line 42
    new-instance v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$1;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_SaveHistoryRunnable:Ljava/lang/Runnable;

    .line 390
    new-instance v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$3;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$3;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_TimeStampComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 25
    invoke-static {}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->saveHistoryInternal()V

    return-void
.end method

.method public static addEpisodeAddedHistoryEntry(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 379
    sget-boolean v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_IsInitialized:Z

    if-nez v0, :cond_0

    .line 381
    sget-object p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to addEpisodePlayedHistoryEntry before initializing the history repository!"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 386
    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->addHistoryEntry(Lmobi/beyondpod/rsscore/Track;I)V

    return-void
.end method

.method public static addEpisodePlayedHistoryEntry(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 366
    sget-boolean v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_IsInitialized:Z

    if-nez v0, :cond_0

    .line 368
    sget-object p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to addEpisodePlayedHistoryEntry before initializing the history repository!"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 373
    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->addHistoryEntry(Lmobi/beyondpod/rsscore/Track;I)V

    return-void
.end method

.method private static addHistoryEntry(Lmobi/beyondpod/rsscore/Track;I)V
    .locals 5

    .line 208
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getEntryFor(Lmobi/beyondpod/rsscore/Track;I)Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->setTimeStamp(Ljava/lang/Long;)V

    const/4 p0, 0x1

    .line 212
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->setIsModified(Z)V

    const/16 p0, 0x7530

    .line 213
    invoke-static {p0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->saveHistoryAsyncIn(I)V

    goto :goto_0

    .line 217
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    new-instance v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    invoke-static {p0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getTrackId(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getFeedId(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 218
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3, p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x3e8

    .line 219
    invoke-static {p0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->saveHistoryAsyncIn(I)V

    :goto_0
    return-void
.end method

.method private static ageLimitInMilliseconds(I)Ljava/util/Date;
    .locals 3

    .line 202
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 203
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method private static cleanupHistory()V
    .locals 5

    const/4 v0, 0x1

    .line 330
    invoke-static {v0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getForTypeOrdered(I)Ljava/util/List;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x23

    const/16 v3, 0x32

    if-le v1, v3, :cond_0

    move v1, v2

    .line 333
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 336
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->markDeleted()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 340
    invoke-static {v0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getForTypeOrdered(I)Ljava/util/List;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 343
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v2, v1, :cond_1

    .line 346
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->markDeleted()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static getAllEpisodesSorted()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 167
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getAllEpisodesSorted(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getEntryFor(Lmobi/beyondpod/rsscore/Track;I)Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;
    .locals 5

    .line 225
    sget-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    monitor-enter v0

    .line 227
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    .line 229
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getFeedId(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->feedUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-static {p0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getTrackId(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->episodeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->entryType()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 233
    monitor-exit v0

    return-object v2

    .line 236
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getFeedId(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getForTypeOrdered(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    sget-object v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    monitor-enter v1

    .line 405
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    .line 407
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->entryType()I

    move-result v4

    if-eq v4, p0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    sget-object p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_TimeStampComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 412
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getLatestAddedEpisodes(I)Lmobi/beyondpod/rsscore/TrackList;
    .locals 5

    .line 53
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    const/4 v1, 0x2

    .line 55
    invoke-static {v1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getForTypeOrdered(I)Ljava/util/List;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    .line 59
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->episodeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->episodeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPathOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 60
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isNew()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v3

    if-lt v3, p0, :cond_0

    return-object v0

    .line 68
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 70
    invoke-static {}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getAllEpisodesSorted()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 72
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->isNew()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 74
    invoke-static {v2}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->addEpisodeAddedHistoryEntry(Lmobi/beyondpod/rsscore/Track;)V

    .line 75
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_4
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v2

    if-lt v2, p0, :cond_3

    :cond_5
    return-object v0
.end method

.method public static getLatestPlayedEpisodes(I)Lmobi/beyondpod/rsscore/TrackList;
    .locals 5

    .line 88
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    const/4 v1, 0x1

    .line 90
    invoke-static {v1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getForTypeOrdered(I)Ljava/util/List;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    .line 94
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->episodeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->episodeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPathOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isNew()Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v3

    if-lt v3, p0, :cond_0

    return-object v0

    .line 103
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 105
    invoke-static {}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getAllEpisodesSorted()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 107
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->isPartialyPlayed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    invoke-static {v2}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->addEpisodePlayedHistoryEntry(Lmobi/beyondpod/rsscore/Track;)V

    .line 110
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_4
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v2

    if-lt v2, p0, :cond_3

    :cond_5
    return-object v0
.end method

.method public static getMostUsedFeeds()Lmobi/beyondpod/rsscore/FeedList;
    .locals 6

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    sget-object v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    .line 130
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->entryType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->feedUrl()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {v3}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 141
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 142
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    new-instance v1, Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 150
    new-instance v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$2;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$2;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 159
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    .line 146
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getTrackId(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initializeHistory()V
    .locals 5

    .line 172
    sget-boolean v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_IsInitialized:Z

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    const-string v1, "History already initialized! Ignoring..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 184
    :try_start_0
    new-instance v1, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    sget-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadEpisodeHistory(Ljava/util/List;)V

    .line 186
    sget-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " history records!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 187
    sput-boolean v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_IsInitialized:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 191
    :goto_0
    :try_start_2
    sget-object v2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load the user history from database"

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 196
    :goto_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_2
    throw v0
.end method

.method private static saveHistoryAsyncIn(I)V
    .locals 4

    .line 259
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_SaveHistoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_SaveHistoryRunnable:Ljava/lang/Runnable;

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static saveHistoryInternal()V
    .locals 8

    .line 265
    sget-object v0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-boolean v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_SavingHistory:Z

    if-eqz v1, :cond_0

    .line 268
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 270
    sput-boolean v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_SavingHistory:Z

    .line 272
    invoke-static {}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->cleanupHistory()V

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 281
    :try_start_1
    new-instance v4, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :try_start_2
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->beginTransaction()V

    .line 284
    sget-object v2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    .line 286
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->isNew()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->isModified()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 288
    :cond_2
    invoke-virtual {v4, v5}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->saveEpisodeHistory(Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;)V

    .line 291
    :cond_3
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->isMarkedForDeletion()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 293
    invoke-virtual {v4, v5}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->deleteEpisodeFromHistory(Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 294
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_4
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_5

    .line 309
    :try_start_3
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 310
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 314
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 316
    sget-object v2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 317
    sget-object v2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user history entries"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_6
    :goto_1
    sput-boolean v3, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_SavingHistory:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    .line 303
    :goto_2
    :try_start_4
    sget-object v5, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    const-string v6, "failed to save user history to the database!"

    invoke-static {v5, v6, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_7

    .line 309
    :try_start_5
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 310
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 314
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 316
    sget-object v2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 317
    sget-object v2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user history entries"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :goto_3
    sget-object v1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved user history! It now has: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " records!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v4, :cond_8

    .line 309
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 310
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 314
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 316
    sget-object v4, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->m_history:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 317
    sget-object v4, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user history entries"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_9
    sput-boolean v3, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->_SavingHistory:Z

    throw v2

    :catchall_2
    move-exception v1

    .line 324
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
