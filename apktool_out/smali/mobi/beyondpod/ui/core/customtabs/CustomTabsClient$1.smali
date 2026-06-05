.class Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient$1;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;->newSession(Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;)Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

.field final synthetic val$callback:Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;

    iput-object p2, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient$1;->val$callback:Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient$1;->val$callback:Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient$1;->val$callback:Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient$1;->val$callback:Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient$1;->val$callback:Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
