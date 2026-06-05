.class Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$2;
.super Ljava/lang/Object;
.source "CrossDeviceSyncSetupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

.field final synthetic val$forgot:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$2;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$2;->val$forgot:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSEndpoint()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "forgotPassword"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$2;->val$forgot:Ljava/lang/String;

    const/4 v1, 0x0

    .line 95
    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    return-void
.end method
