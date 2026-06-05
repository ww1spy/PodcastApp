.class Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ScaleGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture$ScaleListener;->this$0:Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;Lmobi/beyondpod/ui/core/ScaleGestureHelper$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture$ScaleListener;-><init>(Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture$ScaleListener;->this$0:Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;

    iget-object v0, v0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;->_scaleListener:Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture$ScaleListener;->this$0:Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;

    iget-object v0, v0, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;->_scaleListener:Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;->onScale(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
