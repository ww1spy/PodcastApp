.class public Lcom/mobeta/android/dslv/DragSortItemView;
.super Landroid/view/ViewGroup;
.source "DragSortItemView.java"


# instance fields
.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x30

    .line 27
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortItemView;->mGravity:I

    .line 33
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortItemView;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 56
    :cond_0
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortItemView;->mGravity:I

    const/16 p4, 0x30

    if-ne p3, p4, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p2, p1, p1, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 69
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 72
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0, v2}, Lcom/mobeta/android/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 76
    invoke-virtual {p0, v2, v1}, Lcom/mobeta/android/dslv/DragSortItemView;->setMeasuredDimension(II)V

    return-void

    .line 80
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 82
    invoke-virtual {p0, v3, p1, v2}, Lcom/mobeta/android/dslv/DragSortItemView;->measureChild(Landroid/view/View;II)V

    :cond_1
    if-nez p2, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 89
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p2, :cond_2

    .line 90
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 96
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortItemView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortItemView;->mGravity:I

    return-void
.end method
