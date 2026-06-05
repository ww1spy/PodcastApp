.class public Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;
.super Ljava/lang/Object;
.source "DominantColorCalculator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DominantColorCalculator"

.field private static final NUM_COLORS:I = 0x6

.field private static _DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;


# instance fields
.field private mColorScheme:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

.field private primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 17
    new-instance v10, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    const/16 v0, 0xa

    const/16 v1, 0x50

    const/16 v2, 0x14

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/16 v5, 0xff

    const/16 v6, 0x73

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/16 v7, 0xc8

    .line 18
    invoke-static {v7, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v7, 0xb4

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const/16 v8, 0x5a

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    move-object v0, v10

    move v1, v3

    move v2, v4

    move v3, v6

    move v4, v5

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v11

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;-><init>(IIIIIIIII)V

    sput-object v10, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 11

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    .line 45
    new-instance v0, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/Palette$Builder;->maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object p1

    .line 47
    new-instance v10, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    sget-object v0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    iget v0, v0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->MutedColor:I

    .line 48
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette;->getMutedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette;->getVibrantColor(I)I

    move-result v1

    sget-object v0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    iget v0, v0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->MutedColor:I

    .line 49
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette;->getMutedColor(I)I

    move-result v2

    sget-object v0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    iget v0, v0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->LightVibrantColor:I

    .line 50
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette;->getLightVibrantColor(I)I

    move-result v3

    sget-object v0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    iget v0, v0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->DarkVibrantColor:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette;->getDarkVibrantColor(I)I

    move-result v4

    sget-object v0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    iget v0, v0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->LightMutedColor:I

    .line 52
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette;->getLightMutedColor(I)I

    move-result v5

    sget-object v0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    iget v0, v0, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->DarkMutedColor:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette;->getDarkMutedColor(I)I

    move-result v6

    .line 54
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->getPrimaryColor(Landroid/support/v7/graphics/Palette;)I

    move-result v7

    .line 55
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->getSecondaryColor(Landroid/support/v7/graphics/Palette;)I

    move-result v8

    .line 56
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->getPrimaryVibrantColor(Landroid/support/v7/graphics/Palette;)I

    move-result v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;-><init>(IIIIIIIII)V

    iput-object v10, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->mColorScheme:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    return-void
.end method

.method private getColorScheme()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;
    .locals 1

    .line 60
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->mColorScheme:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    return-object v0
.end method

.method public static getColorScheme(Landroid/graphics/Bitmap;)Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;
    .locals 3

    .line 26
    :try_start_0
    new-instance v0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    invoke-direct {v0}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->getColorScheme()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to generate dominant color! reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    return-object p0
.end method

.method public static getDefaultColors()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;
    .locals 1

    .line 38
    sget-object v0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    return-object v0
.end method

.method private getPrimaryColor(Landroid/support/v7/graphics/Palette;)I
    .locals 3

    .line 64
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    .line 65
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    :cond_1
    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz p1, :cond_3

    .line 70
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getPrimaryVibrantColor(Landroid/support/v7/graphics/Palette;)I
    .locals 7

    .line 89
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 93
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result p1

    int-to-double v1, p1

    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result p1

    int-to-double v3, p1

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    cmpl-double p1, v1, v3

    if-lez p1, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    return p1

    .line 97
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    return p1

    .line 101
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz p1, :cond_4

    .line 102
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getSecondaryColor(Landroid/support/v7/graphics/Palette;)I
    .locals 4

    .line 77
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->primarySwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->hashCode()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
