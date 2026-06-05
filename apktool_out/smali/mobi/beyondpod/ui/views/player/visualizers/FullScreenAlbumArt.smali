.class public Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;
.super Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;
.source "FullScreenAlbumArt.java"


# static fields
.field public static final MAX_TRANSPARENCY:F = 1.0f


# instance fields
.field _AlbumArt:Landroid/widget/ImageView;

.field _AlbumArt1:Landroid/widget/ImageView;

.field private _FirstLoad:Z

.field private _ShortAnimationDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_FirstLoad:Z

    return-void
.end method

.method private crossfade(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 120
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_ShortAnimationDuration:I

    int-to-long v1, v1

    .line 121
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 124
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 125
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_ShortAnimationDuration:I

    int-to-long v0, v0

    .line 126
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt$1;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt$1;-><init>(Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;Landroid/widget/ImageView;)V

    .line 127
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p2, :cond_0

    const p2, 0x7f080221

    .line 108
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 0

    .line 85
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_FirstLoad:Z

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt:Landroid/widget/ImageView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 88
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_FirstLoad:Z

    return-void

    .line 93
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt1:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_1

    .line 95
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt1:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 96
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt:Landroid/widget/ImageView;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt1:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->crossfade(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 101
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt1:Landroid/widget/ImageView;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->crossfade(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 5

    .line 53
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 54
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    invoke-virtual {p0, v0, v0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->setImageSize(II)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->setParseImageColors(Z)V

    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 69
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt:Landroid/widget/ImageView;

    const/16 v2, 0x7b

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt1:Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt1:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt1:Landroid/widget/ImageView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 76
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt1:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_AlbumArt1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x3e8

    .line 79
    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->_ShortAnimationDuration:I

    return-void
.end method

.method public onDeActivated()V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->pauseVisualizerAnimation()V

    .line 141
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onDeActivated()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 46
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onFinishInflate()V

    .line 47
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->initialize()V

    return-void
.end method

.method public pauseVisualizerAnimation()V
    .locals 0

    .line 147
    invoke-super {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->pauseVisualizerAnimation()V

    return-void
.end method
