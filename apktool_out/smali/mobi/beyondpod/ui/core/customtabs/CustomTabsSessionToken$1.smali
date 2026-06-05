.class Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken$1;
.super Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 42
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;

    invoke-static {v0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->access$000(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
