.class public Lmobi/beyondpod/ui/views/base/WebViewEx;
.super Landroid/webkit/WebView;
.source "WebViewEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewEx"

.field private static volatile _InstanceCount:I

.field private static final _syncLock:Ljava/lang/Object;


# instance fields
.field private _CurrInstance:I

.field private _Detector:Landroid/view/GestureDetector;

.field private _EnableDoubleTapClose:Z

.field private _Owner:Lmobi/beyondpod/ui/views/base/IWebViewOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_syncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_EnableDoubleTapClose:Z

    .line 61
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_EnableDoubleTapClose:Z

    .line 55
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_EnableDoubleTapClose:Z

    .line 49
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->init()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/base/WebViewEx;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_EnableDoubleTapClose:Z

    return p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/base/WebViewEx;)Lmobi/beyondpod/ui/views/base/IWebViewOwner;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_Owner:Lmobi/beyondpod/ui/views/base/IWebViewOwner;

    return-object p0
.end method

.method private declared-synchronized init()V
    .locals 3

    monitor-enter p0

    .line 66
    :try_start_0
    sget v0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_InstanceCount:I

    iput v0, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_CurrInstance:I

    .line 67
    sget v0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_InstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_InstanceCount:I

    .line 68
    sget-object v0, Lmobi/beyondpod/ui/views/base/WebViewEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#########== WebViewEX created! Instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmobi/beyondpod/ui/views/base/WebViewEx;->_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " #########"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 125
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/base/WebViewEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#########=== Destroying WebViewEX instance #: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_CurrInstance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " #########"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    sget-object v0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    sget v1, Lmobi/beyondpod/ui/views/base/WebViewEx;->_InstanceCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lmobi/beyondpod/ui/views/base/WebViewEx;->_InstanceCount:I

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Lmobi/beyondpod/ui/views/base/WebViewEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#########== WebViewEX finalized! Remaining instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmobi/beyondpod/ui/views/base/WebViewEx;->_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " #########"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initialize(Lmobi/beyondpod/ui/views/base/IWebViewOwner;Z)V
    .locals 1

    .line 136
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_Owner:Lmobi/beyondpod/ui/views/base/IWebViewOwner;

    .line 137
    iput-boolean p2, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_EnableDoubleTapClose:Z

    .line 139
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lmobi/beyondpod/ui/views/base/WebViewEx$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/base/WebViewEx$1;-><init>(Lmobi/beyondpod/ui/views/base/WebViewEx;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_Detector:Landroid/view/GestureDetector;

    .line 177
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_Detector:Landroid/view/GestureDetector;

    new-instance p2, Lmobi/beyondpod/ui/views/base/WebViewEx$2;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/base/WebViewEx$2;-><init>(Lmobi/beyondpod/ui/views/base/WebViewEx;)V

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 86
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    sget-object v0, Lmobi/beyondpod/ui/views/base/WebViewEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception on Draw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 98
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_Owner:Lmobi/beyondpod/ui/views/base/IWebViewOwner;

    sub-int p3, p2, p4

    invoke-interface {p1, p2, p3}, Lmobi/beyondpod/ui/views/base/IWebViewOwner;->onVerticalScroll(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 106
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/WebViewEx;->_Detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 110
    :catch_0
    sget-object p1, Lmobi/beyondpod/ui/views/base/WebViewEx;->TAG:Ljava/lang/String;

    const-string v1, "WebView onTouchEvent failed!"

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/webkit/WebView;->performClick()Z

    move-result v0

    return v0
.end method
