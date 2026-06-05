.class Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$3;
.super Ljava/lang/Object;
.source "NavigatorExtras.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$3;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 82
    invoke-static {}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 84
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-class v1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$3;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Owner:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->ACTIVITY_REQUEST_FirstRun:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
