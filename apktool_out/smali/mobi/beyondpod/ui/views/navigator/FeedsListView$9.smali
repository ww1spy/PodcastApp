.class Lmobi/beyondpod/ui/views/navigator/FeedsListView$9;
.super Ljava/lang/Object;
.source "FeedsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsListView;->onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

.field final synthetic val$evt:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$9;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$9;->val$evt:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 814
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$9;->val$evt:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    iget v0, v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->UPDATE_AND_DOWNLOAD_COMPLETED:I

    if-ne v0, v1, :cond_0

    .line 816
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$9;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->access$000(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    .line 817
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$9;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshHeader(Z)V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$9;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshHeader(Z)V

    :goto_0
    return-void
.end method
