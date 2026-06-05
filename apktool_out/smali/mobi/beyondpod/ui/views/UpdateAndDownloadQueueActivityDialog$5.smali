.class Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$5;
.super Ljava/lang/Object;
.source "UpdateAndDownloadQueueActivityDialog.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$5;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnotherUpdateIsInProgress()V
    .locals 0

    return-void
.end method

.method public onFeedBatchUpdateCanceled()V
    .locals 0

    return-void
.end method

.method public onFeedBatchUpdateCompleted()V
    .locals 1

    .line 165
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$5;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public onFeedBatchUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$5;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public onFeedBatchUpdateUnableToEstablishNetworkConnection()V
    .locals 0

    return-void
.end method

.method public onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    return-void
.end method

.method public onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$5;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 203
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$5;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    return-void
.end method

.method public onInsufficientSpaceAtDownloadLocation(Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;)V
    .locals 0

    return-void
.end method
