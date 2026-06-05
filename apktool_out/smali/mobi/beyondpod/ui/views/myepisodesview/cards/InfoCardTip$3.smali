.class Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$3;
.super Ljava/lang/Object;
.source "InfoCardTip.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->dismiss(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

.field final synthetic val$card:Landroid/view/View;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;Landroid/view/View;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$3;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$3;->val$card:Landroid/view/View;

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

    .line 179
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$3;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->access$100(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;)V

    .line 180
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$3;->val$card:Landroid/view/View;

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
