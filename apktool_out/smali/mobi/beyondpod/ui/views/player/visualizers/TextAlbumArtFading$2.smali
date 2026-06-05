.class Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;
.super Ljava/lang/Object;
.source "TextAlbumArtFading.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->startBackgroundAnimationFade(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

.field final synthetic val$hSpacing:I

.field final synthetic val$vSpacing:I


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;II)V
    .locals 0

    .line 224
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iput p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->val$hSpacing:I

    iput p3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->val$vSpacing:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 241
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget v0, v0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_MinAlpha:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 243
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_random:Ljava/util/Random;

    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->val$hSpacing:I

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 244
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    mul-int/lit8 p1, p1, -0x1

    .line 247
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_random:Ljava/util/Random;

    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->val$vSpacing:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 248
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, -0x1

    .line 251
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 252
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 255
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc2:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget v1, v1, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_MinAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;

    iget v0, v0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_MinAlpha:F

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
