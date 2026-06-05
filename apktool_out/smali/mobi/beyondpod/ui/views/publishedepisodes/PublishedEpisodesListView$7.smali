.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$7;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->handleMenuSelection(Landroid/view/MenuItem;Lmobi/beyondpod/ui/core/FeedRssItemList;)Z
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

    .line 1095
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$7;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1098
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$7;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$600(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmobi/beyondpod/rsscore/Feed;->setPreferredEnclosureIndex(I)V

    .line 1099
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$7;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$600(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/Feed;->setHasNewContent(Z)V

    .line 1100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1101
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$7;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$800(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;ZZ)V

    return-void
.end method
