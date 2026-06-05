.class public Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_FAKE:I = -0xd

.field public static final MODE_DYNAMIC:I = 0x2

.field public static final MODE_SOLID:I = 0x1

.field public static final MODE_TRANSPARENT:I = 0x0

.field public static final SWIPE_DOWN:I = 0x2

.field public static final SWIPE_LEFT:I = 0x3

.field public static final SWIPE_RIGHT:I = 0x4

.field public static final SWIPE_UP:I = 0x1


# instance fields
.field private context:Landroid/view/View;

.field private detector:Landroid/view/GestureDetector;

.field private listener:Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;

.field private mode:I

.field private running:Z

.field private swipe_Max_Distance:I

.field private swipe_Min_Distance:I

.field private swipe_Min_Velocity:I

.field private tapIndicator:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/16 v0, 0x64

    .line 22
    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Distance:I

    const/16 v1, 0x15e

    .line 23
    iput v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Max_Distance:I

    .line 24
    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Velocity:I

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->mode:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->running:Z

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->tapIndicator:Z

    .line 35
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->context:Landroid/view/View;

    .line 36
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->detector:Landroid/view/GestureDetector;

    .line 37
    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->listener:Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 68
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->mode:I

    return v0
.end method

.method public getSwipeMaxDistance()I
    .locals 1

    .line 88
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Max_Distance:I

    return v0
.end method

.method public getSwipeMinDistance()I
    .locals 1

    .line 92
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Distance:I

    return v0
.end method

.method public getSwipeMinVelocity()I
    .locals 1

    .line 96
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Velocity:I

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 141
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->listener:Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;->onDoubleTap()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 106
    iget v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Max_Distance:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_5

    iget v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Max_Distance:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 110
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 113
    iget v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Velocity:I

    int-to-float v2, v2

    cmpl-float p3, p3, v2

    const/4 v2, 0x1

    if-lez p3, :cond_2

    iget p3, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Distance:I

    int-to-float p3, p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 115
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->listener:Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;->onSwipe(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->listener:Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;->onSwipe(I)V

    goto :goto_0

    .line 121
    :cond_2
    iget p3, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Velocity:I

    int-to-float p3, p3

    cmpl-float p3, p4, p3

    if-lez p3, :cond_4

    iget p3, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Distance:I

    int-to-float p3, p3

    cmpl-float p3, v1, p3

    if-lez p3, :cond_4

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->listener:Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;

    invoke-interface {p1, v2}, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;->onSwipe(I)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->listener:Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;->onSwipe(I)V

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    return v2

    :cond_5
    :goto_1
    return v3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 153
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, -0xd

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->context:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 158
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->listener:Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter$GestureListener;->onSingleTap()V

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->tapIndicator:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 42
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 47
    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->mode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 49
    :cond_1
    iget v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->mode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v4, -0xd

    if-ne v1, v4, :cond_2

    .line 52
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 55
    :cond_3
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->tapIndicator:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 57
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->tapIndicator:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->running:Z

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 64
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->mode:I

    return-void
.end method

.method public setSwipeMaxDistance(I)V
    .locals 0

    .line 76
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Max_Distance:I

    return-void
.end method

.method public setSwipeMinDistance(I)V
    .locals 0

    .line 80
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Distance:I

    return-void
.end method

.method public setSwipeMinVelocity(I)V
    .locals 0

    .line 84
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/GestureFilter;->swipe_Min_Velocity:I

    return-void
.end method
