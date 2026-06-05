.class Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$4;
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


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$4;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 162
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->helpFileCDSURL()Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    return-void
.end method
