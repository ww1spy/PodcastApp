.class public Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PublishersGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public bgTile:Landroid/view/View;

.field public categoryImage:Landroid/widget/ImageView;

.field public image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;Landroid/view/View;ILmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;)V
    .locals 6

    .line 227
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->this$0:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    .line 228
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 229
    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_PUBLISHERS:I

    const v1, 0x7f08010f

    const/4 v2, 0x1

    const v3, 0x7f070102

    const v4, 0x7f090165

    if-ne p3, v0, :cond_0

    .line 231
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    .line 232
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p3, v2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setFadeInImage(Z)V

    .line 233
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    const v0, 0x7f0801f8

    invoke-virtual {p3, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setDefaultImageResId(I)V

    .line 234
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p3, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setErrorImageResId(I)V

    .line 235
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 236
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 235
    invoke-virtual {p3, v0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setMaxImageSize(II)V

    goto :goto_0

    .line 238
    :cond_0
    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_CATEGORIES:I

    const v5, 0x7f090166

    if-ne p3, v0, :cond_1

    .line 240
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 241
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->categoryImage:Landroid/widget/ImageView;

    goto :goto_0

    .line 243
    :cond_1
    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_REGIONS:I

    if-ne p3, v0, :cond_2

    .line 245
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 246
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    .line 247
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p3, v2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setFadeInImage(Z)V

    .line 248
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    const v0, 0x7f0801f9

    invoke-virtual {p3, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setDefaultImageResId(I)V

    .line 249
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p3, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setErrorImageResId(I)V

    .line 250
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->image:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 251
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 250
    invoke-virtual {p3, v0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setMaxImageSize(II)V

    goto :goto_0

    :cond_2
    const p3, 0x7f09015d

    .line 255
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 256
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->bgTile:Landroid/view/View;

    .line 259
    :goto_0
    new-instance p3, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder$1;

    invoke-direct {p3, p0, p1, p4}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder$1;-><init>(Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
