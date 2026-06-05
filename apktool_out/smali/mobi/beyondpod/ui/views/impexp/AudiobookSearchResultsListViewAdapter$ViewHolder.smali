.class public Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AudiobookSearchResultsListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public LanguageTime:Landroid/widget/TextView;

.field public btnSubscribe:Landroid/widget/TextView;

.field public description:Landroid/widget/TextView;

.field public image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

.field public originatingFeed:Landroid/widget/TextView;

.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;Landroid/view/View;Ljava/util/List;Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
            ">;",
            "Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;",
            ")V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;

    .line 160
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09028a

    .line 162
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0900ba

    .line 163
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->originatingFeed:Landroid/widget/TextView;

    const v0, 0x7f090154

    .line 165
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    .line 166
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setFadeInImage(Z)V

    .line 167
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setDefaultImageResId(I)V

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    const v1, 0x7f0801fa

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setErrorImageResId(I)V

    .line 169
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 169
    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setMaxImageSize(II)V

    const v0, 0x7f090274

    .line 171
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    const v0, 0x7f090167

    .line 172
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->LanguageTime:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;-><init>(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$2;-><init>(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;Ljava/util/List;Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
