.class public Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BPRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/BPRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemSpacerDecoration"
.end annotation


# instance fields
.field private _hSpace:I

.field private _vSpace:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 93
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 94
    iput p1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;->_hSpace:I

    .line 95
    iput p2, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;->_vSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 101
    iget p2, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;->_hSpace:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 102
    iget p2, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;->_hSpace:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 103
    iget p2, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;->_vSpace:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
