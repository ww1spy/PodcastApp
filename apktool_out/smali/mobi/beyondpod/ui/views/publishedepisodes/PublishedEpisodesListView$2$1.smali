.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

.field final synthetic val$feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 264
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$600(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getCachedFileDate(Landroid/net/Uri;)Ljava/util/Date;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$700(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$700(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 271
    invoke-static {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$700(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 272
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$700(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    iput-object v0, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;

    .line 274
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$800(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;ZZ)V

    .line 275
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$900(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    .line 276
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$1;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    return-void
.end method
