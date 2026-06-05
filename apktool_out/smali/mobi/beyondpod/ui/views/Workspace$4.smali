.class Lmobi/beyondpod/ui/views/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/Workspace;->ActivateView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/Workspace;

.field final synthetic val$newViewType:I


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/Workspace;I)V
    .locals 0

    .line 395
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$4;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iput p2, p0, Lmobi/beyondpod/ui/views/Workspace$4;->val$newViewType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 401
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$4;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object v0

    .line 402
    iget v1, p0, Lmobi/beyondpod/ui/views/Workspace$4;->val$newViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace$4;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace$4;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    :goto_0
    check-cast v1, Lmobi/beyondpod/ui/views/base/IView;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 407
    :cond_1
    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/IView;->onBeforeActivate()V

    .line 409
    iget-object v2, p0, Lmobi/beyondpod/ui/views/Workspace$4;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget v3, p0, Lmobi/beyondpod/ui/views/Workspace$4;->val$newViewType:I

    invoke-static {v2, v3}, Lmobi/beyondpod/ui/views/Workspace;->access$100(Lmobi/beyondpod/ui/views/Workspace;I)V

    .line 411
    iget-object v2, p0, Lmobi/beyondpod/ui/views/Workspace$4;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v2, v2, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v2}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->refreshActionBarTitle()V

    if-eqz v0, :cond_2

    .line 414
    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/IView;->onAfterDeactivate()V

    .line 416
    :cond_2
    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/IView;->onAfterActivate()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method
