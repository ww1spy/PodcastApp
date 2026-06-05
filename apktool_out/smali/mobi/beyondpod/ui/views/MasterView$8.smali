.class Lmobi/beyondpod/ui/views/MasterView$8;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MasterView;->refreshActionBarTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MasterView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$8;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 765
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$8;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$8;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$8;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$8;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object v1

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/IView;->getViewTitle()Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/MasterView;->access$100(Lmobi/beyondpod/ui/views/MasterView;Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
