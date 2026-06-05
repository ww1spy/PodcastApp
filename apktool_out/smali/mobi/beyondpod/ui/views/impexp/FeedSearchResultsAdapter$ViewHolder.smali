.class public Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FeedSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public btnSubscribe:Landroid/widget/TextView;

.field public description:Landroid/widget/TextView;

.field public image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

.field public originatingFeed:Landroid/widget/TextView;

.field public ranking:Landroid/widget/TextView;

.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Landroid/view/View;Ljava/util/List;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
            ">;",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;",
            ")V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->this$0:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    .line 180
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09028a

    .line 181
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0900ba

    .line 182
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 183
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->originatingFeed:Landroid/widget/TextView;

    const v0, 0x7f090154

    .line 184
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    .line 185
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setFadeInImage(Z)V

    .line 186
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setDefaultImageResId(I)V

    .line 187
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 188
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 187
    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setMaxImageSize(II)V

    const v0, 0x7f090274

    .line 189
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    const v0, 0x7f0900df

    .line 190
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->ranking:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->btnSubscribe:Landroid/widget/TextView;

    new-instance v7, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;-><init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Ljava/util/List;Landroid/view/View;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;-><init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Ljava/util/List;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
