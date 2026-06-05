.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 205
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 206
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 207
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    move-result-object p1

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->togglePlayPause()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 189
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0801df

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0801e0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
