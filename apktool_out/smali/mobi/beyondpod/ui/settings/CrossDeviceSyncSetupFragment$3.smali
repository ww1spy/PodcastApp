.class Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$3;
.super Ljava/lang/Object;
.source "CrossDeviceSyncSetupFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 120
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$3;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment$3;->this$0:Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f03000a

    invoke-static {p1, p2, p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexValueInNumArray(Landroid/content/Context;II)I

    move-result p1

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_0

    .line 127
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setCDSAllowRemoteFeeds(I)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
