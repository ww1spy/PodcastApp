.class public Lmobi/beyondpod/ui/core/TouchableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TouchableFrameLayout.java"


# instance fields
.field private touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget-object v0, p0, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v0, p0, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 52
    iget-object v0, p0, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 55
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->invalidate()V

    .line 57
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 37
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 38
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08023e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/core/TouchableFrameLayout;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
