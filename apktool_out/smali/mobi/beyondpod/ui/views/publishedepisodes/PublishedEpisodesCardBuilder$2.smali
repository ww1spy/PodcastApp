.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$2;
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

    .line 57
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;Landroid/view/View;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_0
    return-void
.end method
