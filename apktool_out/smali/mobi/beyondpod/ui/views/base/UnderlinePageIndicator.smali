.class public Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;
.super Landroid/view/View;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final FADE_FRAME_MS:I = 0x1e

.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCurrentPage:I

.field private mFadeBy:I

.field private mFadeDelay:I

.field private mFadeLength:I

.field private final mFadeRunnable:Ljava/lang/Runnable;

.field private mFades:Z

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPositionOffset:F

.field private mScrollState:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0401d0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    .line 57
    iput v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mLastMotionX:F

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mActivePointerId:I

    .line 61
    new-instance v0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;-><init>(Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001d

    .line 90
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0a001e

    .line 91
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v3, 0x7f060069

    .line 92
    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 95
    sget-object v4, Lmobi/beyondpod/evo/R$styleable;->UnderlinePageIndicator:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    .line 97
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setFades(Z)V

    const/4 p3, 0x4

    .line 98
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setSelectedColor(I)V

    .line 99
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setFadeDelay(I)V

    const/4 p3, 0x2

    .line 100
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setFadeLength(I)V

    .line 102
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 104
    invoke-virtual {p0, p3}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFades:Z

    return p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;)Landroid/graphics/Paint;
    .locals 0

    .line 39
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;)I
    .locals 0

    .line 39
    iget p0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeBy:I

    return p0
.end method


# virtual methods
.method public getFadeDelay()I
    .locals 1

    .line 133
    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeDelay:I

    return v0
.end method

.method public getFadeLength()I
    .locals 1

    .line 141
    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeLength:I

    return v0
.end method

.method public getFades()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFades:Z

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 150
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 349
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 170
    :cond_1
    iget v1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 171
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setCurrentItem(I)V

    return-void

    .line 175
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->getPaddingLeft()I

    move-result v1

    .line 176
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    int-to-float v0, v1

    .line 177
    iget v1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    int-to-float v1, v1

    iget v3, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPositionOffset:F

    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float v4, v0, v1

    add-float v6, v4, v2

    .line 179
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v5, v0

    .line 180
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v7, v0

    .line 181
    iget-object v8, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 354
    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mScrollState:I

    .line 356
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 363
    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    .line 364
    iput p2, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPositionOffset:F

    .line 365
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFades:Z

    if-eqz v0, :cond_1

    if-lez p3, :cond_0

    .line 367
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 368
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 369
    :cond_0
    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 370
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->invalidate()V

    .line 375
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 382
    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 383
    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    const/4 v0, 0x0

    .line 384
    iput v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPositionOffset:F

    .line 385
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->invalidate()V

    .line 386
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 389
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 401
    check-cast p1, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;

    .line 402
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 403
    iget p1, p1, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    .line 404
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 409
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 410
    new-instance v1, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 411
    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    iput v0, v1, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 192
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 196
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 289
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 292
    iget v4, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_2

    move v2, v1

    .line 295
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mActivePointerId:I

    .line 298
    :cond_3
    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mLastMotionX:F

    goto/16 :goto_0

    .line 278
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mLastMotionX:F

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mActivePointerId:I

    goto/16 :goto_0

    .line 211
    :pswitch_3
    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 214
    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mLastMotionX:F

    sub-float v0, p1, v0

    .line 216
    iget-boolean v2, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mIsDragging:Z

    if-nez v2, :cond_4

    .line 217
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 218
    iput-boolean v1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mIsDragging:Z

    .line 222
    :cond_4
    iget-boolean v2, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mIsDragging:Z

    if-eqz v2, :cond_a

    .line 223
    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mLastMotionX:F

    .line 224
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 228
    :cond_5
    :try_start_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :pswitch_4
    iget-boolean v3, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_9

    .line 242
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 243
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 247
    iget v6, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    const/4 v7, 0x3

    if-lez v6, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v8, v5, v4

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    if-eq v0, v7, :cond_6

    .line 249
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_6
    return v1

    .line 252
    :cond_7
    iget v6, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    sub-int/2addr v3, v1

    if-ge v6, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v5, v4

    cmpl-float p1, p1, v5

    if-lez p1, :cond_9

    if-eq v0, v7, :cond_8

    .line 254
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_8
    return v1

    .line 260
    :cond_9
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mIsDragging:Z

    const/4 p1, -0x1

    .line 261
    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mActivePointerId:I

    .line 262
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 266
    :try_start_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 205
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mActivePointerId:I

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mLastMotionX:F

    :catch_0
    :cond_a
    :goto_0
    return v1

    :cond_b
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 186
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 339
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 340
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 343
    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mCurrentPage:I

    .line 344
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->invalidate()V

    return-void
.end method

.method public setFadeDelay(I)V
    .locals 0

    .line 137
    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeDelay:I

    return-void
.end method

.method public setFadeLength(I)V
    .locals 1

    .line 145
    iput p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeLength:I

    .line 146
    iget p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeLength:I

    div-int/lit8 p1, p1, 0x1e

    const/16 v0, 0xff

    div-int/2addr v0, p1

    iput v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeBy:I

    return-void
.end method

.method public setFades(Z)V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFades:Z

    if-eq p1, v0, :cond_1

    .line 121
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFades:Z

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 126
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 316
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 317
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_2
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 320
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 321
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 334
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setCurrentItem(I)V

    return-void
.end method
