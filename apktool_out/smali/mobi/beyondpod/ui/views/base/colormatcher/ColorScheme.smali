.class public Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;
.super Ljava/lang/Object;
.source "ColorScheme.java"


# instance fields
.field public final DarkMutedColor:I

.field public final DarkVibrantColor:I

.field public final LightMutedColor:I

.field public final LightVibrantColor:I

.field public final MutedColor:I

.field public final PrimaryColor:I

.field public final PrimaryVibrantColor:I

.field public final SecondaryColor:I

.field public final VibrantColor:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->VibrantColor:I

    .line 26
    iput p2, p0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->MutedColor:I

    .line 28
    iput p3, p0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->LightVibrantColor:I

    .line 29
    iput p4, p0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->DarkVibrantColor:I

    .line 31
    iput p5, p0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->LightMutedColor:I

    .line 32
    iput p6, p0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->DarkMutedColor:I

    .line 34
    iput p7, p0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->PrimaryColor:I

    .line 35
    iput p8, p0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->SecondaryColor:I

    .line 37
    iput p9, p0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->PrimaryVibrantColor:I

    return-void
.end method

.method public static normalizeColor(III)I
    .locals 5

    .line 42
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 44
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 45
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    if-le v0, p2, :cond_0

    if-le v1, p2, :cond_0

    if-le v2, p2, :cond_0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 52
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, p2

    sub-int p2, v0, v3

    sub-int v4, v1, v3

    sub-int v3, v2, v3

    goto :goto_0

    :cond_0
    move p2, v0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v0, p1, :cond_1

    if-ge v1, p1, :cond_1

    if-ge v2, p1, :cond_1

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 63
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    add-int/2addr v1, p1

    sub-int v4, v1, p2

    add-int/2addr p1, v2

    sub-int v3, p1, p2

    move p2, v0

    .line 72
    :cond_1
    invoke-static {p0, p2, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method
