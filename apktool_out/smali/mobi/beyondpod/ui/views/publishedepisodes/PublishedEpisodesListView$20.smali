.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$20;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->showCardMenu(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

.field final synthetic val$rssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 0

    .line 1745
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$20;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$20;->val$rssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1748
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$20;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$20;->val$rssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {v0, p1, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$2400(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/4 p1, 0x1

    return p1
.end method
