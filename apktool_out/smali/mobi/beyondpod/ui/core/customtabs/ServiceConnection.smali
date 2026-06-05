.class public Lmobi/beyondpod/ui/core/customtabs/ServiceConnection;
.super Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;
.source "ServiceConnection.java"


# instance fields
.field private mConnectionCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmobi/beyondpod/ui/core/customtabs/ServiceConnectionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmobi/beyondpod/ui/core/customtabs/ServiceConnectionCallback;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/core/customtabs/ServiceConnectionCallback;

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/core/customtabs/ServiceConnectionCallback;->onServiceConnected(Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/core/customtabs/ServiceConnectionCallback;

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Lmobi/beyondpod/ui/core/customtabs/ServiceConnectionCallback;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
