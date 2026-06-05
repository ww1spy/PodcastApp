.class public Lmobi/beyondpod/ui/views/base/DownloadProgressButton;
.super Lmobi/beyondpod/ui/core/DontPressWithParentImageView;
.source "DownloadProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;
    }
.end annotation


# static fields
.field public static final STATE_DOWNLOAD:I = 0x0

.field public static final STATE_DOWNLOADED:I = 0x6

.field public static final STATE_DOWNLOADING:I = 0x3

.field public static final STATE_DOWNLOADING_UNKNOWN:I = 0x4

.field public static final STATE_DOWNLOAD_ERROR:I = 0x5

.field public static final STATE_DOWNLOAD_PENDING:I = 0x1

.field public static final STATE_RE_DOWNLOAD:I = 0x2


# instance fields
.field private _DownloadPausedDrawable:Landroid/graphics/drawable/Drawable;

.field private _DownloadedDrawable:Landroid/graphics/drawable/Drawable;

.field private _DownloadingDrawable:Landroid/graphics/drawable/Drawable;

.field private _NotDownloadedDrawable:Landroid/graphics/drawable/Drawable;

.field private _ProgressBackgroundPaint:Landroid/graphics/Paint;

.field private _ProgressPaint:Landroid/graphics/Paint;

.field private _ReDownloadDrawable:Landroid/graphics/drawable/Drawable;

.field private mInnerSize:I

.field private mMax:I

.field private mProgress:I

.field private mState:I

.field private mTempRectF:Landroid/graphics/RectF;

.field private mUnknownStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/core/DontPressWithParentImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 46
    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mMax:I

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mTempRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    const/16 v1, -0x5a

    .line 60
    iput v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mUnknownStart:I

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, v1, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/core/DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 46
    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mMax:I

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mTempRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    const/16 v1, -0x5a

    .line 60
    iput v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mUnknownStart:I

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/core/DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x64

    .line 46
    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mMax:I

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mTempRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    const/16 v0, -0x5a

    .line 60
    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mUnknownStart:I

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getColorInternal(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private getDrawableInternal(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/16 p1, 0x64

    .line 98
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mMax:I

    const/16 p1, 0x2d

    .line 99
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    .line 101
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600c2

    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getColorInternal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const v0, 0x7f0600c3

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getColorInternal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0800ed

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getDrawableInternal(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadedDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const v1, 0x7f0800ea

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getDrawableInternal(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_NotDownloadedDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_NotDownloadedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const v1, 0x7f0800ec

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getDrawableInternal(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadPausedDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadPausedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const v1, 0x7f0800eb

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getDrawableInternal(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ReDownloadDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ReDownloadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const v1, 0x7f0800ee

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getDrawableInternal(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 118
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mInnerSize:I

    .line 120
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressBackgroundPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x7f070059

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressPaint:Landroid/graphics/Paint;

    .line 127
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 130
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressPaint:Landroid/graphics/Paint;

    const v0, 0x7f07005a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setProgress(I)V

    return-void
.end method

.method private updateButtonFace()V
    .locals 1

    .line 265
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_NotDownloadedDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 291
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 279
    :pswitch_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadPausedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ReDownloadDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 287
    :pswitch_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 270
    :pswitch_4
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_NotDownloadedDrawable:Landroid/graphics/drawable/Drawable;

    .line 294
    :goto_0
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 244
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mTempRectF:Landroid/graphics/RectF;

    iget v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mInnerSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iget v3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mInnerSize:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/high16 v2, -0x41000000    # -0.5f

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 247
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getWidth()I

    move-result v1

    iget v2, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mInnerSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getHeight()I

    move-result v2

    iget v3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mInnerSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 249
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mTempRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x1

    iget-object v8, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 251
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    if-lez v0, :cond_1

    .line 253
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mTempRectF:Landroid/graphics/RectF;

    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mUnknownStart:I

    int-to-float v4, v0

    const/high16 v5, 0x42340000    # 45.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v9, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mTempRectF:Landroid/graphics/RectF;

    const/high16 v10, -0x3d4c0000    # -90.0f

    const/16 v0, 0x168

    iget v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mMax:I

    div-int/2addr v0, v1

    int-to-float v11, v0

    const/4 v12, 0x0

    iget-object v13, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_ProgressPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 260
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/core/DontPressWithParentImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 230
    invoke-super {p0}, Lmobi/beyondpod/ui/core/DontPressWithParentImageView;->drawableStateChanged()V

    .line 231
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_DownloadedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 235
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_NotDownloadedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->_NotDownloadedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method public getMax()I
    .locals 1

    .line 141
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 158
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 205
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 364
    instance-of v0, p1, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;

    if-nez v0, :cond_0

    .line 366
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/core/DontPressWithParentImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 370
    :cond_0
    check-cast p1, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;

    .line 371
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmobi/beyondpod/ui/core/DontPressWithParentImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 373
    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->access$100(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mMax:I

    .line 374
    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->access$200(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    .line 375
    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->access$300(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 349
    invoke-super {p0}, Lmobi/beyondpod/ui/core/DontPressWithParentImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->isSaveEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    new-instance v1, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;

    invoke-direct {v1, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 353
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mMax:I

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->access$102(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;I)I

    .line 354
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->access$202(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;I)I

    .line 355
    iget v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->access$302(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;I)I

    return-object v1

    :cond_0
    return-object v0
.end method

.method public setDownloadError(I)V
    .locals 1

    const/4 v0, 0x5

    .line 182
    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    .line 183
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    .line 185
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->updateButtonFace()V

    .line 187
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 149
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mMax:I

    .line 150
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 172
    :cond_0
    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    .line 173
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    .line 175
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->updateButtonFace()V

    .line 177
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->invalidate()V

    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 210
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/16 p1, 0x64

    .line 212
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 214
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mProgress:I

    .line 216
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->updateButtonFace()V

    .line 218
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->invalidate()V

    return-void
.end method

.method public setUnknownProgress(J)V
    .locals 0

    const/4 p1, 0x4

    .line 192
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mState:I

    .line 193
    iget p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mUnknownStart:I

    add-int/lit8 p1, p1, 0x2d

    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mUnknownStart:I

    .line 195
    iget p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mUnknownStart:I

    const/16 p2, 0x10e

    if-lt p1, p2, :cond_0

    const/16 p1, -0x5a

    .line 196
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->mUnknownStart:I

    .line 198
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->updateButtonFace()V

    .line 200
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->invalidate()V

    return-void
.end method
