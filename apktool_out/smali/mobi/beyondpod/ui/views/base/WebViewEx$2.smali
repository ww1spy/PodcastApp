.class Lmobi/beyondpod/ui/views/base/WebViewEx$2;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/base/WebViewEx;->initialize(Lmobi/beyondpod/ui/views/base/IWebViewOwner;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/WebViewEx;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/WebViewEx;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/WebViewEx$2;->this$0:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 195
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/WebViewEx$2;->this$0:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->access$000(Lmobi/beyondpod/ui/views/base/WebViewEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/WebViewEx$2;->this$0:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->access$100(Lmobi/beyondpod/ui/views/base/WebViewEx;)Lmobi/beyondpod/ui/views/base/IWebViewOwner;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x5

    invoke-interface {v0, v1, p1, v2}, Lmobi/beyondpod/ui/views/base/IWebViewOwner;->onDoubleTap(FFI)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
