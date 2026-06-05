.class public Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;
.super Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;
.source "TextAlbumArtFading.java"


# instance fields
.field _DefaultBGColor:I

.field _DefaultC1Color:I

.field _DefaultC2Color:I

.field _LastTitle:Ljava/lang/String;

.field _MinAlpha:F

.field _TV1:Landroid/widget/TextView;

.field _TV2:Landroid/widget/TextView;

.field _Vc1:Landroid/view/ViewPropertyAnimator;

.field _Vc2:Landroid/view/ViewPropertyAnimator;

.field _hSpacing:I

.field _random:Ljava/util/Random;

.field _screenHeight:I

.field _screenWidth:I

.field _textSize:I

.field _topMartginStart:I

.field _vSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_random:Ljava/util/Random;

    const/16 p1, 0x14

    const/16 p2, 0x50

    const/16 p3, 0xa

    .line 37
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_DefaultBGColor:I

    const/16 p1, 0xff

    const/16 p2, 0x73

    .line 38
    invoke-static {p2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_DefaultC1Color:I

    const/16 p2, 0xcd

    .line 39
    invoke-static {p2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_DefaultC2Color:I

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_MinAlpha:F

    return-void
.end method

.method private buildTextFor(Ljava/lang/String;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 8

    .line 115
    iget v0, p2, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->PrimaryVibrantColor:I

    const/16 v1, 0xc8

    const/16 v2, 0x50

    invoke-static {v0, v2, v1}, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->normalizeColor(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->setBackgroundColor(I)V

    const-string v0, ""

    const-string v2, ""

    const-string v3, "\\s+"

    .line 121
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 123
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, p1, v3

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_0

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_1

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v2, v0

    .line 134
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 136
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 138
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 139
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 140
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 142
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    iget v0, p2, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->LightVibrantColor:I

    invoke-direct {p0, v0, v1, v3}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->changeColor(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    iget p2, p2, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->DarkMutedColor:I

    invoke-direct {p0, p2, v1, v3}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->changeColor(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private changeColor(IIF)I
    .locals 3

    if-ltz p2, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    :goto_0
    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_1

    .line 152
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

    .line 153
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

    .line 154
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 156
    :goto_3
    invoke-static {p2, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private startBackgroundAnimationFade(II)V
    .locals 8

    .line 163
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_textSize:I

    .line 164
    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_textSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    .line 166
    iget v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_textSize:I

    sub-int v2, p2, v2

    .line 172
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc1:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc1:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 175
    :cond_0
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc2:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc2:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 178
    :cond_1
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_MinAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1770

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 179
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v6, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$1;

    invoke-direct {v6, p0, v2, v1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$1;-><init>(Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;III)V

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc1:Landroid/view/ViewPropertyAnimator;

    .line 222
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_MinAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;

    invoke-direct {v1, p0, p2, p1}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading$2;-><init>(Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;II)V

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc2:Landroid/view/ViewPropertyAnimator;

    .line 265
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc1:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 266
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc2:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 0

    .line 110
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->buildTextFor(Ljava/lang/String;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    return-void
.end method

.method public initialize()V
    .locals 6

    .line 61
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 62
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_textSize:I

    .line 68
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_textSize:I

    const/4 v2, 0x3

    div-int/2addr v0, v2

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_topMartginStart:I

    .line 69
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_screenHeight:I

    .line 70
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_screenWidth:I

    .line 71
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_vSpacing:I

    .line 72
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_hSpacing:I

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    iget v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_textSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    iget v5, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_DefaultC1Color:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_topMartginStart:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 81
    iget v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_hSpacing:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 83
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 84
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV1:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    iget v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_textSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    iget v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_DefaultC2Color:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_vSpacing:I

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    iget v4, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_topMartginStart:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 94
    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_hSpacing:I

    mul-int/2addr v3, v1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 95
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 96
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_TV2:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDeActivated()V
    .locals 0

    .line 272
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->pauseVisualizerAnimation()V

    .line 273
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onDeActivated()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 103
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onFinishInflate()V

    .line 104
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->initialize()V

    return-void
.end method

.method public pauseVisualizerAnimation()V
    .locals 1

    .line 289
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc1:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc2:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->pauseVisualizerAnimation()V

    .line 294
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc1:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 295
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc2:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc1:Landroid/view/ViewPropertyAnimator;

    .line 298
    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc2:Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public startVisualizerAnimation()V
    .locals 2

    .line 279
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc1:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_Vc2:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_1

    .line 281
    :cond_0
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->startVisualizerAnimation()V

    .line 282
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_vSpacing:I

    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->_hSpacing:I

    invoke-direct {p0, v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/TextAlbumArtFading;->startBackgroundAnimationFade(II)V

    :cond_1
    return-void
.end method
