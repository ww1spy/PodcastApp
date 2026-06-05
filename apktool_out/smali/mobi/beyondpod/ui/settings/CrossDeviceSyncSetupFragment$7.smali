.class Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$7;
.super Ljava/lang/Object;
.source "CrossDeviceSyncSetupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;
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

    .line 243
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$7;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v1

    const/high16 v2, 0x80000

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 250
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    const-string v1, "TYPE"

    .line 256
    iget-object v2, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$7;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    iget-object v2, v2, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Login:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    const-string p1, "LOGIN"

    goto :goto_1

    :cond_1
    const-string p1, "CREATE"

    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$7;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
