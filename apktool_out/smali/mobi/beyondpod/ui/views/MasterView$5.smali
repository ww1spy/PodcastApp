.class Lmobi/beyondpod/ui/views/MasterView$5;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEventListener;


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

    .line 212
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$5;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectFeedCategoryAndOpenFeedEvent(Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;)V
    .locals 4

    .line 216
    iget-object v0, p1, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$5;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MasterView;->access$900(Lmobi/beyondpod/ui/views/MasterView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/MasterView$5$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/MasterView$5$1;-><init>(Lmobi/beyondpod/ui/views/MasterView$5;Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
