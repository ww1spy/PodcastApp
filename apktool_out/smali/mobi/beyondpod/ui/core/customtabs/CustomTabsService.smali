.class public abstract Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# static fields
.field public static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field public static final KEY_URL:Ljava/lang/String; = "android.support.customtabs.otherurls.URL"


# instance fields
.field private mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

.field private final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 57
    new-instance v0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;-><init>(Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method protected cleanUpSession(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)Z
    .locals 3

    const/4 v0, 0x0

    .line 112
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    invoke-virtual {p1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 114
    iget-object v2, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 115
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    .line 116
    invoke-interface {p1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 117
    iget-object v2, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0
.end method

.method protected abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract mayLaunchUrl(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract newSession(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 99
    iget-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

    return-object p1
.end method

.method protected abstract warmup(J)Z
.end method
