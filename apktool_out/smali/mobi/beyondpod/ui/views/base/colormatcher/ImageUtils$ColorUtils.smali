.class public Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils$ColorUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blendColors(IIF)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 60
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 61
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 62
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int p0, p0

    .line 63
    invoke-static {p1, p2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static final calculateColorfulness(Landroid/support/v7/graphics/Palette$Swatch;)F
    .locals 2

    .line 79
    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object p0

    const/4 v0, 0x1

    .line 80
    aget v0, p0, v0

    const/4 v1, 0x2

    aget p0, p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final calculateContrast(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)I
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p0

    invoke-static {p0}, Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils$ColorUtils;->calculateYiqLuma(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils$ColorUtils;->calculateYiqLuma(I)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static final calculateYiqLuma(I)I
    .locals 3

    .line 48
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0x12b

    mul-int/2addr v1, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    const/16 v2, 0x24b

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p0

    const/16 v0, 0x72

    mul-int/2addr v0, p0

    add-int/2addr v1, v0

    int-to-float p0, v1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static final changeBrightness(IF)I
    .locals 2

    .line 68
    invoke-static {p0}, Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils$ColorUtils;->calculateYiqLuma(I)I

    move-result v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils$ColorUtils;->darken(IF)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils$ColorUtils;->lighten(IF)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static darken(IF)I
    .locals 1

    const/high16 v0, -0x1000000

    .line 35
    invoke-static {v0, p0, p1}, Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils$ColorUtils;->blendColors(IIF)I

    move-result p0

    return p0
.end method

.method public static lighten(IF)I
    .locals 1

    const/4 v0, -0x1

    .line 40
    invoke-static {v0, p0, p1}, Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils$ColorUtils;->blendColors(IIF)I

    move-result p0

    return p0
.end method
