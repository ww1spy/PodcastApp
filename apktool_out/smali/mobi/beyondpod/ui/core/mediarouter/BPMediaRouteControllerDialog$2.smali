.class Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$2;
.super Ljava/lang/Object;
.source "BPMediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$2;->this$0:Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$2;->this$0:Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->access$100(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$IRouteControllerDialogOwner;

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$2;->this$0:Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->access$100(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$IRouteControllerDialogOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$IRouteControllerDialogOwner;->onMediaItemSelected()V

    .line 95
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$2;->this$0:Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->dismiss()V

    return-void
.end method
