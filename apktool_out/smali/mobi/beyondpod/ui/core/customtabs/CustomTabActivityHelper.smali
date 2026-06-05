.class public Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;
.super Ljava/lang/Object;
.source "CustomTabActivityHelper.java"

# interfaces
.implements Lmobi/beyondpod/ui/core/customtabs/ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$CustomTabFallback;,
        Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;
    }
.end annotation


# instance fields
.field private mClient:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

.field private mConnection:Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;

.field private mConnectionCallback:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;

.field private mCustomTabsSession:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openCustomTab(Landroid/app/Activity;Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent;Landroid/net/Uri;Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$CustomTabFallback;)V
    .locals 1

    .line 46
    invoke-static {p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 52
    invoke-interface {p3, p0, p2}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$CustomTabFallback;->openUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p3, p1, Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1, p0, p2}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bindCustomTabsService(Landroid/app/Activity;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mClient:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 104
    :cond_1
    new-instance v1, Lmobi/beyondpod/ui/core/customtabs/ServiceConnection;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/core/customtabs/ServiceConnection;-><init>(Lmobi/beyondpod/ui/core/customtabs/ServiceConnectionCallback;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnection:Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;

    .line 105
    iget-object v1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnection:Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method

.method public getSession()Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;
    .locals 2

    .line 78
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mClient:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    iput-object v1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mClient:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;->newSession(Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;)Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mClient:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->getSession()Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 118
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public onServiceConnected(Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;)V
    .locals 2

    .line 123
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mClient:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mClient:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;->warmup(J)Z

    .line 125
    iget-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnectionCallback:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnectionCallback:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;

    invoke-interface {p1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;->onCustomTabsConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mClient:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

    .line 131
    iput-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;

    .line 132
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnectionCallback:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnectionCallback:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;

    invoke-interface {v0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;->onCustomTabsDisconnected()V

    :cond_0
    return-void
.end method

.method public setConnectionCallback(Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnectionCallback:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;

    return-void
.end method

.method public unbindCustomTabsService(Landroid/app/Activity;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnection:Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnection:Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mClient:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

    .line 68
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mCustomTabsSession:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;

    .line 69
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mConnection:Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;

    return-void
.end method
