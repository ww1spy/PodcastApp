.class public abstract Lmobi/beyondpod/ui/core/ScaleGestureHelper;
.super Ljava/lang/Object;
.source "ScaleGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;,
        Lmobi/beyondpod/ui/core/ScaleGestureHelper$NoOpScaleGesture;,
        Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ScaleGestureHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lmobi/beyondpod/ui/core/ScaleGestureHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lmobi/beyondpod/ui/core/ScaleGestureHelper;
    .locals 1

    .line 24
    invoke-static {}, Lmobi/beyondpod/ui/core/ScaleGestureHelper$ScaleGesture;->access$000()Lmobi/beyondpod/ui/core/ScaleGestureHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract initialize(Landroid/content/Context;Lmobi/beyondpod/ui/core/ScaleGestureHelper$OnScaleGestureListener;)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
