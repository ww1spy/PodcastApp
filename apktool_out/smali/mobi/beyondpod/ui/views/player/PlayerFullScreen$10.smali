.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 176
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$100(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->togglePlaylistPager(Z)V

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$200(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)F

    move-result v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 184
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
