.class Lmobi/beyondpod/ui/views/Workspace$1$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/Workspace$1;->onPanelExpanded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/Workspace$1;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/Workspace$1;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$1$1;->this$1:Lmobi/beyondpod/ui/views/Workspace$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 172
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$1$1;->this$1:Lmobi/beyondpod/ui/views/Workspace$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->invalidateOptionsMenu()V

    return-void
.end method
