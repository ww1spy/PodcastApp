.class Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment$1;
.super Ljava/lang/Object;
.source "SampleFeedsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 57
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_Adapter:Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;

    invoke-virtual {p1, p3}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->toggleItem(I)V

    .line 59
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->access$000(Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->categorySelectionChanged(Ljava/lang/String;)V

    return-void
.end method
