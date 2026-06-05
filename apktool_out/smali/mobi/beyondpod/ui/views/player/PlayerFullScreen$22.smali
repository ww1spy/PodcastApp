.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onCharmPopupShown()V
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

    .line 647
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$22;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 651
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$22;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$500(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$22;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$500(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
