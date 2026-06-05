.class public Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutPlaylist;
.super Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;
.source "CheckableRelativeLayoutPlaylist.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 29
    invoke-super {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->onAttachedToWindow()V

    .line 30
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutPlaylist;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080220

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutPlaylist;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
