.class public Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;
.super Landroid/widget/FrameLayout;
.source "RepeatingFrameButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010072

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x1f4

    .line 36
    iput-wide p1, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mInterval:J

    .line 99
    new-instance p1, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$1;-><init>(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mRepeater:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setFocusable(Z)V

    .line 49
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setLongClickable(Z)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 7

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 110
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    iget-wide v3, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mStartTime:J

    sub-long v5, v0, v3

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mRepeatCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mRepeatCount:I

    :goto_0
    invoke-interface {v2, p0, v5, v6, p1}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 91
    iget-wide v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->doRepeat(Z)V

    .line 93
    iput-wide v2, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mStartTime:J

    .line 96
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 76
    iget-wide v2, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->doRepeat(Z)V

    .line 78
    iput-wide v4, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mStartTime:J

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performLongClick()Z
    .locals 2

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mStartTime:J

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mRepeatCount:I

    .line 67
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;J)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    .line 60
    iput-wide p2, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->mInterval:J

    return-void
.end method
