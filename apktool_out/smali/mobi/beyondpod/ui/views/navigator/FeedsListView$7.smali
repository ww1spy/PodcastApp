.class Lmobi/beyondpod/ui/views/navigator/FeedsListView$7;
.super Ljava/lang/Object;
.source "FeedsListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsListView;->startEditMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$7;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

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

    .line 744
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$7;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 745
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$7;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$7;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_multiChoiceListener:Landroid/support/v7/view/ActionMode$Callback;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)V

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
