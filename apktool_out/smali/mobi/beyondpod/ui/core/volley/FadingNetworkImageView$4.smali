.class Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FadingNetworkImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$4;->this$0:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    iput-object p2, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$4;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 383
    iget-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$4;->val$imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 384
    iget-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$4;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
