.class Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AudiobookSearchResultsListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$FooterViewHolder;,
        Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;
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

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;


# instance fields
.field private _FooterView:Landroid/view/View;

.field private _Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field _Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

.field private _entryViewResourceId:I

.field private displayFooter:Ljava/lang/Boolean;

.field private mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 50
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->sFormatter:Ljava/util/Formatter;

    const v0, 0x7f1002b8

    .line 54
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->IN_S:Ljava/lang/String;

    const v0, 0x7f1002ba

    .line 55
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->SUBSCRIBED:Ljava/lang/String;

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

    .line 65
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->displayFooter:Ljava/lang/Boolean;

    .line 66
    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_Items:Ljava/util/List;

    .line 67
    iput p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_entryViewResourceId:I

    .line 68
    iput-object p4, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    .line 69
    iput-object p5, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_FooterView:Landroid/view/View;

    .line 70
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->onItemClicked(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V

    return-void
.end method

.method private onItemClicked(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->itemSelected(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V

    return-void
.end method


# virtual methods
.method public displayFooter(Ljava/lang/Boolean;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->displayFooter:Ljava/lang/Boolean;

    return-void
.end method

.method public getDisplayFooter()Ljava/lang/Boolean;
    .locals 1

    .line 210
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->displayFooter:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 135
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->displayFooter:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_Items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_Items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 144
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_Items:Ljava/util/List;

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

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_Items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 90
    :cond_0
    check-cast p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;

    .line 91
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_Items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    if-eqz p2, :cond_7

    .line 95
    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v4, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 109
    :goto_0
    iget-object v3, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->SUBSCRIBED:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v4, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->IN_S:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 114
    :cond_4
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    const v3, 0x7f100314

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    :goto_2
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->originatingFeed:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getOriginatingFeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->originatingFeed:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getOriginatingFeed()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    const/4 v3, -0x2

    :goto_3
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->LanguageTime:Landroid/widget/TextView;

    sget-object v3, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->sFormatter:Ljava/util/Formatter;

    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 125
    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getLanguage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 126
    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTotalTime()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, ""

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTotalTime()Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v5, v1

    .line 124
    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {p1, p2, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageUrl(Ljava/lang/String;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    :cond_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_entryViewResourceId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_Items:Ljava/util/List;

    invoke-direct {p2, p0, p1, v0, p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;-><init>(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;Landroid/view/View;Ljava/util/List;Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;)V

    return-object p2

    .line 81
    :cond_0
    new-instance p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$FooterViewHolder;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->_FooterView:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$FooterViewHolder;-><init>(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;Landroid/view/View;)V

    return-object p1
.end method
