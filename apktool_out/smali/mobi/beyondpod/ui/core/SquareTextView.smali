.class public Lmobi/beyondpod/ui/core/SquareTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "SquareTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/SquareTextView;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/core/SquareTextView;->getDefaultSize(II)I

    move-result p1

    .line 28
    invoke-virtual {p0, p1, p1}, Lmobi/beyondpod/ui/core/SquareTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p1, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->onSizeChanged(IIII)V

    return-void
.end method
