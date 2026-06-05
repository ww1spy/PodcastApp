.class public Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;
.super Landroid/widget/BaseAdapter;
.source "PublishedEpisodesCardAdapter.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
.implements Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;


# static fields
.field public static final AdapterID:Ljava/util/UUID;


# instance fields
.field private _Context:Landroid/content/Context;

.field private _ItemBuilder:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

.field private _Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AABBCCDD-0000-0000-0000-000000000005"

    .line 21
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->AdapterID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    .line 31
    new-instance p2, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-direct {p2, p1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_ItemBuilder:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    return-void
.end method


# virtual methods
.method public buildConvertView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 199
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_ItemBuilder:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->buildConvertView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public canDownloadRemoteImages()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->canDownloadRemoteImages()Z

    move-result v0

    return v0
.end method

.method public currentFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 127
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterId()Ljava/util/UUID;
    .locals 1

    .line 121
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->AdapterID:Ljava/util/UUID;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 36
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFirstItemAtRow(I)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    .line 41
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 42
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemAt(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 87
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemRow(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 102
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getRowCount()I
    .locals 1

    .line 115
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_ItemBuilder:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->getItemAt(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->buildViewFor(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isInPreviewMode()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->isInPreviewMode()Z

    move-result v0

    return v0
.end method

.method public isItemSelected(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->isItemSelected(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result p1

    return p1
.end method

.method public isMultiSelecting()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->isMultiSelecting()Z

    move-result v0

    return v0
.end method

.method public onAddRemovePlaylist(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->onAddRemovePlaylist(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public onDownload(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->onDownload(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public onItemLongPressed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->onItemLongPressed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public showCardMenu(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->showCardMenu(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method
