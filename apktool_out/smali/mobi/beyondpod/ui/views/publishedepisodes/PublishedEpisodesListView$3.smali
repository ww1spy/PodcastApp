.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$3;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;


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

    .line 408
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncCompleted(ZII)V
    .locals 0

    .line 412
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->refreshActiveViewTitle()V

    .line 413
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$600(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->updateFeed(Lmobi/beyondpod/rsscore/Feed;Z)V

    return-void
.end method
