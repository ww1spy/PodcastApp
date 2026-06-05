.class Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PublishersGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;,
        Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;
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
.field static RESULT_FORMAT_CATEGORIES:I = 0x1

.field static RESULT_FORMAT_INTERESTS:I = 0x3

.field static RESULT_FORMAT_PUBLISHERS:I = 0x0

.field static RESULT_FORMAT_REGIONS:I = 0x2


# instance fields
.field _CategoryNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field _InterestColors:[I

.field _Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

.field private _ResultFormat:I

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
    .locals 0

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;Ljava/util/List;Lmobi/beyondpod/ui/core/volley/ImageLoader;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
            ">;",
            "Lmobi/beyondpod/ui/core/volley/ImageLoader;",
            "I)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 49
    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_PUBLISHERS:I

    iput v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    .line 97
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_CategoryNames:Ljava/util/HashMap;

    .line 102
    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->items:Ljava/util/List;

    .line 103
    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    .line 104
    iput p4, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    .line 105
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    .line 107
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030002

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 109
    array-length p3, p1

    new-array p3, p3, [I

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_InterestColors:[I

    move p3, p2

    .line 111
    :goto_0
    array-length p4, p1

    if-eq p3, p4, :cond_0

    .line 115
    :try_start_0
    iget-object p4, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_InterestColors:[I

    aget-object v0, p1, p3

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    aput v0, p4, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    iget-object p4, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_InterestColors:[I

    const v0, -0xffff01

    aput v0, p4, p3

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f030001

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {p3}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/high16 p4, 0x7f030000

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 125
    :goto_2
    array-length p4, p3

    if-eq p2, p4, :cond_1

    .line 126
    iget-object p4, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_CategoryNames:Ljava/util/HashMap;

    aget-object v0, p3, p2

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;

    aget-object v2, p1, p2

    aget-object v3, p3, p2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$1;)V

    invoke-virtual {p4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->items:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->onItemClicked(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V

    return-void
.end method

.method private getCategoriesView(ILmobi/beyondpod/ui/views/impexp/FeedSearchResult;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_CategoryNames:Ljava/util/HashMap;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getLink()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;

    if-eqz p2, :cond_0

    .line 197
    iget-object v0, p3, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p3, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->categoryImage:Landroid/widget/ImageView;

    iget p2, p2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object p2, p3, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->categoryImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->getColorForPosition(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private getColorForPosition(I)I
    .locals 1

    .line 205
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_InterestColors:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_InterestColors:[I

    array-length v0, v0

    rem-int/2addr p1, v0

    .line 206
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_InterestColors:[I

    aget p1, v0, p1

    return p1
.end method

.method private getInterestsView(ILmobi/beyondpod/ui/views/impexp/FeedSearchResult;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;)V
    .locals 1

    .line 176
    iget-object v0, p3, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p2, p3, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->bgTile:Landroid/view/View;

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->getColorForPosition(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private getPublishersView(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;)V
    .locals 1

    .line 183
    iget-object p2, p2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {p2, p1, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageUrl(Ljava/lang/String;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    return-void
.end method

.method private getRegionsView(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;)V
    .locals 2

    .line 188
    iget-object v0, p2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p2, p2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {p2, p1, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageUrl(Ljava/lang/String;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    return-void
.end method

.method private onItemClicked(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->itemSelected(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 165
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 171
    iget p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    return p1
.end method

.method public getResultFormat()I
    .locals 1

    .line 211
    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 149
    check-cast p1, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;

    .line 150
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    .line 152
    iget v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    sget v2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_PUBLISHERS:I

    if-ne v1, v2, :cond_0

    .line 153
    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->getPublishersView(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;)V

    goto :goto_0

    .line 154
    :cond_0
    iget v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    sget v2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_CATEGORIES:I

    if-ne v1, v2, :cond_1

    .line 155
    invoke-direct {p0, p2, v0, p1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->getCategoriesView(ILmobi/beyondpod/ui/views/impexp/FeedSearchResult;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;)V

    goto :goto_0

    .line 156
    :cond_1
    iget v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    sget v2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_REGIONS:I

    if-ne v1, v2, :cond_2

    .line 157
    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->getRegionsView(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0, p2, v0, p1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->getInterestsView(ILmobi/beyondpod/ui/views/impexp/FeedSearchResult;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 133
    iget p2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_PUBLISHERS:I

    if-ne p2, v0, :cond_0

    const p2, 0x7f0c00b7

    goto :goto_0

    .line 135
    :cond_0
    iget p2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_CATEGORIES:I

    if-ne p2, v0, :cond_1

    const p2, 0x7f0c00b5

    goto :goto_0

    .line 137
    :cond_1
    iget p2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_REGIONS:I

    if-ne p2, v0, :cond_2

    const p2, 0x7f0c00b8

    goto :goto_0

    :cond_2
    const p2, 0x7f0c00b6

    .line 142
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 143
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;

    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    invoke-direct {p2, p0, p1, v0, p0}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;-><init>(Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;Landroid/view/View;ILmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;)V

    return-object p2
.end method

.method public setResultFormat(I)V
    .locals 0

    .line 216
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->_ResultFormat:I

    return-void
.end method
