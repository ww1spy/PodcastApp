.class Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$1;)V
    .locals 0

    .line 1205
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 1305
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$900(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p1

    .line 1306
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p3

    add-int/2addr p3, p1

    .line 1308
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1299
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p1

    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .line 1259
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    .line 1222
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$200(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1224
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$400(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$500(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1226
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$600(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1228
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$700(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-eq p1, v0, :cond_2

    .line 1230
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1231
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$500(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelExpanded(Landroid/view/View;)V

    .line 1232
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$702(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    .line 1233
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$500(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;->getSlideDragTarget(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    goto :goto_0

    .line 1236
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$600(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    int-to-float p1, p1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    .line 1238
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$700(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-eq p1, v0, :cond_2

    .line 1240
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1241
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$500(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelAnchored(Landroid/view/View;)V

    .line 1242
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$702(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    goto :goto_0

    .line 1245
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$700(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-eq p1, v0, :cond_2

    .line 1247
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$500(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelCollapsed(Landroid/view/View;)V

    .line 1248
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$702(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    .line 1249
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$500(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;->getSlideDragTarget(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 1265
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1, p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$800(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;I)V

    .line 1266
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 6

    .line 1272
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$900(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p2

    .line 1273
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$200(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 1275
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$200(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    .line 1276
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v2, p3, v1

    if-gtz v2, :cond_1

    cmpl-float v2, p3, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    .line 1278
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$600(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    add-float v5, v3, v0

    div-float/2addr v5, v4

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p3, p3, v1

    if-nez p3, :cond_4

    .line 1282
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$600(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    add-float/2addr v3, v0

    div-float/2addr v3, v4

    cmpg-float p3, p3, v3

    if-gez p3, :cond_4

    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$600(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    div-float/2addr v0, v4

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_4

    int-to-float p2, p2

    .line 1284
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$200(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    mul-float/2addr p3, v0

    add-float/2addr p2, p3

    float-to-int p2, p2

    goto :goto_1

    .line 1280
    :cond_1
    :goto_0
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p3

    add-int/2addr p2, p3

    goto :goto_1

    :cond_2
    cmpl-float v0, p3, v1

    if-gtz v0, :cond_3

    cmpl-float p3, p3, v1

    if-nez p3, :cond_4

    .line 1287
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$600(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_4

    .line 1289
    :cond_3
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p3

    add-int/2addr p2, p3

    .line 1292
    :cond_4
    :goto_1
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$400(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p3, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1293
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 1211
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->access$100(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1216
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    iget-boolean p1, p1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    return p1
.end method
