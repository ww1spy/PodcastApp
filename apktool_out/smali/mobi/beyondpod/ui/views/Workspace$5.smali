.class Lmobi/beyondpod/ui/views/Workspace$5;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/Workspace;->activateViews(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/Workspace;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/Workspace;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$5;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 566
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$5;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->openNavigator()V

    return-void
.end method
