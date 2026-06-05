.class final Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$1;
.super Ljava/lang/Object;
.source "RssFeedUpdateManager.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 132
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 138
    invoke-interface {v2, p1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;->onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 139
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 142
    invoke-static {p1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$200(Lmobi/beyondpod/rsscore/Feed;)V

    const/4 p1, 0x1

    .line 143
    invoke-static {p1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$300(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onFeedUpdateError(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)V
    .locals 1

    .line 149
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    .line 150
    invoke-static {p1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$200(Lmobi/beyondpod/rsscore/Feed;)V

    .line 152
    instance-of v0, p2, Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->terminateAllUpdates()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p1, p2}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$400(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$300(Z)V

    :goto_0
    return-void
.end method

.method public onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 161
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;

    .line 167
    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 173
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 174
    invoke-interface {v2, p1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;->onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 175
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 181
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->isAtQueueStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$500()V

    .line 184
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 186
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 187
    invoke-interface {v2, p1}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;->onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 188
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    return-void

    :catchall_0
    move-exception p1

    .line 188
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onFeedUpdateTerminated(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 196
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method
