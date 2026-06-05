.class public Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;
.super Landroid/support/v4/widget/SwipeRefreshLayout;
.source "BPSwipeRefreshLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BPSwipeRefreshLayout"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 30
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 33
    :catch_0
    sget-object p1, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;->TAG:Ljava/lang/String;

    const-string v0, "failed to handle dispatchTouchEvent!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 44
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 47
    :catch_0
    sget-object p1, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;->TAG:Ljava/lang/String;

    const-string v0, "failed to handle onTouchEvent!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
