.class public Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;
.super Landroid/widget/RelativeLayout;
.source "PublishedEpisodesPreviewHeader.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;


# static fields
.field private static final TAG:Ljava/lang/String; = "PublishedEpisodesPreviewHeader"


# instance fields
.field _ActionSubscribe:Landroid/widget/TextView;

.field _CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

.field _ExtrasGroup:Landroid/view/View;

.field _FeedName:Landroid/widget/TextView;

.field _FeedSummary:Landroid/widget/TextView;

.field private _ImageHeight:I

.field _ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

.field private _ImageWidth:I

.field private _Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

.field _Progress:Landroid/view/View;

.field _ToggleExtras:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageWidth:I

    .line 54
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageWidth:I

    .line 54
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageWidth:I

    .line 54
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageHeight:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->toggleExtras(Z)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;
    .locals 0

    .line 44
    iget-object p0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->updateBackground(Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    return-void
.end method

.method private toggleExtras(Z)V
    .locals 3

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ExtrasGroup:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ToggleExtras:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ToggleExtras:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f0800fb

    goto :goto_1

    :cond_1
    const v1, 0x7f0800f8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_FeedName:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method private updateBackground(Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 2

    .line 136
    iget p1, p1, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->PrimaryVibrantColor:I

    const/16 v0, 0x50

    const/16 v1, 0x78

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->normalizeColor(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->setBackgroundColor(I)V

    const/4 p1, 0x1

    .line 137
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->toggleExtras(Z)V

    return-void
.end method


# virtual methods
.method public initialize(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 118
    new-instance p1, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    invoke-direct {p1, p2}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    return-void
.end method

.method public notifyCardSizeChanged()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 75
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0900f2

    .line 77
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_Progress:Landroid/view/View;

    const v0, 0x7f0900f3

    .line 78
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_FeedName:Landroid/widget/TextView;

    const v0, 0x7f0900fa

    .line 79
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_FeedSummary:Landroid/widget/TextView;

    const v0, 0x7f090015

    .line 80
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ActionSubscribe:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageHeight:I

    .line 83
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageWidth:I

    const v0, 0x7f0900e8

    .line 85
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ExtrasGroup:Landroid/view/View;

    const v0, 0x7f090291

    .line 87
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ToggleExtras:Landroid/widget/ImageView;

    .line 88
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$1;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ActionSubscribe:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$2;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 191
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ActionSubscribe:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002b8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 207
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ActionSubscribe:Landroid/widget/TextView;

    const v0, 0x7f100071

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public refreshContent()V
    .locals 8

    .line 142
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_FeedName:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->generateFeedImageUrl(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v3

    .line 155
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_FeedSummary:Landroid/widget/TextView;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Description:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-static {}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->getDefaultColors()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->updateBackground(Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    new-instance v5, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$3;

    invoke-direct {v5, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$3;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;)V

    iget v6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageWidth:I

    iget v7, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ImageHeight:I

    invoke-virtual/range {v2 .. v7}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->get(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    :goto_0
    return-void
.end method

.method public setCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 129
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 130
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_FeedName:Landroid/widget/TextView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public toggleProgressIndicator(Z)V
    .locals 1

    .line 185
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_Progress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
