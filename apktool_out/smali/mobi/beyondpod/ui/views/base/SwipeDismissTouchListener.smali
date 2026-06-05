.class public Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mViewWidth:I

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSlop:I

    .line 110
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 111
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mAnimationTime:J

    .line 114
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 115
    iput-object p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 116
    iput-object p3, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mCallbacks:Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->performDismiss()V

    return-void
.end method

.method private performDismiss()V
    .locals 5

    .line 253
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 280
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mCallbacks:Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 282
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 283
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 284
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 122
    iget p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 124
    iget p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 125
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mViewWidth:I

    .line 128
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    .line 194
    :pswitch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_1

    goto/16 :goto_9

    .line 198
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 200
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mAnimationTime:J

    .line 201
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 202
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 203
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 204
    iput-object v2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 205
    iput v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mTranslationX:F

    .line 206
    iput v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mDownX:F

    .line 207
    iput v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mDownY:F

    .line 208
    iput-boolean v5, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_9

    .line 213
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_2

    goto/16 :goto_9

    .line 217
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr p1, v1

    .line 219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mDownY:F

    sub-float/2addr v1, v2

    .line 220
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSlop:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 221
    iput-boolean v4, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSwiping:Z

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    .line 222
    iget v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSlop:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSlop:I

    neg-int v1, v1

    :goto_0
    iput v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSwipingSlop:I

    .line 223
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 226
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x3

    .line 228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    .line 227
    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 230
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 231
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 234
    :cond_4
    iget-boolean p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz p2, :cond_11

    .line 235
    iput p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mTranslationX:F

    .line 236
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    iget v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSwipingSlop:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 239
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr v6, p1

    iget p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float p1, p1

    div-float/2addr v6, p1

    sub-float p1, v3, v6

    .line 238
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return v4

    .line 141
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_5

    goto/16 :goto_9

    .line 145
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v6, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr p1, v6

    .line 146
    iget-object v6, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 147
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {p2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 148
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 149
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 150
    iget-object v7, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 153
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mViewWidth:I

    div-int/2addr v9, v1

    int-to-float v1, v9

    cmpl-float v1, v8, v1

    if-lez v1, :cond_7

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    move p1, v4

    goto :goto_1

    :cond_6
    move p1, v5

    :goto_1
    move v10, v4

    move v4, p1

    move p1, v10

    goto :goto_5

    .line 156
    :cond_7
    iget v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_c

    iget v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_c

    cmpg-float v1, v7, v6

    if-gez v1, :cond_c

    cmpg-float v1, v7, v6

    if-gez v1, :cond_c

    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v1, :cond_c

    cmpg-float p2, p2, v0

    if-gez p2, :cond_8

    move p2, v4

    goto :goto_2

    :cond_8
    move p2, v5

    :goto_2
    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    move p1, v4

    goto :goto_3

    :cond_9
    move p1, v5

    :goto_3
    if-ne p2, p1, :cond_a

    move p1, v4

    goto :goto_4

    :cond_a
    move p1, v5

    .line 161
    :goto_4
    iget-object p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_b

    goto :goto_5

    :cond_b
    move v4, v5

    goto :goto_5

    :cond_c
    move p1, v5

    move v4, p1

    :goto_5
    if-eqz p1, :cond_e

    .line 166
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v4, :cond_d

    iget p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mViewWidth:I

    :goto_6
    int-to-float p2, p2

    goto :goto_7

    :cond_d
    iget p2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mViewWidth:I

    neg-int p2, p2

    goto :goto_6

    .line 167
    :goto_7
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mAnimationTime:J

    .line 169
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$1;-><init>(Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;)V

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_8

    .line 176
    :cond_e
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz p1, :cond_f

    .line 178
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mAnimationTime:J

    .line 181
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 182
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 184
    :cond_f
    :goto_8
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 185
    iput-object v2, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 186
    iput v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mTranslationX:F

    .line 187
    iput v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mDownX:F

    .line 188
    iput v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mDownY:F

    .line 189
    iput-boolean v5, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mSwiping:Z

    goto :goto_9

    .line 131
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mDownX:F

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mDownY:F

    .line 133
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mCallbacks:Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 134
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_10
    return v5

    :cond_11
    :goto_9
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
