.class public Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayoutEvo.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private _isChecked:Z

.field protected touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 18
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 49
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 50
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 57
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 60
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->invalidate()V

    .line 62
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->_isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 43
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08023e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->touchFeedbackDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->_isChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 71
    :cond_0
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->_isChecked:Z

    .line 73
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->refreshDrawableState()V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->_isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->_isChecked:Z

    return-void
.end method
