.class public Lmobi/beyondpod/ui/views/base/BPDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "BPDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/BPDrawerLayout$IDrawerOwner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BPDrawerLayout"


# instance fields
.field _DrawerOwner:Lmobi/beyondpod/ui/views/base/BPDrawerLayout$IDrawerOwner;

.field private _LeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field _VC:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_LeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_LeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_LeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/base/BPDrawerLayout;II)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->sendTouchEvent(II)V

    return-void
.end method

.method private sendTouchEvent(II)V
    .locals 9

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 117
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long v6, v2, v4

    int-to-float v5, p1

    const/4 p1, 0x0

    const/4 v8, 0x0

    move-wide v2, v6

    move v4, p2

    move v6, p1

    move v7, v8

    .line 122
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 133
    :try_start_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 137
    :catch_0
    sget-object p1, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->TAG:Ljava/lang/String;

    const-string p2, "failed to dispatchTouchEvent!"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 146
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 150
    :catch_0
    sget-object p1, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->TAG:Ljava/lang/String;

    const-string v0, "failed to handle dispatchTouchEvent!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public initialize(Lmobi/beyondpod/ui/views/base/BPDrawerLayout$IDrawerOwner;)V
    .locals 1

    .line 94
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_DrawerOwner:Lmobi/beyondpod/ui/views/base/BPDrawerLayout$IDrawerOwner;

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_VC:Landroid/view/ViewConfiguration;

    .line 101
    const-class p1, Landroid/support/v4/widget/DrawerLayout;

    const-string v0, "mLeftDragger"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/ViewDragHelper;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_LeftDragger:Landroid/support/v4/widget/ViewDragHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_DrawerOwner:Lmobi/beyondpod/ui/views/base/BPDrawerLayout$IDrawerOwner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_DrawerOwner:Lmobi/beyondpod/ui/views/base/BPDrawerLayout$IDrawerOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$IDrawerOwner;->onDrawerBackKeyPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 162
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 166
    :catch_0
    sget-object p1, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->TAG:Ljava/lang/String;

    const-string v0, "failed to handle onTouchEvent!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public peekDrawer(I)V
    .locals 3

    .line 42
    new-instance v0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$1;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$1;-><init>(Lmobi/beyondpod/ui/views/base/BPDrawerLayout;I)V

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    new-instance v0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$2;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$2;-><init>(Lmobi/beyondpod/ui/views/base/BPDrawerLayout;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$3;-><init>(Lmobi/beyondpod/ui/views/base/BPDrawerLayout;)V

    const-wide/16 v0, 0x2bc

    invoke-virtual {p0, p1, v0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateFlingSensitivity()V
    .locals 2

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_LeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_LeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_VC:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->_VC:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    :cond_1
    return-void
.end method
