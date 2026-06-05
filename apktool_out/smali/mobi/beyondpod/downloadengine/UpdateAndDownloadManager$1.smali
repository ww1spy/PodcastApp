.class final Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$1;
.super Ljava/lang/Object;
.source "UpdateAndDownloadManager.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
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

    .line 135
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$000()V

    return-void
.end method

.method public onFeedBatchUpdateCompleted()V
    .locals 0

    .line 141
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->access$100()V

    return-void
.end method

.method public onFeedBatchUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

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

    return-void
.end method

.method public onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    return-void
.end method

.method public onInsufficientSpaceAtDownloadLocation(Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;)V
    .locals 0

    return-void
.end method
