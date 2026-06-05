.class Lmobi/beyondpod/ui/views/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/Workspace;->Initialize(Lmobi/beyondpod/ui/core/MasterViewState;Landroid/os/Bundle;Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;)V
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

    .line 231
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$3;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 235
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$3;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/Workspace;->togglePlaylistDrawer()V

    return-void
.end method
