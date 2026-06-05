.class public Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;
.super Landroid/widget/PopupWindow;
.source "CharmPopUpBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;
    }
.end annotation


# instance fields
.field private _CharmListener:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;

.field private _CharmShownRunnable:Ljava/lang/Runnable;

.field private _ClosePopup:Landroid/view/View;

.field protected _Context:Landroid/content/Context;

.field private _Handler:Landroid/os/Handler;

.field private _ScreenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_Handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_ScreenSize:Landroid/graphics/Point;

    .line 46
    new-instance v0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$1;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_CharmShownRunnable:Ljava/lang/Runnable;

    .line 59
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_Context:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_CharmListener:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->setFocusable(Z)V

    .line 63
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->setTouchable(Z)V

    .line 64
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->setOutsideTouchable(Z)V

    const p1, 0x7f1100d4

    .line 65
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->setAnimationStyle(I)V

    const/4 p1, -0x2

    .line 66
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->setHeight(I)V

    .line 68
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_Context:Landroid/content/Context;

    const-string p3, "window"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_ScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, p3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_Context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 74
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->setContentView(Landroid/view/View;)V

    .line 76
    new-instance p1, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$2;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)V

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 86
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->getContentView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090096

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_ClosePopup:Landroid/view/View;

    .line 89
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_ClosePopup:Landroid/view/View;

    new-instance p2, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$3;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$3;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->getContentView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$4;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$4;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_CharmListener:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_Handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public show(Landroid/view/View;)V
    .locals 5

    .line 110
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You need to set the content view using the setContentView method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_ScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/high16 v4, -0x80000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 124
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_ScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->setWidth(I)V

    .line 126
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_ScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    .line 128
    invoke-virtual {p0, p1, v2, v2, v1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->showAtLocation(Landroid/view/View;III)V

    .line 130
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_Handler:Landroid/os/Handler;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->_CharmShownRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
