.class public Lmobi/beyondpod/ui/views/base/AlbumView;
.super Landroid/widget/RelativeLayout;
.source "AlbumView.java"


# instance fields
.field private mBit:Landroid/graphics/Bitmap;

.field private mCoverPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/AlbumView;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/AlbumView;->setWillNotDraw(Z)V

    return-void
.end method

.method private addReflection(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v7, p1

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 93
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    return-object v7

    .line 99
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 102
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v15, v9

    div-float/2addr v1, v15

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v10, v0

    const/16 v0, 0xa

    if-ge v10, v0, :cond_1

    return-object v7

    .line 108
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v2, v0, v10

    .line 111
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 112
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v3, v8

    move v4, v10

    .line 118
    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    add-int/2addr v10, v9

    .line 122
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 129
    invoke-virtual {v2, v7, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x0

    .line 133
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x0

    int-to-float v6, v8

    add-int/lit8 v9, v9, 0x4

    int-to-float v8, v9

    move-object v10, v2

    move v12, v15

    move v13, v6

    move v14, v8

    move v9, v15

    move-object v15, v5

    .line 134
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 137
    invoke-virtual {v2, v0, v4, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 142
    new-instance v3, Landroid/graphics/LinearGradient;

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/16 v19, 0x0

    .line 143
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    const v21, 0x70ffffff

    const v22, 0xffffff

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v3

    move/from16 v18, v4

    move/from16 v20, v5

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 147
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 150
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v11, 0x0

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-float v14, v3

    move-object v10, v2

    move v12, v9

    move v13, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v0, "AlbumView"

    const-string v1, "Unable to draw image reflection! OutOfMemoryError"

    .line 161
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method private drawArtwork(Landroid/graphics/Canvas;)V
    .locals 5

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mBit:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getWidth()I

    move-result v0

    .line 174
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getHeight()I

    move-result v1

    .line 175
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 176
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 177
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 178
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 180
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 183
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 184
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mBit:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/AlbumView;->drawArtwork(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 55
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mBit:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-nez p1, :cond_1

    .line 60
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 62
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005e

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/AlbumView;->addReflection(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mBit:Landroid/graphics/Bitmap;

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    .line 69
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 71
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AlbumView"

    const-string v0, "failed to set Artwork Image. OutOfMemoryError!"

    .line 81
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "AlbumView"

    const-string v1, "failed to set Artwork Image"

    .line 77
    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
