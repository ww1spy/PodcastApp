.class public Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;
.super Landroid/widget/FrameLayout;
.source "ColorPickerSwatch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;
    }
.end annotation


# instance fields
.field private mCheckmarkImage:Landroid/widget/ImageView;

.field private mColor:I

.field private mOnColorSelectedListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mSwatchImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput p2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mColor:I

    .line 43
    iput-object p4, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p4, 0x7f0c0031

    invoke-virtual {p1, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f09009a

    .line 46
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    const p1, 0x7f090099

    .line 47
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->setColor(I)V

    .line 49
    invoke-direct {p0, p3}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->setChecked(Z)V

    .line 50
    invoke-virtual {p0, p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setChecked(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    iget v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0800d8

    goto :goto_0

    :cond_0
    const v0, 0x7f0800d7

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 77
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    iget v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mColor:I

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    :cond_0
    return-void
.end method

.method protected setColor(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 57
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080089

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 62
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    new-instance v2, Lmobi/beyondpod/ui/views/base/colorpicker/ColorStateDrawable;

    invoke-direct {v2, v1, p1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorStateDrawable;-><init>([Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
