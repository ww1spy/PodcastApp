.class public Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;
.super Ljava/lang/Object;
.source "PublishedEpisodesCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _Context:Landroid/content/Context;

.field private _Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

.field private _addToMyEpisodesListener:Landroid/view/View$OnClickListener;

.field private _cardFaceListener:Landroid/view/View$OnClickListener;

.field private _cardFaceLongClickListener:Landroid/view/View$OnLongClickListener;

.field private _cardPlayButtonFaceRedirectListener:Landroid/view/View$OnClickListener;

.field private _downloadListener:Landroid/view/View$OnClickListener;

.field private _overflowListener:Landroid/view/View$OnClickListener;

.field private _playPauseListener:Landroid/view/View$OnClickListener;

.field private _playlistListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;)V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$1;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_cardFaceListener:Landroid/view/View$OnClickListener;

    .line 56
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$2;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_cardPlayButtonFaceRedirectListener:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$3;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_cardFaceLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 88
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$4;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_playPauseListener:Landroid/view/View$OnClickListener;

    .line 106
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$5;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_downloadListener:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$6;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_playlistListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$7;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$7;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_overflowListener:Landroid/view/View$OnClickListener;

    .line 162
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$8;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$8;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_addToMyEpisodesListener:Landroid/view/View$OnClickListener;

    .line 193
    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    .line 194
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;Landroid/view/View;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->findEpisodeInParent(Landroid/view/View;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Context:Landroid/content/Context;

    return-object p0
.end method

.method private canDownloadRemoteImages()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->canDownloadRemoteImages()Z

    move-result v0

    return v0
.end method

.method private findEpisodeInParent(Landroid/view/View;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 2

    :cond_0
    const v0, 0x7f09006e

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 254
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 255
    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 259
    :cond_2
    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    return-object v0
.end method


# virtual methods
.method public buildConvertView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 271
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 272
    iget-boolean p1, p1, Lmobi/beyondpod/rsscore/Feed;->isTransient:Z

    if-eqz p1, :cond_0

    .line 273
    new-instance p1, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Context:Landroid/content/Context;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardFactory;->buildEpisodeCard(Landroid/content/Context;)Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;

    move-result-object p1

    .line 277
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->getCardRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public buildViewFor(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-nez p2, :cond_0

    .line 202
    invoke-virtual {p0, p4}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->buildConvertView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p4, 0x7f09006e

    .line 204
    invoke-virtual {p2, p4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 206
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;

    .line 207
    iget-object p4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_cardFaceListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_cardFaceLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p4, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->setFaceListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 209
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 211
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p4

    if-nez p4, :cond_1

    .line 213
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->canDownloadRemoteImages()Z

    move-result p4

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v1

    invoke-virtual {v0, p1, p3, p4, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->buildTextViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;ZLmobi/beyondpod/ui/core/volley/ImageLoader;)V

    goto :goto_0

    .line 217
    :cond_1
    iget-boolean p4, p3, Lmobi/beyondpod/rsscore/Feed;->isTransient:Z

    if-eqz p4, :cond_2

    .line 219
    iget-object p4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    invoke-interface {p4}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object p4

    invoke-virtual {v0, p1, p3, p4}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->buildPreviewEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object p4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    invoke-interface {p4}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_cardPlayButtonFaceRedirectListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_playPauseListener:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_downloadListener:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_playlistListener:Landroid/view/View$OnClickListener;

    iget-object v8, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_overflowListener:Landroid/view/View$OnClickListener;

    iget-object v9, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_addToMyEpisodesListener:Landroid/view/View$OnClickListener;

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->buildEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_3
    :goto_0
    iget-object p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    invoke-interface {p3, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->isItemSelected(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 233
    move-object p1, p2

    check-cast p1, Landroid/widget/Checkable;

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    .line 235
    :cond_4
    move-object p1, p2

    check-cast p1, Landroid/widget/Checkable;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_1
    return-object p2
.end method
