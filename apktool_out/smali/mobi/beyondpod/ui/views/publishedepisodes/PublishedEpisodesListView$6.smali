.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->updateFooterInternal()V
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

    .line 591
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 595
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->isLoadingData()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 598
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasHiddenItems()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 599
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1800(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    goto :goto_0

    .line 601
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isUpdating()Z

    move-result p1

    if-nez p1, :cond_2

    .line 602
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$800(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;ZZ)V

    goto :goto_0

    .line 605
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->isUpdating()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 606
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->stop()V

    .line 608
    :cond_3
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isSyncing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 609
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->stopSyncing()V

    :cond_4
    :goto_0
    return-void
.end method
