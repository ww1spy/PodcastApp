.class public Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;
.super Landroid/widget/TableLayout;
.source "ColorPickerPalette.java"


# instance fields
.field private mMarginSize:I

.field private mNumColumns:I

.field public mOnColorSelectedListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mSwatchLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V
    .locals 0

    .line 109
    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_0

    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 114
    invoke-virtual {p1, p2, p3}, Landroid/widget/TableRow;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private createBlankSpace()Landroid/widget/ImageView;
    .locals 6

    .line 123
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    iget v2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mSwatchLength:I

    iget v3, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mSwatchLength:I

    invoke-direct {v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 125
    iget v2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v3, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v4, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v5, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mMarginSize:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createColorSwatch(II)Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;
    .locals 4

    .line 135
    new-instance v0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->getContext()Landroid/content/Context;

    move-result-object v1

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mOnColorSelectedListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-direct {v0, v1, p1, p2, v2}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;-><init>(Landroid/content/Context;IZLmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 137
    new-instance p1, Landroid/widget/TableRow$LayoutParams;

    iget p2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mSwatchLength:I

    iget v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mSwatchLength:I

    invoke-direct {p1, p2, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 138
    iget p2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mMarginSize:I

    iget v3, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mMarginSize:I

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 139
    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createTableRow()Landroid/widget/TableRow;
    .locals 3

    .line 53
    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public drawPalette([II)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->removeAllViews()V

    .line 75
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->createTableRow()Landroid/widget/TableRow;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    array-length v2, p1

    move-object v3, v0

    move v0, v1

    move v4, v0

    move v5, v4

    :goto_0
    if-ge v0, v2, :cond_2

    aget v6, p1, v0

    .line 78
    invoke-direct {p0, v6, p2}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->createColorSwatch(II)Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch;

    move-result-object v6

    .line 79
    invoke-direct {p0, v3, v6, v4}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V

    add-int/lit8 v5, v5, 0x1

    .line 82
    iget v6, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mNumColumns:I

    if-ne v5, v6, :cond_1

    .line 84
    invoke-virtual {p0, v3}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->addView(Landroid/view/View;)V

    .line 85
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->createTableRow()Landroid/widget/TableRow;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    move v5, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_4

    .line 94
    :goto_1
    iget p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mNumColumns:I

    if-eq v5, p1, :cond_3

    .line 96
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->createBlankSpace()Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, v3, p1, v4}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0, v3}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public init(ILmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 1

    .line 44
    iput p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mNumColumns:I

    .line 45
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070073

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mSwatchLength:I

    const v0, 0x7f070074

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mMarginSize:I

    .line 48
    iput-object p2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->mOnColorSelectedListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    return-void
.end method
