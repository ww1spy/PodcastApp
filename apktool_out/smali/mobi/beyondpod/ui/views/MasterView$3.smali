.class Lmobi/beyondpod/ui/views/MasterView$3;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEventListener;


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

    .line 191
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$3;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMasterViewEvent(Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEvent;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$3;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->finish()V

    return-void
.end method
