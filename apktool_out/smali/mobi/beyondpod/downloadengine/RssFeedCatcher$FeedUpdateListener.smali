.class public interface abstract Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;
.super Ljava/lang/Object;
.source "RssFeedCatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/RssFeedCatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedUpdateListener"
.end annotation


# virtual methods
.method public abstract onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V
.end method

.method public abstract onFeedUpdateError(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)V
.end method

.method public abstract onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V
.end method

.method public abstract onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
.end method

.method public abstract onFeedUpdateTerminated(Lmobi/beyondpod/rsscore/Feed;)V
.end method
