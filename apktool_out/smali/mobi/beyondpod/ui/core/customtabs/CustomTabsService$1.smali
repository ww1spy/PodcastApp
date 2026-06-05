.class Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;
.super Landroid/support/customtabs/ICustomTabsService$Stub;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;

    new-instance v1, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->mayLaunchUrl(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .locals 5

    .line 66
    new-instance v0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;

    invoke-direct {v0, p1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    const/4 v1, 0x0

    .line 68
    :try_start_0
    new-instance v2, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1$1;

    invoke-direct {v2, p0, v0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1$1;-><init>(Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)V

    .line 74
    iget-object v3, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;

    invoke-static {v3}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->access$000(Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 76
    iget-object v4, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;

    invoke-static {v4}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->access$000(Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->newSession(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)Z

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 77
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return v1
.end method

.method public warmup(J)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->warmup(J)Z

    move-result p1

    return p1
.end method
