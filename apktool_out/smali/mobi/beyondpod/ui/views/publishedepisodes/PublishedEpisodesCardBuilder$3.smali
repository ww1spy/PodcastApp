.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$3;
.super Ljava/lang/Object;
.source "PublishedEpisodesCardBuilder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 70
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 74
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->isMultiSelecting()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;Landroid/view/View;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 80
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;

    move-result-object v2

    invoke-interface {v2, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;->onItemLongPressed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 81
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
