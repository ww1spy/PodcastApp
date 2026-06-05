.class public Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;
.super Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;
.source "BlurredAlbumArt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;
    }
.end annotation


# static fields
.field public static final MAX_TRANSPARENCY:F = 1.0f


# instance fields
.field _AlbumArtBG1:Landroid/widget/ImageView;

.field _AlbumArtBG2:Landroid/widget/ImageView;

.field _AlbumArtFG:Landroid/widget/ImageView;

.field private _DarkBackground:I

.field private _FirstLoad:Z

.field private _ShortAnimationDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_FirstLoad:Z

    .line 33
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0600b5

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_DarkBackground:I

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->updateBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private crossfade(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_DarkBackground:I

    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->setBackgroundColor(I)V

    .line 152
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 153
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_ShortAnimationDuration:I

    int-to-long v1, v1

    .line 154
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 157
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_ShortAnimationDuration:I

    int-to-long v0, v0

    .line 159
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$1;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$1;-><init>(Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;Landroid/widget/ImageView;)V

    .line 160
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p2, :cond_0

    const p2, 0x7f080221

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method private updateBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 115
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_FirstLoad:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG1:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 119
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG1:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_FirstLoad:Z

    .line 121
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->setBackgroundColor(I)V

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 128
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG1:Landroid/widget/ImageView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG2:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->crossfade(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG1:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 133
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG2:Landroid/widget/ImageView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG1:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->crossfade(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtFG:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 110
    new-instance p1, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;-><init>(Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$1;)V

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public duck(Z)V
    .locals 1

    .line 211
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtFG:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 6

    .line 60
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 61
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 66
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x40333333    # 2.8f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 67
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v0

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 68
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 72
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_DarkBackground:I

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->setBackgroundColor(I)V

    .line 74
    invoke-virtual {p0, v2, v2}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->setImageSize(II)V

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->setParseImageColors(Z)V

    .line 78
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG1:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG1:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG1:Landroid/widget/ImageView;

    const/16 v3, 0x96

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 82
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG1:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG2:Landroid/widget/ImageView;

    .line 85
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG2:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG2:Landroid/widget/ImageView;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG2:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtBG2:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 91
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 94
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtFG:Landroid/widget/ImageView;

    .line 95
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_AlbumArtFG:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x3e8

    .line 97
    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->_ShortAnimationDuration:I

    return-void
.end method

.method public loadEpisodeAlbumArt(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->loadEpisodeAlbumArt(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;)V

    return-void
.end method

.method public onDeActivated()V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->pauseVisualizerAnimation()V

    .line 175
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onDeActivated()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 53
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onFinishInflate()V

    .line 54
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->initialize()V

    return-void
.end method

.method public pauseVisualizerAnimation()V
    .locals 0

    .line 181
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->pauseVisualizerAnimation()V

    return-void
.end method
