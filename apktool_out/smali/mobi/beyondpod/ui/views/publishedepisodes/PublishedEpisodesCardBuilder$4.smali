.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$4;
.super Ljava/lang/Object;
.source "PublishedEpisodesCardBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;Landroid/view/View;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object v1

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->isMultiSelecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 102
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object p1

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_1
    return-void
.end method
