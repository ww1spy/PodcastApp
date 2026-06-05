.class Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;
.super Lmobi/beyondpod/ui/core/ScaleGestureHelper;
.source "ScaleGestureHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/core/ScaleGestureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleGesture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture$ScaleListener;
    }
.end annotation


# instance fields
.field _scaleDetector:Landroid/view/ScaleGestureDetector;

.field _scaleListener:Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lmobi/beyondpod/ui/core/ScaleGestureHelper;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lmobi/beyondpod/ui/core/ScaleGestureHelper;
    .locals 1

    .line 50
    invoke-static {}, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;->createInstance()Lmobi/beyondpod/ui/core/ScaleGestureHelper;

    move-result-object v0

    return-object v0
.end method

.method private static createInstance()Lmobi/beyondpod/ui/core/ScaleGestureHelper;
    .locals 1

    .line 58
    new-instance v0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 75
    iput-object p2, p0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;->_scaleListener:Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;

    .line 76
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture$ScaleListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture$ScaleListener;-><init>(Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;Lmobi/beyondpod/ui/core/ScaleGestureHelper$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;->_scaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;->_scaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;->_scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
