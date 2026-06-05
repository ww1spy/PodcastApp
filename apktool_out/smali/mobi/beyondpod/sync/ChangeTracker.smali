.class public Lmobi/beyondpod/sync/ChangeTracker;
.super Ljava/lang/Object;
.source "ChangeTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangeTracker"

.field private static final _EnclosureStreamableTrackAddedEnabled:Z = true

.field private static final _EpisodeDeletionsTrackingEnabled:Z = true

.field private static final _EpisodePlayedTrackingEnabled:Z = true

.field private static final _FeedTrackingEnabled:Z = true

.field private static _IsInitialized:Z = false

.field private static final _PostTrackingEnabled:Z = false

.field private static _RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

.field private static _SaveHistoryRunnable:Ljava/lang/Runnable;

.field private static _SavingHistory:Z

.field private static final m_history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    sput-object v0, Lmobi/beyondpod/sync/ChangeTracker;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    .line 447
    new-instance v0, Lmobi/beyondpod/sync/ChangeTracker$1;

    invoke-direct {v0}, Lmobi/beyondpod/sync/ChangeTracker$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/sync/ChangeTracker;->_SaveHistoryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 49
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->saveHistoryInternal()V

    return-void
.end method

.method public static addLocalEpisodeDeletedChange(Lmobi/beyondpod/rsscore/Track;)V
    .locals 4

    .line 220
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    sget-boolean v0, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z

    if-nez v0, :cond_0

    .line 225
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v0, "Trying to add tracked Episode change before initializing the change tracking repository!"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 230
    :cond_0
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 232
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------addLocalEpisodeDeletedChange was ignored because change tracking is temporary disabled for episode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iput-boolean v1, p0, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 241
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------addLocalEpisodeDeletedChange was ignored because episode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " belongs to a virtual feed!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 247
    :cond_2
    new-instance v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;-><init>(ILmobi/beyondpod/rsscore/Track;)V

    const/16 p0, 0x12c

    invoke-static {v0, p0}, Lmobi/beyondpod/sync/ChangeTracker;->addPendingChangeInternal(Lmobi/beyondpod/sync/TrackedChangeBase;I)V

    return-void

    :cond_3
    return-void
.end method

.method public static addLocalEpisodePlayedChange(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 171
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    sget-boolean v0, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z

    if-nez v0, :cond_0

    .line 176
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v0, "Trying to addLocalEpisodePlayedChange before initializing the change tracking repository!"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 183
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------addLocalEpisodePlayedChange was ignored because the episode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' belongs to a virtual feed!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_1
    new-instance v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;-><init>(ILmobi/beyondpod/rsscore/Track;)V

    const/16 p0, 0x12c

    invoke-static {v0, p0}, Lmobi/beyondpod/sync/ChangeTracker;->addPendingChangeInternal(Lmobi/beyondpod/sync/TrackedChangeBase;I)V

    return-void

    :cond_2
    return-void
.end method

.method public static addLocalEpisodeUpdatedChange(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 196
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    sget-boolean v0, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z

    if-nez v0, :cond_0

    .line 201
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v0, "Trying to addLocalEpisodeUpdatedChange before initializing the change tracking repository!"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 208
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------addLocalEpisodeUpdatedChange was ignored because the episode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' belongs to a virtual feed!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_1
    new-instance v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;-><init>(ILmobi/beyondpod/rsscore/Track;)V

    const/16 p0, 0x12c

    invoke-static {v0, p0}, Lmobi/beyondpod/sync/ChangeTracker;->addPendingChangeInternal(Lmobi/beyondpod/sync/TrackedChangeBase;I)V

    return-void

    :cond_2
    return-void
.end method

.method public static addLocalFeedChange(ILmobi/beyondpod/rsscore/Feed;I)V
    .locals 2

    .line 306
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    sget-boolean v0, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z

    if-nez v0, :cond_0

    .line 311
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string p1, "Trying to add tracked feed change before initializing the change tracking repository!"

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_0
    iget-boolean v0, p1, Lmobi/beyondpod/rsscore/Feed;->changeTrackingEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 318
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string p2, "-------Change ignored because was disabled for the current feed!"

    invoke-static {p0, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iput-boolean v1, p1, Lmobi/beyondpod/rsscore/Feed;->changeTrackingEnabled:Z

    return-void

    .line 323
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 325
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string p1, "-------Change ignored because the feed is a Virtual feed!"

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eq p0, v1, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/16 v0, 0xe

    if-ne p0, v0, :cond_3

    goto :goto_0

    .line 337
    :cond_3
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string p1, "-------Change ignored because CHANGE_TYPE_FEED_DELETED is not allowed!"

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :cond_4
    :goto_0
    new-instance v0, Lmobi/beyondpod/sync/TrackedChangeFeed;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/sync/TrackedChangeFeed;-><init>(ILmobi/beyondpod/rsscore/Feed;)V

    invoke-static {v0, p2}, Lmobi/beyondpod/sync/ChangeTracker;->addPendingChangeInternal(Lmobi/beyondpod/sync/TrackedChangeBase;I)V

    :goto_1
    return-void

    :cond_5
    return-void
.end method

.method public static addLocalPostChange(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 0

    .line 343
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    return-void
.end method

.method public static addLocalStreamableEpisodeAddedChange(Lmobi/beyondpod/rsscore/Track;)V
    .locals 11

    .line 268
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    sget-boolean v0, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z

    if-nez v0, :cond_0

    .line 273
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v0, "Trying to add tracked Episode change before initializing the change tracking repository!"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v0, "addLocalStreamableEpisodeAddedChange is not supported for Virtual feeds. Ignoring..."

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_1
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    if-nez v0, :cond_2

    .line 289
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------addLocalStreamableEpisodeAddedChange was ignored because was temporary disabled for episode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    return-void

    .line 296
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPostUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 298
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 296
    invoke-static/range {v1 .. v9}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->buildMockRssItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p0

    .line 300
    new-instance v0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;

    const/4 v1, 0x4

    .line 301
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;-><init>(ILmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    const/16 p0, 0x12c

    .line 300
    invoke-static {v0, p0}, Lmobi/beyondpod/sync/ChangeTracker;->addPendingChangeInternal(Lmobi/beyondpod/sync/TrackedChangeBase;I)V

    return-void

    :cond_3
    return-void
.end method

.method private static addPendingChangeInternal(Lmobi/beyondpod/sync/TrackedChangeBase;I)V
    .locals 2

    const/4 v0, 0x2

    .line 358
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->setSyncStatus(I)V

    .line 360
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 362
    :try_start_0
    invoke-static {p0}, Lmobi/beyondpod/sync/ChangeTracker;->findExistingUpPendingChangeFor(Lmobi/beyondpod/sync/TrackedChangeBase;)Lmobi/beyondpod/sync/TrackedChangeBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->updateTo(Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 370
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromSeconds(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleSyncTaskIfSyncIsEnabled(ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Z

    .line 371
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->saveHistoryAsync()V

    return-void

    :catchall_0
    move-exception p0

    .line 368
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static addPendingRemoteChanges(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastRemoteChangeTimeStamp()J

    move-result-wide v0

    if-eqz p0, :cond_4

    .line 133
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 135
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 137
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 139
    invoke-virtual {v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->syncStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_2

    .line 142
    :cond_1
    invoke-static {v3}, Lmobi/beyondpod/sync/ChangeTracker;->findExistingDownPendingChangeFor(Lmobi/beyondpod/sync/TrackedChangeBase;)Lmobi/beyondpod/sync/TrackedChangeBase;

    move-result-object v4

    .line 144
    sget-object v5, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   --- DOWN sync =>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    if-eqz v4, :cond_2

    .line 147
    invoke-virtual {v4, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->updateTo(Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_1

    .line 149
    :cond_2
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_1
    invoke-virtual {v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 153
    invoke-virtual {v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v0

    goto :goto_0

    .line 155
    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->saveHistoryAsync()V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 155
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 160
    :cond_4
    :goto_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastRemoteChangeTimeStamp()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-eqz p0, :cond_5

    .line 163
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->setLastRemoteChangeTimeStamp(J)V

    .line 164
    sget-object p0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --- Last remote change timestamp moved to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :cond_5
    return-void
.end method

.method public static allowRemoteEpisodeAdditions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static allowRemoteEpisodeDeletions()Z
    .locals 1

    .line 109
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSAllowRemoteEpisodeDeletions()Z

    move-result v0

    return v0
.end method

.method public static allowRemoteEpisodeModifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static allowRemoteFeedAdditions()Z
    .locals 2

    .line 89
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSAllowRemoteFeeds()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static allowRemoteFeedDeletions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static allowRemoteFeedModifications()Z
    .locals 1

    .line 94
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->allowRemoteFeedAdditions()Z

    move-result v0

    return v0
.end method

.method public static alwaysAcceptRemoteFeedPush()Z
    .locals 2

    .line 99
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSAllowRemoteFeeds()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static applyPendingRemoteChangesSync()I
    .locals 7

    .line 615
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 620
    :cond_0
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->clear()V

    .line 622
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    monitor-enter v0

    .line 624
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 628
    invoke-virtual {v4}, Lmobi/beyondpod/sync/TrackedChangeBase;->syncStatus()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 629
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 635
    sget-object v3, Lmobi/beyondpod/sync/TrackedChangeBase;->TimestampComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 637
    sget-object v3, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " --- Applying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " remote changes..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 639
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 641
    invoke-virtual {v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->applyRemoteChange()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 645
    :cond_3
    sget-object v2, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v3, " --- Changes applied!"

    invoke-static {v2, v3, v5}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 649
    :cond_4
    sget-object v2, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v3, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 651
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->saveHistoryAsync()V

    .line 654
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 656
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-nez v0, :cond_5

    .line 658
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --- Refreshing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmobi/beyondpod/sync/ChangeTracker;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " recently imported feeds..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startQuickUpdate(Lmobi/beyondpod/rsscore/FeedList;)V

    .line 660
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->clear()V

    :cond_5
    return v1

    :catchall_0
    move-exception v1

    .line 651
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static cleanAllRecords()V
    .locals 1

    const/4 v0, 0x0

    .line 574
    invoke-static {v0}, Lmobi/beyondpod/sync/ChangeTracker;->cleanRecordsInternal(Z)V

    return-void
.end method

.method private static cleanRecordsInternal(Z)V
    .locals 11

    .line 581
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    monitor-enter v0

    .line 583
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 585
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 586
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x2

    const/4 v4, -0x1

    .line 587
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 588
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 590
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/sync/TrackedChangeBase;

    if-eqz p0, :cond_1

    .line 592
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lmobi/beyondpod/sync/ChangeTracker;->isStaleRecord(Lmobi/beyondpod/sync/TrackedChangeBase;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 594
    :cond_1
    sget-object v6, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cleaning "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    const-string v8, "stale"

    goto :goto_1

    :cond_2
    const-string v8, ""

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " record for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    .line 597
    invoke-virtual {v5}, Lmobi/beyondpod/sync/TrackedChangeBase;->rowID()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_3

    .line 598
    invoke-virtual {v5}, Lmobi/beyondpod/sync/TrackedChangeBase;->markDeleted()V

    goto :goto_0

    .line 600
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    :cond_4
    sget-object v2, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 605
    sget-object v1, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Cleaned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_5

    const-string p0, " stale"

    goto :goto_2

    :cond_5
    const-string p0, ""

    :goto_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sync records"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 606
    invoke-static {v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_6

    .line 610
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->saveHistoryAsync()V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 607
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static cleanStaleRecords()V
    .locals 1

    const/4 v0, 0x1

    .line 569
    invoke-static {v0}, Lmobi/beyondpod/sync/ChangeTracker;->cleanRecordsInternal(Z)V

    return-void
.end method

.method public static deviceID()Ljava/lang/String;
    .locals 3

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpHistory()V
    .locals 7

    .line 522
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v1, "*************** Unsynchronized Changes **************"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 526
    sget-object v1, Lmobi/beyondpod/sync/TrackedChangeBase;->TimestampComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 531
    invoke-static {v3}, Lmobi/beyondpod/sync/ChangeTracker;->isChangeUploadPending(Lmobi/beyondpod/sync/TrackedChangeBase;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lmobi/beyondpod/sync/ChangeTracker;->isChangeDownPending(Lmobi/beyondpod/sync/TrackedChangeBase;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 534
    sget-object v4, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   * "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_2
    sget-object v1, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "********** Dump Completed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " records *******************"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static findExistingDownPendingChangeFor(Lmobi/beyondpod/sync/TrackedChangeBase;)Lmobi/beyondpod/sync/TrackedChangeBase;
    .locals 4

    .line 388
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 390
    invoke-virtual {v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->messageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->messageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->changeType()I

    move-result v2

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->changeType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 391
    invoke-static {v1}, Lmobi/beyondpod/sync/ChangeTracker;->isChangeDownPending(Lmobi/beyondpod/sync/TrackedChangeBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findExistingUpPendingChangeFor(Lmobi/beyondpod/sync/TrackedChangeBase;)Lmobi/beyondpod/sync/TrackedChangeBase;
    .locals 4

    .line 376
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 378
    invoke-virtual {v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->messageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->messageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->changeType()I

    move-result v2

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->changeType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 379
    invoke-static {v1}, Lmobi/beyondpod/sync/ChangeTracker;->isChangeUploadPending(Lmobi/beyondpod/sync/TrackedChangeBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasUploadPendingChanges()Z
    .locals 4

    .line 683
    sget-boolean v0, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 686
    :cond_0
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    monitor-enter v0

    .line 688
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 690
    invoke-static {v3}, Lmobi/beyondpod/sync/ChangeTracker;->isChangeUploadPending(Lmobi/beyondpod/sync/TrackedChangeBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 691
    monitor-exit v0

    return v1

    .line 693
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

.method private static history()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;"
        }
    .end annotation

    .line 126
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static initializeHistory()V
    .locals 5

    .line 410
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v1, "Change Tracking is not configured! Ignoring..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 416
    :cond_0
    sget-boolean v0, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z

    if-eqz v0, :cond_1

    .line 418
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v1, "Change Tracking already initialized! Ignoring..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 422
    :cond_1
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 427
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

    .line 428
    :try_start_1
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadTrackedChanges(Ljava/util/ArrayList;)V

    .line 429
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " change tracking records!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 430
    sput-boolean v0, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

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

    .line 434
    :goto_0
    :try_start_2
    sget-object v2, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load the change history from database"

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 439
    :goto_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 444
    :cond_2
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->cleanStaleRecords()V

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_3
    throw v0
.end method

.method private static isChangeDownPending(Lmobi/beyondpod/sync/TrackedChangeBase;)Z
    .locals 1

    .line 405
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->isMarkedForDeletion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->syncStatus()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isChangeUploadPending(Lmobi/beyondpod/sync/TrackedChangeBase;)Z
    .locals 1

    .line 400
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->isMarkedForDeletion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->syncStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDeviceTimeCorrect(Ljava/util/Date;)Z
    .locals 6

    .line 713
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 714
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 715
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 678
    sget-boolean v0, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z

    return v0
.end method

.method private static isStaleRecord(Lmobi/beyondpod/sync/TrackedChangeBase;J)Z
    .locals 4

    .line 668
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->syncStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 669
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->syncStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 672
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v2

    cmp-long p0, p1, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method public static isSyncLicenseValid()Z
    .locals 1

    .line 84
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifCDSRestricted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isTrackingConfigured()Z
    .locals 1

    .line 77
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTrackingEnabled()Z
    .locals 1

    .line 72
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isSyncLicenseValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static onFeedImported(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 67
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static pendingUploadChanges()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    sget-boolean v1, Lmobi/beyondpod/sync/ChangeTracker;->_IsInitialized:Z

    if-nez v1, :cond_0

    .line 548
    sget-object v1, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v2, "Trying to add tracked change before initializing the change tracking repository!"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 553
    :cond_0
    sget-object v1, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    monitor-enter v1

    .line 555
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 557
    invoke-static {v3}, Lmobi/beyondpod/sync/ChangeTracker;->isChangeUploadPending(Lmobi/beyondpod/sync/TrackedChangeBase;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 558
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 560
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    sget-object v1, Lmobi/beyondpod/sync/TrackedChangeBase;->TimestampComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 560
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static saveHistoryAsync()V
    .locals 4

    .line 458
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/sync/ChangeTracker;->_SaveHistoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/sync/ChangeTracker;->_SaveHistoryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static saveHistoryInternal()V
    .locals 8

    .line 466
    sget-object v0, Lmobi/beyondpod/sync/ChangeTracker;->m_history:Ljava/util/ArrayList;

    monitor-enter v0

    .line 468
    :try_start_0
    sget-boolean v1, Lmobi/beyondpod/sync/ChangeTracker;->_SavingHistory:Z

    if-eqz v1, :cond_0

    .line 469
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 471
    sput-boolean v1, Lmobi/beyondpod/sync/ChangeTracker;->_SavingHistory:Z

    const/4 v1, 0x0

    .line 474
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    .line 479
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

    .line 480
    :try_start_2
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->beginTransaction()V

    .line 482
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 484
    invoke-virtual {v5}, Lmobi/beyondpod/sync/TrackedChangeBase;->isNew()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lmobi/beyondpod/sync/TrackedChangeBase;->isModified()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 486
    :cond_2
    invoke-virtual {v5}, Lmobi/beyondpod/sync/TrackedChangeBase;->prepareForSave()V

    .line 487
    invoke-virtual {v4, v5}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->saveTrackedChange(Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 490
    :cond_3
    invoke-virtual {v5}, Lmobi/beyondpod/sync/TrackedChangeBase;->isMarkedForDeletion()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    invoke-virtual {v4, v5}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->deleteTrackedChange(Lmobi/beyondpod/sync/TrackedChangeBase;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 493
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    :cond_4
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_5

    .line 507
    :try_start_3
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 508
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 512
    :cond_5
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 513
    :goto_1
    sput-boolean v3, Lmobi/beyondpod/sync/ChangeTracker;->_SavingHistory:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    .line 501
    :goto_2
    :try_start_4
    sget-object v5, Lmobi/beyondpod/sync/ChangeTracker;->TAG:Ljava/lang/String;

    const-string v6, "failed to save change history to the database!"

    invoke-static {v5, v6, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_6

    .line 507
    :try_start_5
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 508
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 512
    :cond_6
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 515
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :goto_4
    if-eqz v4, :cond_7

    .line 507
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 508
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 512
    :cond_7
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->history()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 513
    sput-boolean v3, Lmobi/beyondpod/sync/ChangeTracker;->_SavingHistory:Z

    throw v1

    :catchall_2
    move-exception v1

    .line 515
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
