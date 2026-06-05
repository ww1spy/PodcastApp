.class Lmobi/beyondpod/ui/core/ScaleGestureHelper$NoOpScaleGesture;
.super Lmobi/beyondpod/ui/core/ScaleGestureHelper;
.source "ScaleGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/core/ScaleGestureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpScaleGesture"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmobi/beyondpod/ui/core/ScaleGestureHelper;-><init>()V

    return-void
.end method

.method private static createInstance()Lmobi/beyondpod/ui/core/ScaleGestureHelper;
    .locals 2

    .line 32
    invoke-static {}, Lmobi/beyondpod/ui/core/ScaleGestureHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Created NoOp (pre 2.2) Gesture Detector"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$NoOpScaleGesture;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/ScaleGestureHelper$NoOpScaleGesture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
