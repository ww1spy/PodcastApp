.class public Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
.super Ljava/lang/Object;
.source "RssFeed.java"


# static fields
.field public static final IMG_ITUNES_KEY:Ljava/lang/String; = "itunes"

.field public static final IMG_RSS_CHILD_ITEM_KEY:Ljava/lang/String; = "rssChildItem"

.field public static final IMG_RSS_KEY:Ljava/lang/String; = "rss"


# instance fields
.field public Description:Ljava/lang/String;

.field public FeedID:Ljava/util/UUID;

.field public FeedImageLinks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public FeedType:I

.field public IgnoreEnclosures:Z

.field public IsSuspectedNotSubscribedInGoogleReader:Z

.field public ItemIDGenerationAlgorithm:I

.field public final Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field public LastRetrievalDate:Ljava/util/Date;

.field public Link:Ljava/lang/String;

.field public PreferredEnclosureIndex:I

.field public PubDate:Ljava/util/Date;

.field public RTL:Z

.field public Title:Ljava/lang/String;

.field public Ttl:Ljava/lang/Integer;

.field _FeedItemDateFormat:Ljava/text/SimpleDateFormat;

.field _VisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_VisibleItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->PreferredEnclosureIndex:I

    .line 50
    iput-boolean v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->IgnoreEnclosures:Z

    const/4 v2, 0x1

    .line 51
    iput v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->ItemIDGenerationAlgorithm:I

    .line 64
    iput-boolean v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->RTL:Z

    .line 135
    iput-boolean v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->IsSuspectedNotSubscribedInGoogleReader:Z

    const-string v1, ""

    .line 57
    iput-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    const-string v1, ""

    .line 58
    iput-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    const-string v1, ""

    .line 59
    iput-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Description:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->PubDate:Ljava/util/Date;

    .line 61
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Ttl:Ljava/lang/Integer;

    return-void
.end method

.method private FeedItemsHaveValidGuids()Z
    .locals 6

    .line 150
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eq v3, v0, :cond_1

    .line 155
    iget-object v4, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v4, v4, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    .line 156
    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method public AutodetectFingerprintType()I
    .locals 1

    .line 165
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedItemsHaveValidGuids()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public AutodetectSortOrder()I
    .locals 4

    .line 173
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    .line 176
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    return v0

    .line 182
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public ClearAllItemsReadStatus()V
    .locals 2

    .line 359
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SetItemsAsReadUnread(Ljava/util/List;Z)V

    return-void
.end method

.method public GetAllOriginatingFeeds()Lmobi/beyondpod/rsscore/FeedList;
    .locals 4

    .line 409
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 411
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

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

    .line 413
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 414
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public GetCatchUpDownloadableEnclosures(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    return-object v0

    .line 304
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 307
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 309
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->downloaded()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 313
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_1

    :cond_2
    return-object v0
.end method

.method public GetDownloadableEnclosures(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    return-object v0

    .line 282
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 284
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 286
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->downloaded()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 287
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_1

    :cond_3
    return-object v0
.end method

.method public GetEnclosureByLocalFileName(Ljava/lang/String;)Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;
    .locals 3

    .line 261
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 263
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->localFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public GetItemById(Ljava/lang/String;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 3

    .line 331
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 333
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public HasHiddenItems()Z
    .locals 2

    .line 472
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_VisibleItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public HideReadItems()V
    .locals 5

    .line 445
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

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

    .line 447
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Visible:Z

    .line 449
    iget-boolean v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Visible:Z

    if-nez v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_VisibleItems:Ljava/util/ArrayList;

    .line 457
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 459
    iget-boolean v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Visible:Z

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public IsOld()Z
    .locals 8

    .line 104
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Ttl:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Ttl:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x5265c00

    .line 109
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v6, v2, v4

    int-to-long v2, v0

    cmp-long v0, v6, v2

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public IsSubscribedInGoogleReader()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public NumUnreadItems()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 343
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 345
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public SetAllItemsAsRead()V
    .locals 2

    .line 354
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SetItemsAsReadUnread(Ljava/util/List;Z)V

    return-void
.end method

.method public SetItemsAsReadUnread(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;Z)V"
        }
    .end annotation

    .line 366
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->setItemsAsReadUnread(Ljava/util/List;Z)V

    xor-int/lit8 p1, p2, 0x1

    .line 370
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncAllDownloadedWithRead(Z)V

    .line 371
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncAllPlayedWithRead()V

    .line 372
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncOwnerFeedReadStatus()V

    return-void
.end method

.method public SyncAllDownloadedWithLocalTrack()V
    .locals 2

    .line 385
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 387
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->syncDownloadedWithLocalTrack()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public SyncAllDownloadedWithRead(Z)V
    .locals 2

    .line 377
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 379
    invoke-virtual {v1, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->syncDownloadedWithRead(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public SyncAllPlayedWithRead()V
    .locals 2

    .line 393
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 395
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->syncPlayedWithRead()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public SyncOwnerFeedReadStatus()V
    .locals 2

    .line 425
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->NumUnreadItems()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setNumUnreadItems(I)V

    :cond_0
    return-void
.end method

.method public SyncShowNotesWithLocalTrack()V
    .locals 2

    .line 401
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 403
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->syncShowNotesWithLocalTrack()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public UnreadItemsCount()I
    .locals 3

    .line 433
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

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

    .line 435
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public VisibleItemCount()I
    .locals 1

    .line 467
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->VisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final VisibleItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_VisibleItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_VisibleItems:Ljava/util/ArrayList;

    return-object v0

    .line 480
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDaysOld()I
    .locals 6

    .line 118
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    long-to-int v0, v4

    const v1, 0x5265c00

    .line 122
    div-int/2addr v0, v1

    return v0
.end method

.method public getFeedImageLink()Ljava/lang/String;
    .locals 2

    .line 247
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const-string v1, "itunes"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const-string v1, "itunes"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const-string v1, "rss"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const-string v1, "rss"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 253
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const-string v1, "rssChildItem"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const-string v1, "rssChildItem"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatestItemPubDate()Ljava/util/Date;
    .locals 4

    .line 496
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 497
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 499
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 500
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 503
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public peekEnclosureMediaTypes()I
    .locals 9

    .line 192
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 199
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-eq v3, v0, :cond_6

    .line 203
    iget-object v7, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_2

    .line 207
    :cond_1
    iget-object v8, v7, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v8}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 212
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileType(Ljava/lang/String;)Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 214
    iget v8, v7, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;->fileType:I

    .line 217
    :cond_2
    invoke-static {v8}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isImageFileType(I)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 219
    :cond_3
    invoke-static {v8}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isAudioFileType(I)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v8}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isVideoFileType(I)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    return v2

    :cond_7
    if-lez v4, :cond_8

    if-nez v5, :cond_8

    if-nez v6, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    if-nez v4, :cond_9

    if-lez v5, :cond_9

    if-nez v6, :cond_9

    const/4 v0, 0x2

    return v0

    :cond_9
    const/4 v0, 0x3

    return v0

    :catch_0
    return v1
.end method

.method public updateFingerprintAlgorithmTo(I)V
    .locals 1

    .line 485
    iput p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->ItemIDGenerationAlgorithm:I

    .line 487
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 489
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->rebuildItemId()V

    goto :goto_0

    :cond_0
    return-void
.end method
