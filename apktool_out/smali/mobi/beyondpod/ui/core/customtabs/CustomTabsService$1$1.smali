.class Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1$1;
.super Ljava/lang/Object;
.source "CustomTabsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;

.field final synthetic val$sessionToken:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1$1;->this$1:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;

    iput-object p2, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1$1;->val$sessionToken:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1$1;->this$1:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1;->this$0:Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;

    iget-object v1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService$1$1;->val$sessionToken:Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsService;->cleanUpSession(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)Z

    return-void
.end method
