.class public Lmobi/beyondpod/ui/core/CheckedRelativeLayout;
.super Lmobi/beyondpod/ui/core/CheckableRelativeLayout;
.source "CheckedRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->setChecked(Z)V

    .line 29
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/CheckedRelativeLayout;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f08008d

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/CheckedRelativeLayout;->setBackgroundResource(I)V

    return-void
.end method
