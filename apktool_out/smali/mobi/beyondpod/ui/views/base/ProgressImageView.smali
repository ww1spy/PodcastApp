.class public Lmobi/beyondpod/ui/views/base/ProgressImageView;
.super Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;
.source "ProgressImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;
    }
.end annotation


# instance fields
.field private _BGSize:I

.field private _ColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private _Max:I

.field private _Progress:I

.field private _ProgressBGPaint:Landroid/graphics/Paint;

.field private _ProgressPaint:Landroid/graphics/Paint;

.field private _ProgressSize:I

.field private _TempRect:Landroid/graphics/Rect;

.field private _TrackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 38
    iput v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 38
    iput v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x64

    .line 38
    iput v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private dimImageInternal(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/16 v0, 0x64

    .line 67
    iput v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    .line 70
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getResources()Landroid/content/res/Resources;

    .line 71
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600c4

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 72
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600c5

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 73
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600c6

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    .line 78
    sget-object v5, Lmobi/beyondpod/evo/R$styleable;->ProgressImageView:[I

    invoke-virtual {p1, p2, v5, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    .line 80
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_BGSize:I

    const/4 p2, 0x4

    .line 81
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressSize:I

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 p2, 0x3

    .line 84
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 p2, 0x5

    .line 85
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressBGPaint:Landroid/graphics/Paint;

    .line 92
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressPaint:Landroid/graphics/Paint;

    .line 96
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TrackPaint:Landroid/graphics/Paint;

    .line 100
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    new-instance p1, Landroid/graphics/ColorMatrix;

    const/16 p2, 0x14

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 117
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-void

    nop

    :array_0
    .array-data 4
        0x3ea8f5c3    # 0.33f
        0x3ea8f5c3    # 0.33f
        0x3eae147b    # 0.34f
        0x0
        0x42a00000    # 80.0f
        0x3ea8f5c3    # 0.33f
        0x3ea8f5c3    # 0.33f
        0x3eae147b    # 0.34f
        0x0
        0x42a00000    # 80.0f
        0x3ea8f5c3    # 0.33f
        0x3ea8f5c3    # 0.33f
        0x3eae147b    # 0.34f
        0x0
        0x42a00000    # 80.0f
        0x0
        0x0
        0x0
        0x3ecccccd    # 0.4f
        0x0
    .end array-data
.end method


# virtual methods
.method public dimImage(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    .line 160
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->dimImageInternal(Z)V

    .line 161
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 172
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 174
    iget v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getHeight()I

    move-result v1

    iget v2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_BGSize:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 182
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressSize:I

    sub-int/2addr v0, v1

    .line 184
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressSize:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    iget v1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    iget v2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    if-ne v1, v2, :cond_1

    .line 187
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40a00000    # 5.0f

    .line 191
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    int-to-float v3, v3

    iget v5, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 193
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    iget v3, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressSize:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 196
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getWidth()I

    move-result v3

    iget v5, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressSize:I

    add-int/2addr v5, v0

    invoke-virtual {v2, v1, v0, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 200
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_TempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->getWidth()I

    move-result v1

    iget v2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_ProgressSize:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getMax()I
    .locals 1

    .line 125
    iget v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 142
    iget v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 220
    instance-of v0, p1, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;

    if-nez v0, :cond_0

    .line 222
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 226
    :cond_0
    check-cast p1, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;

    .line 227
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 229
    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->access$000(Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    .line 230
    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->access$100(Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 206
    invoke-super {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->isSaveEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    new-instance v1, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;

    invoke-direct {v1, v0}, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 210
    iget v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->access$002(Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;I)I

    .line 211
    iget v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->access$102(Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;I)I

    return-object v1

    :cond_0
    return-object v0
.end method

.method public setMax(I)V
    .locals 0

    .line 133
    iput p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    .line 134
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 152
    iput p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    .line 153
    iget p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Progress:I

    iget v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView;->_Max:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->dimImageInternal(Z)V

    .line 154
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->invalidate()V

    return-void
.end method
