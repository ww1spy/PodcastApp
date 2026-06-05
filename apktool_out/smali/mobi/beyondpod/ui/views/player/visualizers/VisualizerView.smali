.class public Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;
.super Landroid/view/View;
.source "VisualizerView.java"


# static fields
.field private static final DIRECTION_DOWN:I = 0x1

.field private static final DIRECTION_LEFT:I = 0x0

.field private static final DIRECTION_RIGHT:I = 0x1

.field private static final DIRECTION_UP:I = 0x0

.field public static final DISTANCE_STEP:F = 0.003f

.field private static final DISTANCE_THRESHOLD:I = 0x64

.field public static final SIZE_STEP:F = 0.003f

.field private static final SIZE_THRESHOLD:I = 0x1e


# instance fields
.field private mDirection:I

.field private mLineDirections:[I

.field private mLineHeight:F

.field private mLineOffsets:[F

.field private mNumLines:I

.field private mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

.field private mPaint:Landroid/text/TextPaint;

.field private mPaused:Z

.field private mPositionsX:[F

.field private mText:[C

.field private mTextSize:F

.field private mWidths:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mDirection:I

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaused:Z

    .line 54
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mDirection:I

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaused:Z

    .line 60
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mDirection:I

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaused:Z

    .line 66
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->initialize()V

    return-void
.end method

.method private determineLineHeight()F
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :cond_0
    :goto_0
    if-nez v2, :cond_5

    const/16 v4, 0xa

    :goto_1
    const/16 v5, 0x1f4

    if-gt v4, v5, :cond_0

    .line 107
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    int-to-float v5, v4

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 108
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mText:[C

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mWidths:[F

    invoke-virtual {v3, v5, v6}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 110
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 111
    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/Paint$FontMetrics;->leading:F

    sub-float/2addr v5, v6

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v5, v3

    const v3, 0x3f266666    # 0.65f

    mul-float/2addr v3, v5

    const/high16 v5, 0x42c80000    # 100.0f

    move v6, v5

    move v5, v0

    .line 116
    :goto_2
    iget-object v7, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mText:[C

    array-length v7, v7

    if-ge v5, v7, :cond_3

    if-lez v5, :cond_1

    .line 122
    iget-object v7, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPositionsX:[F

    add-int/lit8 v8, v5, -0x1

    aget v7, v7, v8

    goto :goto_3

    :cond_1
    move v7, v1

    .line 125
    :goto_3
    iget-object v8, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPositionsX:[F

    iget-object v9, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mWidths:[F

    aget v9, v9, v5

    add-float/2addr v7, v9

    aput v7, v8, v5

    .line 127
    iget-object v7, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPositionsX:[F

    aget v7, v7, v5

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    .line 129
    iget-object v7, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPositionsX:[F

    iget-object v8, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mWidths:[F

    aget v8, v8, v5

    aput v8, v7, v5

    add-float/2addr v6, v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const-string v5, "Sample"

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Position Y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " and Bottom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->getBottom()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_4

    .line 139
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    iput v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mTextSize:F

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    return v3
.end method

.method private initialize()V
    .locals 3

    const-string v0, "This is some very long text that we need to display"

    .line 83
    new-instance v1, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;

    invoke-direct {v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;-><init>()V

    const v2, -0x777778

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->setColor(I)Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->setTextSize(I)Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->setTypeface(Landroid/graphics/Typeface;)Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->build()Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->setText(Ljava/lang/String;Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;)V

    return-void
.end method

.method private updatePaint()V
    .locals 3

    .line 88
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mText:[C

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mWidths:[F

    .line 95
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mText:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mWidths:[F

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 179
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x43160000    # 150.0f

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 189
    :goto_0
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mText:[C

    array-length v3, v3

    if-ge v1, v3, :cond_4

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 195
    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPositionsX:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    goto :goto_1

    :cond_1
    move v4, v3

    .line 198
    :goto_1
    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPositionsX:[F

    iget-object v6, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mWidths:[F

    aget v6, v6, v1

    add-float/2addr v6, v4

    aput v6, v5, v1

    .line 200
    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPositionsX:[F

    aget v5, v5, v1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 204
    iget v4, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mNumLines:I

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 209
    :cond_2
    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPositionsX:[F

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mWidths:[F

    aget v5, v5, v1

    aput v5, v4, v1

    .line 210
    iget v4, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineHeight:F

    add-float/2addr v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    .line 257
    :goto_2
    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    iget v5, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mTextSize:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 259
    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineOffsets:[F

    aget v4, v4, v0

    add-float/2addr v3, v4

    .line 260
    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mText:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 153
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->determineLineHeight()F

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineHeight:F

    .line 154
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineHeight:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mNumLines:I

    .line 156
    iget p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mNumLines:I

    new-array p1, p1, [F

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineOffsets:[F

    .line 157
    iget p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mNumLines:I

    new-array p1, p1, [I

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineDirections:[I

    const/4 p1, 0x0

    move p2, p1

    .line 161
    :goto_0
    iget p3, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mNumLines:I

    if-ge p2, p3, :cond_2

    if-nez p2, :cond_0

    .line 165
    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineDirections:[I

    aput p1, p3, p2

    goto :goto_2

    .line 169
    :cond_0
    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineDirections:[I

    iget-object p4, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineDirections:[I

    add-int/lit8 v0, p2, -0x1

    aget p4, p4, v0

    if-nez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    move p4, p1

    :goto_1
    aput p4, p3, p2

    .line 172
    :goto_2
    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mLineOffsets:[F

    const/4 p4, 0x0

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaused:Z

    return-void
.end method

.method public resumeAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPaused:Z

    .line 275
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;)V
    .locals 0

    .line 71
    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mText:[C

    .line 74
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mText:[C

    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->mPositionsX:[F

    .line 76
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->updatePaint()V

    .line 78
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerView;->invalidate()V

    return-void
.end method
