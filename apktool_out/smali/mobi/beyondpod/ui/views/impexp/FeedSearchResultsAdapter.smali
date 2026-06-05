.class public Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FeedSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$FooterViewHolder;,
        Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final IN_S:Ljava/lang/String;

.field private static final SUBSCRIBED:Ljava/lang/String;

.field private static final TYPE_FOOTER:I = 0x0

.field private static final TYPE_ITEM:I = 0x1


# instance fields
.field private _Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

.field private displayFooter:Ljava/lang/Boolean;

.field private entryViewResourceId:I

.field private footerView:Landroid/view/View;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1002b8

    .line 49
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->IN_S:Ljava/lang/String;

    const v0, 0x7f1002ba

    .line 50
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->SUBSCRIBED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;ILjava/util/List;Lmobi/beyondpod/ui/core/volley/ImageLoader;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;",
            "I",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
            ">;",
            "Lmobi/beyondpod/ui/core/volley/ImageLoader;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->displayFooter:Ljava/lang/Boolean;

    .line 60
    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->items:Ljava/util/List;

    .line 61
    iput p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->entryViewResourceId:I

    .line 62
    iput-object p4, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    .line 63
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    .line 64
    iput-object p5, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->footerView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->onItemClicked(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V

    return-void
.end method

.method private onItemClicked(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->itemSelected(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V

    return-void
.end method


# virtual methods
.method public getDisplayFooter()Ljava/lang/Boolean;
    .locals 1

    .line 236
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->displayFooter:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 154
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->displayFooter:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 163
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 84
    :cond_0
    check-cast p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    if-eqz v0, :cond_9

    .line 90
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 94
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v1

    .line 96
    sget-object v5, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v1, v4

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v5

    .line 104
    :goto_0
    iget-object v4, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->SUBSCRIBED:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v5, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->IN_S:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 109
    :cond_4
    iget-object v1, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    const v4, 0x7f100314

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v1, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    :goto_2
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getOriginatingFeed()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 118
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getPubDateAsDate()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 120
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 121
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/high16 p2, 0x10000

    .line 120
    invoke-static {v1, v4, v5, p2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    .line 123
    :cond_5
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->ranking:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 127
    :cond_6
    iget-object v4, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->ranking:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v4, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->ranking:Landroid/widget/TextView;

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_3
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->originatingFeed:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->originatingFeed:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, -0x2

    :goto_4
    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "video"

    invoke-static {p2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 142
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    const v1, 0x7f080223

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setErrorImageResId(I)V

    goto :goto_5

    .line 144
    :cond_8
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    const v1, 0x7f080221

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setErrorImageResId(I)V

    .line 147
    :goto_5
    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {p1, p2, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageUrl(Ljava/lang/String;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    :cond_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->entryViewResourceId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->items:Ljava/util/List;

    invoke-direct {p2, p0, p1, v0, p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;-><init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Landroid/view/View;Ljava/util/List;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;)V

    return-object p2

    .line 75
    :cond_0
    new-instance p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$FooterViewHolder;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->footerView:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$FooterViewHolder;-><init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public setDisplayFooter(Ljava/lang/Boolean;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->displayFooter:Ljava/lang/Boolean;

    return-void
.end method
