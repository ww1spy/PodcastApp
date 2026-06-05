.class Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection$1;
.super Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;
.source "CustomTabsServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsServiceConnection;

    invoke-direct {p0, p2, p3}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsClient;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    return-void
.end method
