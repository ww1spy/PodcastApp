.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 4

    .line 254
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->ifInRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lmobi/beyondpod/downloadengine/VersionCheckManager;->checkForNewVersionIfNeeded()V

    .line 257
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$500(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)V

    .line 259
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    new-instance v2, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;Lmobi/beyondpod/rsscore/Feed;)V

    invoke-static {v0, v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Ljava/lang/Runnable;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 282
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromSeconds(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleSyncTaskIfSyncIsEnabled(ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Z

    return-void
.end method

.method public onFeedUpdateError(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)V
    .locals 1

    .line 288
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;

    invoke-direct {v0, p0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;Ljava/lang/Exception;)V

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    return-void
.end method

.method public onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->onFeedUpdateStarted()V

    .line 363
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$500(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)V

    .line 366
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$600(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 368
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$3;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;)V

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Ljava/lang/Runnable;)V

    .line 378
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_AllowProgressDisplay:Z

    .line 380
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$900(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    .line 381
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    return-void
.end method

.method public onFeedUpdateTerminated(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 387
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$500(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)V

    .line 390
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->onFeedUpdateCompleted()V

    .line 392
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$4;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;)V

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Ljava/lang/Runnable;)V

    .line 401
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$900(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    .line 402
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    .line 403
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1500(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    return-void
.end method
