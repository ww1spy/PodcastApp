.class public Lmobi/beyondpod/sync/TrackedChangeFeed;
.super Lmobi/beyondpod/sync/TrackedChangeBase;
.source "TrackedChangeFeed.java"


# static fields
.field private static final BLOB_CAT_1:I = 0x2

.field private static final BLOB_CAT_2:I = 0x3

.field private static final BLOB_CLEANUP_DAYS:I = 0x9

.field private static final BLOB_CLEANUP_NUM_EPISODES:I = 0x8

.field private static final BLOB_ENCLOSURE_ACTION:I = 0x6

.field private static final BLOB_ENCLOSURE_INDEX:I = 0xa

.field private static final BLOB_EPISODES_TO_GET:I = 0x7

.field private static final BLOB_EPISODE_SORT_ORDER:I = 0xb

.field private static final BLOB_FEED_NAME:I = 0x1

.field private static final BLOB_FEED_TYPE:I = 0x4

.field private static final BLOB_FEED_URL:I = 0x0

.field private static final BLOB_ITEM_SORT_ORDER:I = 0xc

.field private static final BLOB_NUM_READER_ITEMS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TrackedChangeFeed"


# instance fields
.field private _Category1:Ljava/lang/String;

.field private _Category2:Ljava/lang/String;

.field private _EnclosureAction:I

.field private _EnclosureIndex:I

.field private _EpisodeSortOrder:I

.field private _FeedName:Ljava/lang/String;

.field private _FeedType:I

.field private _FeedUrl:Ljava/lang/String;

.field private _ItemSortOrder:I

.field private _NumDaysToKeep:I

.field private _NumEpisodesToGet:I

.field private _NumEpisodesToKeep:I

.field private _NumReaderItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Lmobi/beyondpod/sync/TrackedChangeBase;-><init>(I)V

    .line 61
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedName:Ljava/lang/String;

    .line 63
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category1:Ljava/lang/String;

    .line 64
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category2:Ljava/lang/String;

    .line 66
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedType:I

    .line 67
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumGReaderItemsToGet()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumReaderItems:I

    .line 68
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureAction:I

    .line 69
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToGet:I

    .line 70
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToKeep:I

    .line 71
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumDaysToKeep:I

    .line 72
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getTrackSortOrder()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EpisodeSortOrder:I

    .line 73
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getPreferredEnclosureIndex()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureIndex:I

    .line 74
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getForceFeedItemSort()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_ItemSortOrder:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JIILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p6}, Lmobi/beyondpod/sync/TrackedChangeBase;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->parseBlob()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 54
    :goto_0
    array-length p3, p1

    if-eq p2, p3, :cond_0

    .line 55
    aget-object p3, p1, p2

    invoke-virtual {p0, p2, p3}, Lmobi/beyondpod/sync/TrackedChangeFeed;->loadFromBlob(ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findOrCreateCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 2

    .line 257
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object p1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p1

    .line 260
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 261
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v0, v1, :cond_1

    .line 265
    :try_start_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->addCategory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    sget-object p1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p1

    .line 273
    :cond_1
    :goto_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    return-object p1
.end method

.method private handleFeedAdded(Z)V
    .locals 4

    .line 206
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->allowRemoteFeedAdditions()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    sget-object p1, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   --- APPLY sync FEED ADDED. Remote feed additions are disabled! Ignoring... feed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {p1, v0, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto/16 :goto_1

    .line 208
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-nez p1, :cond_5

    .line 210
    iget-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/rsscore/Feed;->createAndAddFeedWithDefaults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    const-string v1, "google.com/reader/atom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    .line 213
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    .line 215
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->category1()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->findOrCreateCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->category2()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/sync/TrackedChangeFeed;->findOrCreateCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    .line 218
    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    if-eq v2, v0, :cond_3

    .line 220
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setPrimary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 223
    :cond_3
    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    if-eq v2, v1, :cond_4

    .line 225
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setSecondary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    :cond_4
    const/4 v2, 0x0

    .line 228
    iput-boolean v2, p1, Lmobi/beyondpod/rsscore/Feed;->changeTrackingEnabled:Z

    .line 233
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 235
    invoke-static {p1}, Lmobi/beyondpod/sync/ChangeTracker;->onFeedImported(Lmobi/beyondpod/rsscore/Feed;)V

    .line 237
    sget-object p1, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   --- APPLY sync FEED ADDED. feed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_1

    .line 241
    :cond_5
    sget-object p1, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   --- APPLY sync FEED ADDED. feed already exist! Ignoring... feed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {p1, v0, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_1
    const/4 p1, 0x4

    .line 252
    invoke-virtual {p0, p1}, Lmobi/beyondpod/sync/TrackedChangeFeed;->updateSyncStatusTo(I)V

    return-void
.end method

.method private handleFeedDeleted()V
    .locals 3

    .line 171
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 173
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->allowRemoteFeedDeletions()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 177
    iput-boolean v1, v0, Lmobi/beyondpod/rsscore/Feed;->changeTrackingEnabled:Z

    .line 183
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->disableChangeTracking()V

    .line 185
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteFeedAndRelatedFoldersSync(Lmobi/beyondpod/rsscore/Feed;)V

    .line 186
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync FEED DELETED. feed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 190
    :cond_0
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync FEED DELETED. feed does not exist! Ignoring... feed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 196
    :cond_1
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync FEED DELETED. Remote feed deletions are disabled! Ignoring... feed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_0
    const/4 v0, 0x4

    .line 201
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->updateSyncStatusTo(I)V

    return-void
.end method

.method private handleFeedModified(Z)V
    .locals 5

    .line 278
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 280
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->allowRemoteFeedModifications()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    sget-object p1, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   --- APPLY sync FEED MODIFIED. Remote feed modifications are disabled! Ignoring... feed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {p1, v0, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    const/4 p1, 0x0

    .line 286
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 288
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    move p1, v2

    .line 292
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->category1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/sync/TrackedChangeFeed;->findOrCreateCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    .line 293
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->category2()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmobi/beyondpod/sync/TrackedChangeFeed;->findOrCreateCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    .line 295
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v4

    if-eq v4, v1, :cond_3

    .line 297
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setPrimary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    move p1, v2

    .line 301
    :cond_3
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v4

    if-eq v4, v3, :cond_4

    .line 303
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1, v3}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setSecondary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    move p1, v2

    :cond_4
    if-eqz p1, :cond_5

    .line 363
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 364
    sget-object p1, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync FEED MODIFIED. feed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_1

    .line 368
    :cond_5
    sget-object p1, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   --- APPLY sync FEED MODIFIED. feed is already up to date! feed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {p1, v0, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_1

    .line 374
    :cond_6
    sget-object p1, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   --- APPLY sync FEED MODIFIED. feed does not exist! Ignoring... feed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {p1, v0, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_1
    const/4 p1, 0x4

    .line 385
    invoke-virtual {p0, p1}, Lmobi/beyondpod/sync/TrackedChangeFeed;->updateSyncStatusTo(I)V

    return-void
.end method


# virtual methods
.method public applyRemoteChange()V
    .locals 5

    .line 140
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->syncStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 145
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->updateSyncStatusTo(I)V

    .line 146
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->TAG:Ljava/lang/String;

    const-string v1, "   --- APPLY sync feed change was found for invalid feed and was ignored!"

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->changeType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 153
    invoke-direct {p0, v4}, Lmobi/beyondpod/sync/TrackedChangeFeed;->handleFeedAdded(Z)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->changeType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 156
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->handleFeedDeleted()V

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->changeType()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 159
    invoke-direct {p0, v4}, Lmobi/beyondpod/sync/TrackedChangeFeed;->handleFeedModified(Z)V

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->changeType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_6

    if-nez v0, :cond_5

    .line 163
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->alwaysAcceptRemoteFeedPush()Z

    move-result v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->handleFeedAdded(Z)V

    goto :goto_0

    .line 165
    :cond_5
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->alwaysAcceptRemoteFeedPush()Z

    move-result v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->handleFeedModified(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public category1()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category1:Ljava/lang/String;

    return-object v0
.end method

.method public category2()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category2:Ljava/lang/String;

    return-object v0
.end method

.method public feedName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedName:Ljava/lang/String;

    return-object v0
.end method

.method public feedUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public friendlyName()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .line 475
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 476
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_ChangeType:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_ChangeType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    :cond_0
    if-nez v0, :cond_4

    :cond_1
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_ChangeType:I

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    iget v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_ChangeType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2
.end method

.method protected loadFromBlob(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 446
    :pswitch_0
    invoke-static {p2, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_ItemSortOrder:I

    goto :goto_0

    .line 442
    :pswitch_1
    invoke-static {p2, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EpisodeSortOrder:I

    goto :goto_0

    .line 438
    :pswitch_2
    invoke-static {p2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureIndex:I

    goto :goto_0

    :pswitch_3
    const p1, 0x1869f

    .line 434
    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumDaysToKeep:I

    goto :goto_0

    .line 430
    :pswitch_4
    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToKeep:I

    goto :goto_0

    .line 426
    :pswitch_5
    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToGet:I

    goto :goto_0

    .line 422
    :pswitch_6
    invoke-static {p2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureAction:I

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x14

    .line 418
    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumReaderItems:I

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x2

    .line 414
    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedType:I

    goto :goto_0

    .line 410
    :pswitch_9
    iput-object p2, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category2:Ljava/lang/String;

    goto :goto_0

    .line 406
    :pswitch_a
    iput-object p2, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category1:Ljava/lang/String;

    goto :goto_0

    .line 402
    :pswitch_b
    iput-object p2, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedName:Ljava/lang/String;

    goto :goto_0

    .line 398
    :pswitch_c
    iput-object p2, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_MessageId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    iput-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_MessageId:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_MessageId:Ljava/lang/String;

    return-object v0
.end method

.method public prepareForSave()V
    .locals 3

    const/16 v0, 0xd

    .line 454
    new-array v0, v0, [Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 456
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 457
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category1:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 458
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category2:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 459
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 460
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumReaderItems:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 461
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureAction:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 462
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToGet:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 463
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToKeep:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 464
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumDaysToKeep:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 465
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 466
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EpisodeSortOrder:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 467
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_ItemSortOrder:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 469
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->saveToBlob([Ljava/lang/String;)V

    return-void
.end method

.method public updateTo(Lmobi/beyondpod/sync/TrackedChangeBase;)V
    .locals 3

    .line 115
    instance-of v0, p1, Lmobi/beyondpod/sync/TrackedChangeFeed;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to update TrackedChangeFeed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    move-object v0, p1

    check-cast v0, Lmobi/beyondpod/sync/TrackedChangeFeed;

    .line 120
    invoke-super {p0, p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->updateTo(Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 121
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedUrl:Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->category1()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category1:Ljava/lang/String;

    .line 123
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->category2()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_Category2:Ljava/lang/String;

    .line 124
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeFeed;->feedName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedName:Ljava/lang/String;

    .line 126
    iget p1, v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedType:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_FeedType:I

    .line 127
    iget p1, v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumReaderItems:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumReaderItems:I

    .line 128
    iget p1, v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureAction:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureAction:I

    .line 129
    iget p1, v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToGet:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToGet:I

    .line 130
    iget p1, v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToKeep:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumEpisodesToKeep:I

    .line 131
    iget p1, v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumDaysToKeep:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_NumDaysToKeep:I

    .line 132
    iget p1, v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EpisodeSortOrder:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EpisodeSortOrder:I

    .line 133
    iget p1, v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureIndex:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_EnclosureIndex:I

    .line 134
    iget p1, v0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_ItemSortOrder:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeFeed;->_ItemSortOrder:I

    return-void
.end method
