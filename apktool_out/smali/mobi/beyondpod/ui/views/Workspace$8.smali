.class Lmobi/beyondpod/ui/views/Workspace$8;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/Workspace;->onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/Workspace;

.field final synthetic val$evt:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/Workspace;Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$8;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/Workspace$8;->val$evt:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 834
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$8;->val$evt:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    iget v0, v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->UPDATE_AND_DOWNLOAD_COMPLETED:I

    if-ne v0, v1, :cond_0

    .line 835
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$8;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/Workspace;->access$200(Lmobi/beyondpod/ui/views/Workspace;Z)V

    goto :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$8;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/Workspace;->access$200(Lmobi/beyondpod/ui/views/Workspace;Z)V

    .line 839
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$8;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->invalidateOptionsMenu()V

    return-void
.end method
