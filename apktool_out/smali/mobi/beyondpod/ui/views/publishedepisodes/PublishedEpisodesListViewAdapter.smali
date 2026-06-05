.class public Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;
.super Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;
.source "PublishedEpisodesListViewAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PublishedEpisodesListViewAdapter"


# instance fields
.field private _Context:Landroid/content/Context;

.field private _IsLoadingData:Z

.field private _IsPreviewMode:Z

.field private _Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)V
    .locals 4

    const/4 v0, 0x4

    .line 57
    new-array v0, v0, [Ljava/util/UUID;

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;->AdapterID:Ljava/util/UUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->AdapterID:Ljava/util/UUID;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->AdapterID:Ljava/util/UUID;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;-><init>([Ljava/util/UUID;)V

    .line 53
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_IsLoadingData:Z

    .line 60
    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 62
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Context:Landroid/content/Context;

    .line 63
    iput-boolean p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_IsPreviewMode:Z

    .line 65
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->refreshSections()V

    return-void
.end method

.method static synthetic access$002(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_IsLoadingData:Z

    return p1
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;
    .locals 0

    .line 46
    iget-object p0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    return-object p0
.end method

.method private pauseAds()V
    .locals 1

    .line 382
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getSection(Ljava/util/UUID;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    check-cast v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method private resumeAds()V
    .locals 1

    .line 389
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getSection(Ljava/util/UUID;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    check-cast v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->onResume()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canDownloadRemoteImages()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->canDownloadRemoteImages()Z

    move-result v0

    return v0
.end method

.method public clearItems()V
    .locals 0

    .line 258
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->clearItems()V

    .line 259
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->refreshInternal()V

    return-void
.end method

.method currentFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 176
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    return-object v0
.end method

.method currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
    .locals 1

    .line 171
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    return-object v0
.end method

.method public filterItems(I)V
    .locals 1

    .line 181
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->filterItems(I)V

    .line 186
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->refreshInternal()V

    return-void
.end method

.method public generatePlaylist(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/Track;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 274
    new-instance v1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 275
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->appendTo(Ljava/util/List;)V

    .line 277
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 279
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v4

    iget-object v4, v4, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lmobi/beyondpod/rsscore/TrackList;->getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 286
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_0

    .line 289
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 290
    invoke-virtual {v0, v4}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getAllPlayedMyEpisodes()Lmobi/beyondpod/rsscore/TrackList;
    .locals 5

    .line 353
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 355
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 357
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v3

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 298
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method hasHiddenItems()Z
    .locals 1

    .line 191
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->hasHiddenItems()Z

    move-result v0

    return v0
.end method

.method public hasPlayedMyEpisodes()Z
    .locals 1

    .line 348
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getAllPlayedMyEpisodes()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasReadItems()Z
    .locals 1

    .line 196
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->hasReadItems()Z

    move-result v0

    return v0
.end method

.method hasUnReadItems()Z
    .locals 1

    .line 201
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->hasUnReadItems()Z

    move-result v0

    return v0
.end method

.method public isInPreviewMode()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_IsPreviewMode:Z

    return v0
.end method

.method public isItemSelected(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z
    .locals 1

    .line 328
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isItemSelected(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result p1

    return p1
.end method

.method isLoadingData()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_IsLoadingData:Z

    return v0
.end method

.method public isMultiSelecting()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isMultiSelecting()Z

    move-result v0

    return v0
.end method

.method public loadItems(Lmobi/beyondpod/rsscore/Feed;Z)V
    .locals 0

    .line 166
    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->loadItems(Lmobi/beyondpod/rsscore/Feed;Z)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 375
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getSection(Ljava/util/UUID;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    check-cast v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onAddRemovePlaylist(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onAddRemovePlaylist(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method onAfterActivate()V
    .locals 1

    .line 117
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;)V

    invoke-static {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->setLoadListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;)V

    .line 148
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->resumeAds()V

    return-void
.end method

.method onAfterDeactivate()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-static {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->setLoadListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;)V

    .line 155
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->pauseAds()V

    return-void
.end method

.method public onDownload(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onDownload(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public onItemLongPressed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onItemLongPressed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method refreshInternal()V
    .locals 3

    .line 264
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->notifyDataSetChanged()V

    .line 265
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xfa

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public refreshItems()V
    .locals 0

    .line 160
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->refreshInternal()V

    return-void
.end method

.method refreshSections()V
    .locals 10

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 73
    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 74
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 75
    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 77
    iget-boolean v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_IsPreviewMode:Z

    const v3, 0x7f070063

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    move v8, v1

    move v9, v2

    goto :goto_1

    .line 84
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 99
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 94
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v9, v1

    move v8, v2

    goto :goto_1

    .line 87
    :pswitch_1
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 105
    :goto_1
    invoke-static {}, Lmobi/beyondpod/ui/core/AdManager;->areAdsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    new-instance v1, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Context:Landroid/content/Context;

    new-instance v5, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Context:Landroid/content/Context;

    invoke-direct {v5, v2, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;)V

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 109
    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;IIII)V

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->setSections(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restoreCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 0

    .line 216
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->restoreCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    return-void
.end method

.method public restoreItemsAfterConfigurationChange()V
    .locals 2

    .line 222
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onAdapterDataLoadStarted()V

    .line 226
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->refreshInternal()V

    .line 234
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isDataLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onAdapterDataLoadCompleted(Z)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->loadItems(Lmobi/beyondpod/rsscore/Feed;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 0

    .line 211
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->saveCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    return-void
.end method

.method public showCardMenu(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->showCardMenu(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method
