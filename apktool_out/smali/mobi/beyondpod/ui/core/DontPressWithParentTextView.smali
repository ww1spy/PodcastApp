.class public Lmobi/beyondpod/ui/core/DontPressWithParentTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "DontPressWithParentTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/DontPressWithParentTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setPressed(Z)V

    return-void
.end method
