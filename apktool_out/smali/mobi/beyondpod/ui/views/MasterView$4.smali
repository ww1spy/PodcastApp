.class Lmobi/beyondpod/ui/views/MasterView$4;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/MasterView;
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

    .line 200
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$4;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMasterViewEvent(Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;)V
    .locals 0

    .line 204
    iget-boolean p1, p1, Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;->Lock:Z

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$4;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/MasterView;->access$700(Lmobi/beyondpod/ui/views/MasterView;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$4;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/MasterView;->access$800(Lmobi/beyondpod/ui/views/MasterView;)V

    :goto_0
    return-void
.end method
