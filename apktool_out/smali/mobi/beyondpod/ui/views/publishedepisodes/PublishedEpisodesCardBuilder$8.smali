.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$8;
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

    .line 163
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$8;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$8;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;Landroid/view/View;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$8;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object v1

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->isMultiSelecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$8;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void

    :cond_0
    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowEpisodeStreaming()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$8;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadFeedItemsManually(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 186
    invoke-static {p1, v0, v1, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
