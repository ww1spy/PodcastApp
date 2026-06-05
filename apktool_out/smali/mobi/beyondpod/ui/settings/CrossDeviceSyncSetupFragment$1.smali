.class Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$1;
.super Ljava/lang/Object;
.source "CrossDeviceSyncSetupFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 59
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$1;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 63
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$1;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->_OptAllowRemoteDeletions:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setCDSAllowRemoteEpisodeDeletions(Z)V

    return-void
.end method
