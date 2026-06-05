.class public Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;
.super Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;
.source "EpisodeCardLayout.java"


# instance fields
.field _PlayButton:Landroid/view/View;

.field private _PlayTouchArea:I

.field _TDR:Landroid/graphics/Rect;

.field private mPreviousHeight:I

.field private mPreviousWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f09027e

    .line 41
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->_PlayButton:Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->_PlayTouchArea:I

    .line 45
    invoke-super {p0}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 51
    invoke-super/range {p0 .. p5}, Lmobi/beyondpod/ui/views/base/CheckableRelativeLayoutEvo;->onLayout(ZIIII)V

    .line 53
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->_PlayButton:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 59
    iget p1, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->mPreviousWidth:I

    if-ne p4, p1, :cond_1

    iget p1, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->mPreviousHeight:I

    if-eq p5, p1, :cond_2

    .line 61
    :cond_1
    iput p4, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->mPreviousWidth:I

    .line 62
    iput p5, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->mPreviousHeight:I

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->getHeight()I

    move-result p3

    iget p4, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->_PlayTouchArea:I

    sub-int/2addr p3, p4

    iget p4, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->_PlayTouchArea:I

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->getHeight()I

    move-result p5

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->_TDR:Landroid/graphics/Rect;

    .line 65
    new-instance p1, Landroid/view/TouchDelegate;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->_TDR:Landroid/graphics/Rect;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->_PlayButton:Landroid/view/View;

    invoke-direct {p1, p2, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/EpisodeCardLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2
    return-void
.end method
