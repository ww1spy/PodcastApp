.class public Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;
.super Ljava/lang/Object;
.source "MultiItemRowListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;
    }
.end annotation


# instance fields
.field private final _CellSpacingL:I

.field private final _ItemsPerRow:I

.field private _RowHPadding:I

.field private final _RowLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field private final mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

.field private final mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;IIII)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p3, :cond_0

    .line 39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of items per row must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mContextReference:Ljava/lang/ref/WeakReference;

    .line 42
    iput-object p2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    .line 43
    iput p3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    .line 44
    iput p4, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_CellSpacingL:I

    .line 45
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mItemLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mItemLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, p4, p5, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mItemLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48
    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_RowLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_RowHPadding:I

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAdapterId()Ljava/util/UUID;
    .locals 1

    .line 246
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    check-cast v0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getAdapterId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 62
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstItemAtRow(I)Ljava/lang/Object;
    .locals 2

    .line 260
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    iget v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    mul-int/2addr p1, v1

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 104
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 107
    :goto_0
    iget v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    if-ge v1, v2, :cond_1

    .line 109
    iget v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    .line 110
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v3}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 112
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v3, v2}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .line 266
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 252
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemRow(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 279
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v2}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 281
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v2, v1}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float v0, v1

    mul-float/2addr p1, v0

    .line 283
    iget v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 195
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getRowCount()I
    .locals 1

    .line 240
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 143
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    .line 144
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 148
    instance-of v2, p2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 152
    :cond_2
    :goto_0
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 153
    iget p3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_RowHPadding:I

    iget v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_CellSpacingL:I

    iget v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_RowHPadding:I

    add-int/2addr v2, v3

    invoke-virtual {p2, p3, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 154
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_RowLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 156
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 157
    iget p3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :goto_1
    move p3, v1

    .line 163
    :goto_2
    iget v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    if-ge p3, v2, :cond_8

    .line 165
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge p3, v2, :cond_3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v0

    .line 166
    :goto_3
    iget v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    mul-int/2addr v3, p1

    add-int/2addr v3, p3

    .line 170
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v4}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 172
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v4, v3, v2, p2}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 173
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_4
    if-nez v2, :cond_5

    .line 177
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v3, p2}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->buildConvertView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v2

    :goto_4
    const/4 v4, 0x4

    .line 179
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    if-ne v3, v2, :cond_6

    .line 182
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt p3, v2, :cond_7

    .line 184
    :cond_6
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mItemLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {p2, v3, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_8
    return-object p2

    :cond_9
    :goto_6
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 206
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getViewTypeCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 234
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->hasStableIds()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isEnabled(I)Z
    .locals 4

    .line 84
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 88
    :goto_0
    iget v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    if-ge v0, v2, :cond_1

    .line 90
    iget v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->_ItemsPerRow:I

    mul-int/2addr v2, p1

    add-int/2addr v2, v0

    .line 91
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v3}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 93
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v3, v2}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->isEnabled(I)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;->mAdapter:Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
