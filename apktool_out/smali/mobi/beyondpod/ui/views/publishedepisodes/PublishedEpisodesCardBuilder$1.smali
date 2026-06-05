.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$1;
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

    .line 48
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object v0

    const v1, 0x7f09006e

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-interface {v0, p1, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method
