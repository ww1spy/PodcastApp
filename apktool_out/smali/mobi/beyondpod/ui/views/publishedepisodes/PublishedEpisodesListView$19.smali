.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$19;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onDownload(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

.field final synthetic val$item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 0

    .line 1716
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$19;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$19;->val$item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue()V
    .locals 4

    .line 1720
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$19;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$19;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$19;->val$item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$19;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$600(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$2300(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method
