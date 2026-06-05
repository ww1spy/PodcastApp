.class Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$1;
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

    .line 72
    iput-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->access$000(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPauseTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z

    :cond_0
    return-void
.end method
