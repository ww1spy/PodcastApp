.class public Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;
.super Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;
.source "TextAlbumArt.java"


# instance fields
.field _TV1:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;

.field _hSpacing:I

.field _screenHeight:I

.field _screenWidth:I

.field _textSize:I

.field _topMartginStart:I

.field _vSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private buildTextFor(Ljava/lang/String;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 4

    .line 77
    iget v0, p2, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->PrimaryVibrantColor:I

    const/16 v1, 0xc8

    const/16 v2, 0x50

    invoke-static {v0, v2, v1}, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->normalizeColor(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->setBackgroundColor(I)V

    .line 81
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "N/A"

    goto :goto_1

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x32

    if-ge v0, v2, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2022 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_1
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_TV1:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;

    new-instance v2, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;

    invoke-direct {v2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;-><init>()V

    iget p2, p2, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->LightVibrantColor:I

    const/4 v3, 0x0

    invoke-direct {p0, p2, v1, v3}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->changeColor(IIF)I

    move-result p2

    invoke-virtual {v2, p2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->setColor(I)Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;

    move-result-object p2

    const/16 v1, 0xb4

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->setTextSize(I)Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;

    move-result-object p2

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->setTypeface(Landroid/graphics/Typeface;)Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->build()Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->setText(Ljava/lang/String;Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;)V

    return-void
.end method

.method private changeColor(IIF)I
    .locals 3

    if-ltz p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    :goto_0
    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_1

    .line 97
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    :goto_1
    cmpl-float v2, p3, v0

    if-nez v2, :cond_2

    .line 98
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    :goto_2
    cmpl-float v0, p3, v0

    if-nez v0, :cond_3

    .line 99
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 101
    :goto_3
    invoke-static {p2, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 0

    .line 72
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->buildTextFor(Ljava/lang/String;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 44
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_textSize:I

    .line 50
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_textSize:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_topMartginStart:I

    .line 51
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_screenHeight:I

    .line 52
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_screenWidth:I

    .line 53
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_vSpacing:I

    .line 54
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_hSpacing:I

    .line 56
    new-instance v0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_TV1:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_TV1:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDeActivated()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->pauseVisualizerAnimation()V

    .line 107
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onDeActivated()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 65
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onFinishInflate()V

    .line 66
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->initialize()V

    return-void
.end method

.method public pauseVisualizerAnimation()V
    .locals 1

    .line 121
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->pauseVisualizerAnimation()V

    .line 122
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_TV1:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_TV1:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method public startVisualizerAnimation()V
    .locals 1

    .line 113
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->startVisualizerAnimation()V

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_TV1:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArt;->_TV1:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->resumeAnimation()V

    :cond_0
    return-void
.end method
