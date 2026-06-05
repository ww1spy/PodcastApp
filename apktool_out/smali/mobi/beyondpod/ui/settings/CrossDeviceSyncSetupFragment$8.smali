.class Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$8;
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

    .line 262
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$8;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 267
    invoke-static {}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->logout()V

    .line 268
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$8;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$8;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$8;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    const-string v2, ""

    iput-object v2, v1, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Token:Ljava/lang/String;

    iput-object v2, v0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_Password:Ljava/lang/String;

    iput-object v2, p1, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_UserName:Ljava/lang/String;

    .line 269
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$8;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->access$100(Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;)V

    return-void
.end method
