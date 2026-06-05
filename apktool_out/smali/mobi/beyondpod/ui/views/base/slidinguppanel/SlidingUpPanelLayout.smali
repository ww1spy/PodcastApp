.class public Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SavedState;,
        Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;,
        Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;,
        Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SimplePanelSlideListener;,
        Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;,
        Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;,
        Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x1000000

.field private static final DEFAULT_MIN_FLING_VELOCITY:I = 0x190

.field private static final DEFAULT_PANEL_HEIGHT:I = 0x44

.field private static final DEFAULT_SHADOW_HEIGHT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SlidingUpPanelLayout"


# instance fields
.field private mAnchorPoint:F

.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mCoveredFadePaint:Landroid/graphics/Paint;

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mDragView:Landroid/view/View;

.field private mDragViewResId:I

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsSlidingEnabled:Z

.field private mIsUnableToDrag:Z

.field private mIsUsingDragViewTouchEvents:Z

.field private mMinFlingVelocity:I

.field private mPanelHeight:I

.field private mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

.field private final mScrollTouchSlop:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 253
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x190

    .line 54
    iput p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    const/high16 v0, -0x1000000

    .line 59
    iput v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 79
    iput v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 96
    iput v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 111
    sget-object v2, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    const/4 v2, 0x1

    .line 142
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    const/4 v3, 0x0

    .line 151
    iput v3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 162
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 164
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 256
    sget-object v4, Lmobi/beyondpod/evo/R$styleable;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 260
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    const/4 v4, 0x4

    .line 261
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    const/4 v4, 0x3

    .line 263
    invoke-virtual {p2, v4, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    const/4 p3, 0x2

    .line 265
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 267
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 270
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 274
    iget p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    const/high16 v4, 0x3f000000    # 0.5f

    if-ne p3, v1, :cond_2

    const/high16 p3, 0x42880000    # 68.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, v4

    float-to-int p3, p3

    .line 276
    iput p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 279
    :cond_2
    iget p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    if-ne p3, v1, :cond_3

    const/high16 p3, 0x40800000    # 4.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, v4

    float-to-int p2, p3

    .line 281
    iput p2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 284
    :cond_3
    invoke-virtual {p0, v3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 286
    new-instance p2, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$1;)V

    invoke-static {p0, v4, p2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 287
    iget p2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->updateFlingSensitivity(I)V

    .line 289
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    .line 290
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    .line 292
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->setCoveredFadeColor(I)V

    .line 294
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mScrollTouchSlop:I

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 0

    .line 25
    iget p0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    return p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 0

    .line 25
    iget p0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    return p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object p0
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 0

    .line 25
    iget p0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    return p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 0

    .line 25
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object p0
.end method

.method static synthetic access$702(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;)Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 0

    .line 25
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object p1
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$900(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 0

    .line 25
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getSlidingTop()I

    move-result p0

    return p0
.end method

.method private collapsePane(Landroid/view/View;I)Z
    .locals 0

    .line 876
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private expandPane(Landroid/view/View;IF)Z
    .locals 0

    .line 871
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, p3, p2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getSlidingTop()I
    .locals 2

    .line 881
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 886
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 2

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 507
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private isDragViewUnder(II)Z
    .locals 6

    .line 856
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x2

    .line 859
    new-array v3, v2, [I

    .line 860
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 861
    new-array v2, v2, [I

    .line 862
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 863
    aget v4, v2, v1

    add-int/2addr v4, p1

    const/4 p1, 0x1

    .line 864
    aget v2, v2, p1

    add-int/2addr v2, p2

    .line 865
    aget p2, v3, v1

    if-lt v4, p2, :cond_2

    aget p2, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr p2, v5

    if-ge v4, p2, :cond_2

    aget p2, v3, p1

    if-lt v2, p2, :cond_2

    aget p2, v3, p1

    .line 866
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    if-ge v2, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    return p1
.end method

.method private onPanelDragged(I)V
    .locals 1

    .line 995
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 996
    iget v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    .line 997
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 13

    move-object v0, p1

    .line 1136
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1138
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1139
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1140
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1141
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 1146
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 1147
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 1148
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 1149
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v1, v1

    .line 1157
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1175
    instance-of v0, p1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public collapsePane()Z
    .locals 2

    .line 899
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->collapsePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .line 1083
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    return-void

    .line 1091
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public disableSliding()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    return-void
.end method

.method dispatchOnPanelAnchored(Landroid/view/View;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelAnchored(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 439
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelCollapsed(Landroid/view/View;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelCollapsed(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 430
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelExpanded(Landroid/view/View;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelExpanded(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 421
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    iget v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1098
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1100
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1107
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    sub-int/2addr v1, v2

    .line 1108
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1109
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1111
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 1113
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1114
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 1003
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 1007
    iget v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    const/high16 v2, -0x80000000

    if-gez v1, :cond_0

    const/4 v1, 0x2

    .line 1008
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    .line 1012
    iget-boolean v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 1016
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1017
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_1

    .line 1020
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1022
    :cond_1
    iget v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    const/4 v3, 0x1

    .line 1029
    :cond_2
    iget-boolean v0, v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1031
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    check-cast v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;

    iget v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v0, v4}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;->onDrawWhenSliding(F)V

    .line 1034
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eq v1, v2, :cond_4

    .line 1037
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    if-eqz v3, :cond_5

    .line 1041
    iget p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const/high16 p4, -0x1000000

    and-int/2addr p3, p4

    ushr-int/lit8 p3, p3, 0x18

    int-to-float p3, p3

    .line 1042
    iget p4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    sub-float/2addr v5, p4

    mul-float/2addr p3, v5

    float-to-int p3, p3

    shl-int/lit8 p3, p3, 0x18

    .line 1043
    iget p4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const v0, 0xffffff

    and-int/2addr p4, v0

    or-int/2addr p3, p4

    .line 1044
    iget-object p4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1045
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    return p2
.end method

.method public enableSliding()V
    .locals 1

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    return-void
.end method

.method public expandPane()Z
    .locals 1

    const/4 v0, 0x0

    .line 911
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->expandPane(F)Z

    move-result v0

    return v0
.end method

.method public expandPane(F)Z
    .locals 2

    .line 924
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->isPaneVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->showPane()V

    .line 928
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->expandPane(Landroid/view/View;IF)Z

    move-result p1

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1163
    new-instance v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1181
    new-instance v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1169
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .line 335
    iget v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .line 355
    iget v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    return v0
.end method

.method getSlideDragTarget()Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;
    .locals 1

    .line 704
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    check-cast v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;

    return-object v0
.end method

.method public hidePane()V
    .locals 2

    .line 985
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 989
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 990
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    return-void
.end method

.method public isAnchored()Z
    .locals 2

    .line 948
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpanded()Z
    .locals 2

    .line 938
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaneVisible()Z
    .locals 3

    .line 964
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 968
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 969
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public isSlideable()Z
    .locals 1

    .line 959
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 515
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 516
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 522
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 310
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 311
    iget v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 313
    iget v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 715
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 717
    iget-boolean v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    .line 729
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v6, v4

    float-to-int v7, v5

    .line 733
    invoke-direct {p0, v6, v7}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v8

    if-nez v8, :cond_2

    return v3

    :cond_2
    if-eqz v0, :cond_3

    const/4 v8, 0x2

    if-eq v0, v8, :cond_4

    move p1, v3

    goto :goto_1

    .line 742
    :cond_3
    iput-boolean v3, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 743
    iput v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 744
    iput v5, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    .line 745
    invoke-direct {p0, v6, v7}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    if-nez v0, :cond_4

    move p1, v2

    goto :goto_1

    .line 754
    :cond_4
    iget v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 755
    iget v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 756
    iget-object v5, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 759
    iget-boolean v8, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    if-eqz v8, :cond_6

    .line 761
    iget v8, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-lez v8, :cond_5

    iget v8, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_5

    .line 763
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 769
    :cond_5
    iget p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_6

    .line 771
    invoke-direct {p0, v6, v7}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result p1

    goto :goto_0

    :cond_6
    move p1, v3

    :goto_0
    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    .line 778
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 779
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v3

    :cond_7
    :goto_1
    if-nez v1, :cond_9

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    :cond_9
    :goto_2
    return v2

    .line 725
    :cond_a
    :goto_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    return v3

    .line 719
    :cond_b
    :goto_4
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 720
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 626
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result p1

    .line 627
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result p2

    .line 628
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getSlidingTop()I

    move-result p3

    .line 630
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result p4

    .line 632
    iget-boolean p5, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz p5, :cond_2

    .line 634
    sget-object p5, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$1;->$SwitchMap$mobi$beyondpod$ui$views$base$slidinguppanel$SlidingUpPanelLayout$SlideState:[I

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v0

    aget p5, p5, v0

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p5, :pswitch_data_0

    .line 643
    iput v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 640
    :pswitch_0
    iget-boolean p5, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz p5, :cond_0

    iget v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    :cond_0
    iput v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 637
    :pswitch_1
    iget-boolean p5, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz p5, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    :cond_2
    :goto_0
    const/4 p5, 0x0

    move v0, p5

    :goto_1
    if-ge v0, p4, :cond_6

    .line 652
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 654
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    goto :goto_3

    .line 659
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 660
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 662
    iget-boolean v4, v2, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v4, :cond_4

    .line 664
    iget v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int v4, v3, v4

    iput v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    .line 667
    :cond_4
    iget-boolean v2, v2, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    iget v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p3

    goto :goto_2

    :cond_5
    move v2, p2

    :goto_2
    add-int/2addr v3, v2

    .line 670
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p1

    .line 674
    :try_start_0
    invoke-virtual {v1, p1, v2, v4, v3}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 677
    sget-object v2, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    const-string v3, "Child layout failed."

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 683
    :cond_6
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz p1, :cond_7

    .line 685
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 688
    :cond_7
    iput-boolean p5, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    .line 529
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 530
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 531
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 532
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v5, :cond_0

    .line 536
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eq v3, v5, :cond_1

    .line 540
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "height must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    .line 544
    iget v3, v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 546
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v3

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-le v3, v6, :cond_2

    .line 550
    sget-object v6, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    const-string v9, "onMeasure: More than two child views are not supported."

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {v0, v8}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    :goto_0
    const/4 v6, 0x0

    .line 558
    iput-object v6, v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v6, 0x0

    .line 559
    iput-boolean v6, v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    move v9, v6

    :goto_1
    if-ge v9, v3, :cond_a

    .line 564
    invoke-virtual {v0, v9}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 565
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 568
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v7, :cond_3

    .line 570
    iput-boolean v6, v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->dimWhenOffset:Z

    goto :goto_5

    :cond_3
    if-ne v9, v8, :cond_5

    .line 576
    iput-boolean v8, v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    .line 577
    iput-boolean v8, v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->dimWhenOffset:Z

    .line 578
    iput-object v10, v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 579
    iput-boolean v8, v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    .line 582
    iget-object v12, v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    check-cast v12, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;

    iget-object v13, v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v14, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    if-ne v13, v14, :cond_4

    move v13, v8

    goto :goto_2

    :cond_4
    move v13, v6

    .line 583
    :goto_2
    invoke-interface {v12, v13}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$ISlidePanelDragTarget;->getSlideDragTarget(Z)Landroid/view/View;

    move-result-object v12

    .line 582
    invoke-virtual {v0, v12}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 590
    :cond_5
    iget v12, v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v13, -0x1

    const/high16 v14, -0x80000000

    const/4 v15, -0x2

    if-ne v12, v15, :cond_6

    .line 592
    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto :goto_3

    .line 594
    :cond_6
    iget v12, v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    if-ne v12, v13, :cond_7

    .line 596
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto :goto_3

    .line 600
    :cond_7
    iget v12, v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 604
    :goto_3
    iget v6, v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-ne v6, v15, :cond_8

    .line 606
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    .line 608
    :cond_8
    iget v6, v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-ne v6, v13, :cond_9

    .line 610
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    .line 614
    :cond_9
    iget v6, v11, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 617
    :goto_4
    invoke-virtual {v10, v12, v6}, Landroid/view/View;->measure(II)V

    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto :goto_1

    .line 620
    :cond_a
    invoke-virtual {v0, v2, v4}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1198
    check-cast p1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SavedState;

    .line 1199
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1200
    iget-object p1, p1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1187
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1189
    new-instance v1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SavedState;

    invoke-direct {v1, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1190
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    iput-object v0, v1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 694
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    const/4 p1, 0x1

    .line 698
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 797
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 804
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    goto :goto_0

    .line 820
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 822
    iput v0, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 823
    iput p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 808
    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception processing touch event! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 799
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 791
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0
.end method

.method setAllChildrenVisible()V
    .locals 6

    .line 491
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 493
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 494
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 496
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAnchorPoint(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 395
    iput p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    :cond_0
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .line 326
    iput p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 327
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    return-void
.end method

.method public setPanelHeight(I)V
    .locals 0

    .line 346
    iput p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 347
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    return-void
.end method

.method public setPanelSlideListener(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public showPane()V
    .locals 2

    .line 974
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 978
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 979
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 980
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 3

    .line 1061
    iget-boolean p2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mCanSlide:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1067
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getSlidingTop()I

    move-result p2

    int-to-float p2, p2

    .line 1068
    iget v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 1071
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2, v1, v2, p1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1073
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1074
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public updateFlingSensitivity(I)V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 301
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    return-void
.end method

.method updateObscuredViewVisibility()V
    .locals 11

    .line 444
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v0

    .line 450
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 451
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    .line 452
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 457
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-static {v4}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 460
    iget-object v6, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    .line 461
    iget-object v7, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 462
    iget-object v8, p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v4

    move v7, v6

    move v8, v7

    .line 469
    :goto_0
    invoke-virtual {p0, v5}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 470
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 471
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 472
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 473
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v0, v4, :cond_2

    if-lt v2, v7, :cond_2

    if-gt v1, v6, :cond_2

    if-gt v3, v8, :cond_2

    const/4 v5, 0x4

    .line 486
    :cond_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
