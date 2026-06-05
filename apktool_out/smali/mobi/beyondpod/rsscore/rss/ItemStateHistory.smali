.class public Lmobi/beyondpod/rsscore/rss/ItemStateHistory;
.super Ljava/lang/Object;
.source "ItemStateHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemStateHistory"

.field private static volatile _ModificationChangeCount:I = 0x0

.field private static volatile _Saving:Z = false

.field private static _StateSaverRunnnable:Ljava/lang/Runnable; = null

.field public static autoSaveModificationCount:I = 0x3

.field private static m_history:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 556
    new-instance v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$1;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_StateSaverRunnnable:Ljava/lang/Runnable;

    .line 780
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->loadHistory()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 51
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryInternal()V

    return-void
.end method

.method private static autoSaveHistory()V
    .locals 2

    .line 550
    sget v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_ModificationChangeCount:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->autoSaveModificationCount:I

    if-le v0, v1, :cond_0

    .line 552
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryAsync()V

    :cond_0
    return-void
.end method

.method public static clearHistory()V
    .locals 2

    .line 375
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 377
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 378
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markModified()V

    return-void

    :catchall_0
    move-exception v1

    .line 378
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static clearItemReadStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 277
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getOrCreateItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    move-result-object v0

    .line 279
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->logFirstReaderStatusChange(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 281
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object p0

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->clearRead()V

    .line 284
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markModified()V

    .line 285
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->autoSaveHistory()V

    return-void

    :catchall_0
    move-exception v0

    .line 285
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static clearItemStarredStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 5

    .line 311
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getOrCreateItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    move-result-object v0

    .line 313
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 315
    :try_start_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->logFirstReaderStatusChange(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 317
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isFeedlyItemKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    sget-object v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** clear starred on reader post: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeed:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->clearStarred()V

    .line 322
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markModified()V

    .line 323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->autoSaveHistory()V

    return-void

    :catchall_0
    move-exception p0

    .line 323
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static dumpHistory()Ljava/lang/String;
    .locals 8

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Item history Dump------------\n "

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 793
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 795
    sget-object v5, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v3, 0x0

    .line 798
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    sget-object v5, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "  "

    .line 802
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "\n"

    .line 805
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 808
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    const-string v1, ">>> The Item State history is empty!"

    .line 811
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 808
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getAllUnsynchronizedGoogleReaderItems()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;",
            ">;"
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 435
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 437
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 439
    invoke-static {v3}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 441
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    sget-object v4, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 446
    sget-object v4, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 448
    sget-object v6, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    .line 449
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isReadSynced()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isStarSynced()Z

    move-result v7

    if-nez v7, :cond_2

    .line 451
    :cond_3
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 456
    :cond_4
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getItemIdUsedForStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Ljava/lang/String;
    .locals 3

    .line 217
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_1

    .line 227
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    if-eqz p0, :cond_1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 232
    :cond_1
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isFeedlyItemKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "NA-FOR-READER-ITEMS"

    return-object p0

    :cond_2
    const-string p0, "STATUS-NOT-FOUND"

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;
    .locals 3

    .line 199
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_1

    .line 208
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    return-object p0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method private static getOrCreateItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;
    .locals 6

    .line 336
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object v0

    .line 338
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 343
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 346
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    if-nez v1, :cond_1

    .line 350
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 351
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 354
    :cond_1
    :goto_0
    new-instance v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getStarred()Z

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v0, v5, v5, v3, v4}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;-><init>(ZZZZ)V

    .line 355
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    monitor-exit v2

    return-object v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static hasStatusFor(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z
    .locals 0

    .line 240
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasUnsynchronizedGoogleReaderItems()Z
    .locals 6

    .line 463
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 465
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 467
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 469
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 471
    invoke-static {v4}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isFeedlyItemKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 474
    :cond_2
    sget-object v5, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    .line 475
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isReadSynced()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isStarSynced()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    const/4 v1, 0x1

    .line 476
    monitor-exit v0

    return v1

    .line 480
    :cond_4
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

.method private static history()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;",
            ">;>;"
        }
    .end annotation

    .line 191
    sget-object v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->loadHistory()V

    .line 194
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    return-object v0
.end method

.method private static isFeedlyItemKey(Ljava/lang/String;)Z
    .locals 1

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isItemRead(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z
    .locals 0

    .line 245
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 246
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isRead()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isItemStarred(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z
    .locals 0

    .line 330
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 331
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isStarred()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static loadHistory()V
    .locals 10

    .line 590
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    .line 592
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 597
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 599
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-object v4, v1

    .line 619
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-eqz v4, :cond_0

    .line 623
    sget-object v6, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 627
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :cond_1
    move v7, v2

    :goto_2
    if-eq v7, v5, :cond_2

    .line 633
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 635
    new-instance v9, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    invoke-direct {v9}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;-><init>()V

    .line 636
    invoke-virtual {v9, v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->read(Ljava/io/DataInputStream;)V

    .line 637
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 640
    :cond_2
    sget-object v5, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 650
    :catch_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_4

    .line 662
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_3
    move-exception v0

    .line 654
    :goto_3
    :try_start_6
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load download history(). reason: "

    invoke-static {v3, v4, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_4

    .line 662
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 666
    sget-object v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load download history(). reason: "

    invoke-static {v1, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_4
    if-eqz v3, :cond_3

    .line 662
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 666
    sget-object v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load download history(). reason: "

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    :cond_3
    :goto_5
    throw v0

    .line 672
    :cond_4
    :goto_6
    sput v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_ModificationChangeCount:I

    return-void
.end method

.method private static logFirstReaderStatusChange(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 3

    .line 269
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isFeedlyItemKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->hasUnsynchronizedGoogleReaderItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** First Reader change triggred by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeed:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static markModified()V
    .locals 1

    .line 544
    sget v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_ModificationChangeCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_ModificationChangeCount:I

    return-void
.end method

.method public static markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V
    .locals 6

    .line 819
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 822
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 824
    new-instance v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    .line 826
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isItemRead(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 828
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->setItemAsRead(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 830
    sget-object v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v2, "Marked Item as READ when item\'s track is marked as PLAYED! track: %s (id:%s)..."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 831
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 832
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 830
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result v1

    if-lez v1, :cond_1

    .line 835
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setNumUnreadItems(I)V

    .line 837
    :cond_1
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 839
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryAsync()V

    :cond_2
    return-void
.end method

.method public static markTracksItemAsUnRead(Lmobi/beyondpod/rsscore/Track;)V
    .locals 6

    .line 846
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 849
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 851
    new-instance v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    .line 853
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isItemRead(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 855
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->clearItemReadStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 857
    sget-object v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v2, "Marked Item as UN-READ when item\'s track is marked as UN-PLAYED! track: %s (id:%s)..."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 858
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 859
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 857
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result v1

    if-ltz v1, :cond_1

    .line 862
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setNumUnreadItems(I)V

    .line 864
    :cond_1
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 866
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryAsync()V

    :cond_2
    return-void
.end method

.method public static purgeAllGoogleReaderItems()V
    .locals 6

    .line 487
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 489
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 492
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 494
    invoke-static {v3}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isFeedlyItemKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 497
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markModified()V

    .line 498
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purged all Reader history items for feed id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryAsync()V

    return-void

    :catchall_0
    move-exception v1

    .line 503
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static purgeOldRecordsForFeed(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 392
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 398
    invoke-virtual {p0, v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->GetItemById(Ljava/lang/String;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v4

    if-nez v4, :cond_2

    .line 403
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    .line 410
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->ignoreGoogleReaderReadStatus()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isReadSynced()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isStarSynced()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 411
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 417
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 419
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 422
    :cond_4
    sget-object v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> Purged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items from the Item State history for feed "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markModified()V

    .line 428
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeAllItemsFor(Ljava/util/UUID;)V
    .locals 2

    .line 363
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 368
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markModified()V

    return-void

    :catchall_0
    move-exception p0

    .line 369
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static saveHistoryAsync()V
    .locals 2

    .line 575
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_StateSaverRunnnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_StateSaverRunnnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static saveHistoryInternal()V
    .locals 12

    .line 677
    sget-boolean v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_Saving:Z

    if-nez v0, :cond_a

    sget v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_ModificationChangeCount:I

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v0, 0x1

    .line 680
    sput-boolean v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_Saving:Z

    .line 683
    sget-object v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v2, "Saving Item history()..."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 686
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 691
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 694
    sget-object v6, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v7, v0

    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/UUID;

    .line 697
    invoke-static {v8}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v9

    if-nez v9, :cond_2

    .line 699
    sget-object v8, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v9, "Found and ignored a history record for a non existing feed..."

    .line 700
    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_2
    sget-object v9, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lez v9, :cond_1

    .line 707
    :try_start_4
    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 708
    sget-object v7, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 710
    sget-object v7, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 712
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 713
    sget-object v10, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    invoke-virtual {v9, v3}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->write(Ljava/io/DataOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_3
    move v7, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move v7, v4

    goto :goto_3

    :catch_1
    move-exception v3

    move v7, v4

    goto :goto_5

    .line 718
    :cond_4
    :try_start_5
    invoke-static {v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 719
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_6

    .line 739
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_6

    :catch_2
    move-exception v0

    .line 743
    :try_start_7
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v5, "Unable to save download history: "

    :goto_2
    invoke-static {v3, v5, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_5

    :catch_5
    move-exception v3

    move v7, v0

    move-object v0, v3

    :goto_3
    move-object v3, v5

    goto :goto_4

    :catch_6
    move-exception v3

    move v7, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v3

    goto/16 :goto_8

    :catch_7
    move-exception v5

    move v7, v0

    move-object v0, v5

    .line 731
    :goto_4
    :try_start_8
    sget-object v5, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v6, "Unable to save download history: "

    invoke-static {v5, v6, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_6

    .line 739
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :catch_8
    move-exception v0

    .line 743
    :try_start_a
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v5, "Unable to save download history: "
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catch_9
    move-exception v5

    move v7, v0

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    .line 722
    :goto_5
    :try_start_b
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ENOSPC"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 723
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v6

    const-string v8, "Not enough free space on device to save item state!"

    .line 725
    invoke-static {v6, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 727
    :cond_5
    sget-object v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "I/O ERROR - Cannot save download history: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_6

    .line 739
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_6

    :catch_a
    move-exception v0

    .line 743
    :try_start_d
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v5, "Unable to save download history: "
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_2

    .line 751
    :cond_6
    :goto_6
    :try_start_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_7

    .line 755
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 757
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 758
    sput v4, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_ModificationChangeCount:I

    goto :goto_7

    .line 760
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_8

    .line 762
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->itemHistoryFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 763
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 764
    sput v4, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_ModificationChangeCount:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_7

    :catch_b
    move-exception v0

    .line 769
    :try_start_f
    sget-object v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v3, "Unable to copy download history! "

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 772
    :cond_8
    :goto_7
    sput-boolean v4, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_Saving:Z

    .line 773
    sget-object v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v2, "Item history Save Completed!"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    return-void

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v5, :cond_9

    .line 739
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_9

    :catch_c
    move-exception v2

    .line 743
    :try_start_11
    sget-object v3, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    const-string v4, "Unable to save download history: "

    invoke-static {v3, v4, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    :cond_9
    :goto_9
    throw v0

    :catchall_2
    move-exception v0

    .line 775
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public static saveHistorySync()V
    .locals 1

    .line 581
    sget-boolean v0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_Saving:Z

    if-nez v0, :cond_0

    .line 583
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryInternal()V

    :cond_0
    return-void
.end method

.method public static setItemAsRead(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 256
    :try_start_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getOrCreateItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    move-result-object v1

    .line 258
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->logFirstReaderStatusChange(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 260
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->setRead()V

    .line 261
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markModified()V

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->autoSaveHistory()V

    return-void

    :catchall_0
    move-exception p0

    .line 262
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setItemAsStarred(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 5

    .line 292
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getOrCreateItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    move-result-object v1

    .line 296
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->logFirstReaderStatusChange(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 298
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isFeedlyItemKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    sget-object v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** Starred reader post: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeed:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->setStarred()V

    .line 303
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markModified()V

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->autoSaveHistory()V

    return-void

    :catchall_0
    move-exception p0

    .line 304
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setItemsAsReadUnread(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;Z)V"
        }
    .end annotation

    .line 515
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 517
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 519
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 521
    iget-boolean v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->IsGoogleReadLocked:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->ignoreGoogleReaderReadStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 524
    :cond_2
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getOrCreateItemStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    move-result-object v2

    .line 525
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->logFirstReaderStatusChange(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    if-eqz p1, :cond_3

    .line 528
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->setRead()V

    goto :goto_1

    .line 530
    :cond_3
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->clearRead()V

    .line 532
    :goto_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->clearGoogleRead()V

    .line 534
    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_ModificationChangeCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->_ModificationChangeCount:I

    goto :goto_0

    .line 537
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryAsync()V

    return-void

    :catchall_0
    move-exception p0

    .line 537
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
