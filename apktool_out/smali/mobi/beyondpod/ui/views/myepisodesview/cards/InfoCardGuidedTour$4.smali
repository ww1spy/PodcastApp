.class Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$4;
.super Ljava/lang/Object;
.source "InfoCardGuidedTour.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->dismiss(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

.field final synthetic val$card:Landroid/view/View;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;Landroid/view/View;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$4;->val$card:Landroid/view/View;

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

    .line 192
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->access$100(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;)V

    .line 193
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$4;->val$card:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

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
