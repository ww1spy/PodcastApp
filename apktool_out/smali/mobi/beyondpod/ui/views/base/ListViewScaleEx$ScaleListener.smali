.class public Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleListener;
.super Ljava/lang/Object;
.source "ListViewScaleEx.java"

# interfaces
.implements Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/ListViewScaleEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/ListViewScaleEx;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/ui/views/base/ListViewScaleEx;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleListener;->this$0:Lmobi/beyondpod/ui/views/base/ListViewScaleEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(F)Z
    .locals 5

    float-to-double v0, p1

    const-wide v2, 0x3ff199999999999aL    # 1.1

    cmpl-double p1, v0, v2

    const/4 v2, 0x1

    if-lez p1, :cond_1

    .line 87
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleListener;->this$0:Lmobi/beyondpod/ui/views/base/ListViewScaleEx;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleListener;->this$0:Lmobi/beyondpod/ui/views/base/ListViewScaleEx;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;->onExpand()V

    :cond_0
    return v2

    :cond_1
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    cmpg-double p1, v0, v3

    if-gez p1, :cond_3

    .line 94
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleListener;->this$0:Lmobi/beyondpod/ui/views/base/ListViewScaleEx;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleListener;->this$0:Lmobi/beyondpod/ui/views/base/ListViewScaleEx;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/base/ListViewScaleEx;->_ScaleScrollInfoListener:Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/base/ListViewScaleEx$ScaleScrollInfoListener;->onCollapse()V

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
