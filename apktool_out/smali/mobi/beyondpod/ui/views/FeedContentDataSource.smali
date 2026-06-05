.class public Lmobi/beyondpod/ui/views/FeedContentDataSource;
.super Ljava/lang/Object;
.source "FeedContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;,
        Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;,
        Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedContentDataSource"

.field private static _AsyncLoader:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync; = null

.field private static _CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener; = null

.field private static volatile _CurrentFeed:Lmobi/beyondpod/rsscore/Feed; = null

.field private static volatile _CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed; = null

.field private static _IsLoadingData:Z = false

.field static _Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private static _LoadListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

.field private static _LoadStartTime:J

.field private static _OrphanedTracks:Lmobi/beyondpod/rsscore/TrackList;

.field private static _ParseException:Ljava/lang/Exception;

.field static _SavedItemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static _SavedItemIdsTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    .line 394
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_OrphanedTracks:Lmobi/beyondpod/rsscore/TrackList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static FindAllMockRssItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    sget-object v1, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 385
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic access$100()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 42
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method static synthetic access$1000(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;I)Z
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->allowItemForCurrentFilter(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;
    .locals 0

    .line 42
    sput-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object p0
.end method

.method static synthetic access$1100(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 0

    .line 42
    invoke-static {p0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->addItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Exception;
    .locals 1

    .line 42
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_ParseException:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .line 42
    sput-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_ParseException:Ljava/lang/Exception;

    return-object p0
.end method

.method static synthetic access$300()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
    .locals 1

    .line 42
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    return-object v0
.end method

.method static synthetic access$302(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
    .locals 0

    .line 42
    sput-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    return-object p0
.end method

.method static synthetic access$400()Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;
    .locals 1

    .line 42
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 42
    sput-boolean p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_IsLoadingData:Z

    return p0
.end method

.method static synthetic access$600()J
    .locals 2

    .line 42
    sget-wide v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_LoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$602(J)J
    .locals 0

    .line 42
    sput-wide p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_LoadStartTime:J

    return-wide p0
.end method

.method static synthetic access$700()Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;
    .locals 1

    .line 42
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_LoadListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    return-object v0
.end method

.method static synthetic access$800(Z)V
    .locals 0

    .line 42
    invoke-static {p0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->mergeOrphanEpisodesForFeed(Z)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static addItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 415
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->htmlDecode(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->cleanTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 419
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    .line 420
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->shortTaglessDescription()Ljava/lang/String;

    .line 421
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static allowItemForCurrentFilter(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;I)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 581
    :pswitch_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 583
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 584
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 576
    :pswitch_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p0

    if-eqz p0, :cond_0

    return v0

    .line 571
    :pswitch_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :pswitch_3
    return v0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static clearItems()V
    .locals 1

    .line 500
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 501
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_OrphanedTracks:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    const/4 v0, 0x0

    .line 502
    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 503
    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    .line 504
    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIds:Ljava/util/ArrayList;

    .line 506
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;->onCollectionChanged()V

    :cond_0
    return-void
.end method

.method public static currentFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 138
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public static currentFeedHasLocalEpisodes()Z
    .locals 1

    .line 661
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasPodcasts()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static currentFeedHasReadItems()Z
    .locals 4

    .line 647
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 650
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 652
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private static currentFeedTimeStamp()J
    .locals 3

    .line 74
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 77
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getCachedFileDate(Landroid/net/Uri;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :cond_1
    return-wide v1
.end method

.method public static currentFeedUnreadItemsCount()I
    .locals 4

    .line 678
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 682
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 684
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
    .locals 1

    .line 133
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    return-object v0
.end method

.method public static filterItems(I)V
    .locals 2

    .line 549
    sget-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 551
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p0

    iget-object p0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 553
    sget-object v1, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getItemFilter()I

    move-result v1

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->allowItemForCurrentFilter(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    invoke-static {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->addItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 557
    invoke-static {p0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->mergeOrphanEpisodesForFeed(Z)V

    .line 559
    sget-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    if-eqz p0, :cond_2

    .line 560
    sget-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    invoke-interface {p0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;->onCollectionChanged()V

    :cond_2
    return-void
.end method

.method public static getItemById(Ljava/lang/String;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 3

    .line 487
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 489
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNextPrevItem(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 1

    .line 477
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, p0

    if-ltz p1, :cond_1

    .line 479
    sget-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-le p1, p0, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    sget-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasEnclosures()Z
    .locals 3

    .line 633
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 636
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 638
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static hasHiddenItems()Z
    .locals 2

    .line 600
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->visibleItemCount()I

    move-result v0

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->totalItemCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasReadItems()Z
    .locals 4

    .line 605
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 608
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 610
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static hasUnReadItems()Z
    .locals 4

    .line 619
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 622
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 624
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static hideReadItems()V
    .locals 3

    .line 531
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 533
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 535
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    invoke-static {v1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->addItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 539
    invoke-static {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->mergeOrphanEpisodesForFeed(Z)V

    .line 541
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    if-eqz v0, :cond_2

    .line 542
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;->onCollectionChanged()V

    :cond_2
    return-void
.end method

.method public static isDataLoaded()Z
    .locals 1

    .line 432
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v0, :cond_0

    sget-boolean v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_IsLoadingData:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmpty()Z
    .locals 1

    .line 512
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEpisodeOnlyFilter(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isItemsFiltered()Z
    .locals 1

    .line 435
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getItemFilter()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLoadingData()Z
    .locals 1

    .line 427
    sget-boolean v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_IsLoadingData:Z

    return v0
.end method

.method public static items()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;"
        }
    .end annotation

    .line 143
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static loadItems(Lmobi/beyondpod/rsscore/Feed;Z)V
    .locals 6

    .line 84
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_AsyncLoader:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_AsyncLoader:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_AsyncLoader:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->cancel(Z)Z

    .line 87
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->TAG:Ljava/lang/String;

    const-string v2, "Found that FeedContentData is currently loading! Canceling the existing load..."

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_1

    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-ne v0, p0, :cond_1

    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasNewContent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isDataLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move p1, v1

    .line 101
    :cond_2
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-ne v0, p0, :cond_3

    sget-wide v2, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIdsTimestamp:J

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeedTimeStamp()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    .line 105
    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIds:Ljava/util/ArrayList;

    .line 110
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasNewContent()Z

    move-result v0

    if-nez v0, :cond_5

    move p1, v1

    :cond_5
    if-eqz p1, :cond_6

    .line 118
    new-instance p1, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;

    invoke-direct {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;-><init>()V

    sput-object p1, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_AsyncLoader:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;

    .line 119
    sget-object p1, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_AsyncLoader:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;

    new-array v0, v1, [Lmobi/beyondpod/rsscore/Feed;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 123
    :cond_6
    sget-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_LoadListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    if-eqz p0, :cond_7

    .line 125
    sget-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_LoadListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    invoke-interface {p0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;->onLoadStarted()V

    .line 126
    sget-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_LoadListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isDataLoaded()Z

    move-result p1

    invoke-interface {p0, p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;->onLoadCompleted(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method private static mergeOrphanEpisodesForFeed(Z)V
    .locals 0

    .line 334
    sget-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_OrphanedTracks:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    return-void
.end method

.method private static refreshOrphanedTracks()V
    .locals 4

    .line 398
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_OrphanedTracks:Lmobi/beyondpod/rsscore/TrackList;

    .line 399
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_OrphanedTracks:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->appendTo(Ljava/util/List;)V

    .line 400
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 402
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    sget-object v2, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v2

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    sget-object v2, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_OrphanedTracks:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/rsscore/TrackList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_1
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_OrphanedTracks:Lmobi/beyondpod/rsscore/TrackList;

    new-instance v1, Lmobi/beyondpod/rsscore/TrackSorter;

    sget-object v2, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getLocalOrInheritedTrackSortOrder()I

    move-result v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static restoreCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 2

    .line 465
    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 466
    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIds:Ljava/util/ArrayList;

    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIds:Ljava/util/ArrayList;

    .line 467
    iget-wide v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIdsTimeStamp:J

    sput-wide v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIdsTimestamp:J

    .line 468
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 469
    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    sput-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    .line 471
    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 472
    iget-object p0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItems:Ljava/util/ArrayList;

    sput-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public static saveCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 2

    .line 445
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    iput-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 447
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isItemsFiltered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    iput-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItems:Ljava/util/ArrayList;

    .line 450
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iput-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    .line 451
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeedTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIdsTimeStamp:J

    return-void
.end method

.method public static setCollectionChangedListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;)V
    .locals 0

    .line 67
    sput-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    return-void
.end method

.method public static setLoadListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;)V
    .locals 0

    .line 60
    sput-object p0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_LoadListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    return-void
.end method

.method public static showAllReadItems()V
    .locals 2

    .line 517
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 518
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 520
    invoke-static {v1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->addItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 523
    invoke-static {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->mergeOrphanEpisodesForFeed(Z)V

    .line 525
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    if-eqz v0, :cond_1

    .line 526
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CollectionListener:Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;->onCollectionChanged()V

    :cond_1
    return-void
.end method

.method public static totalItemCount()I
    .locals 2

    .line 698
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_OrphanedTracks:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static unreadItemsCount()I
    .locals 4

    .line 667
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 669
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static visibleItemCount()I
    .locals 1

    .line 693
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
