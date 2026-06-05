.class Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FeedsViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->expandCollapseCategory(Landroid/widget/ImageView;Lmobi/beyondpod/rsscore/categories/FeedCategory;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

.field final synthetic val$v:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;->val$v:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 244
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;->val$v:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 245
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;->val$v:Landroid/widget/ImageView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->access$100(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;->val$v:Landroid/widget/ImageView;

    const v0, 0x7f0901a3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;->val$v:Landroid/widget/ImageView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->access$000(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
