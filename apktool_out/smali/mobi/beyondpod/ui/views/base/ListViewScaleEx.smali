.class public Lmobi/beyondpod/ui/views/base/ListViewScaleEx;
.super Lmobi/beyondpod/ui/views/base/ListViewEx;
.source "ListViewScaleEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleListener;,
        Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;
    }
.end annotation


# instance fields
.field _ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

.field _scaleDetector:Lmobi/beyondpod/ui/core/ScaleGestureHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/ListViewEx;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    .line 56
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->initializeView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/ListViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    .line 50
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->initializeView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/base/ListViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    .line 44
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->initializeView()V

    return-void
.end method


# virtual methods
.method protected OnItemSelected(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;->itemSelected(I)V

    :cond_0
    return-void
.end method

.method protected initializeView()V
    .locals 3

    .line 62
    invoke-super {p0}, Lmobi/beyondpod/ui/views/base/ListViewEx;->initializeView()V

    .line 64
    invoke-static {}, Lmobi/beyondpod/ui/core/ScaleGestureHelper;->getInstance()Lmobi/beyondpod/ui/core/ScaleGestureHelper;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_scaleDetector:Lmobi/beyondpod/ui/core/ScaleGestureHelper;

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_scaleDetector:Lmobi/beyondpod/ui/core/ScaleGestureHelper;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleListener;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleListener;-><init>(Lmobi/beyondpod/ui/views/base/ListViewScaleEx;)V

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/core/ScaleGestureHelper;->initialize(Landroid/content/Context;Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_scaleDetector:Lmobi/beyondpod/ui/core/ScaleGestureHelper;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/core/ScaleGestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/base/ListViewEx;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScaleScrollListener(Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    return-void
.end method
