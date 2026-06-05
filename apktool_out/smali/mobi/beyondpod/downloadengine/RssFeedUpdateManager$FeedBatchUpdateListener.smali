.class public interface abstract Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;
.super Ljava/lang/Object;
.source "RssFeedUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedBatchUpdateListener"
.end annotation


# virtual methods
.method public abstract onAnotherUpdateIsInProgress()V
.end method

.method public abstract onFeedBatchUpdateCanceled()V
.end method

.method public abstract onFeedBatchUpdateCompleted()V
.end method

.method public abstract onFeedBatchUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
.end method

.method public abstract onFeedBatchUpdateUnableToEstablishNetworkConnection()V
.end method

.method public abstract onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V
.end method

.method public abstract onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V
.end method

.method public abstract onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
.end method

.method public abstract onInsufficientSpaceAtDownloadLocation(Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;)V
.end method
