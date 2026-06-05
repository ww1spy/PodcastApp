.class Lmobi/beyondpod/ui/views/MasterView$1;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;


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

    .line 137
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$1;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$1;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    new-instance v1, Lmobi/beyondpod/ui/views/MasterView$1$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/MasterView$1$1;-><init>(Lmobi/beyondpod/ui/views/MasterView$1;Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/MasterView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
