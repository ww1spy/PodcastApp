.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;
.super Ljava/lang/Object;
.source "PublishedEpisodesListViewAdapter.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->onAfterActivate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCompleted(Z)V
    .locals 2

    .line 122
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->access$002(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;Z)Z

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->refreshInternal()V

    .line 125
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onAdapterDataLoadCompleted(Z)V

    return-void
.end method

.method public onLoadProgress()V
    .locals 2

    .line 131
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    .line 132
    :goto_0
    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->refreshInternal()V

    :cond_1
    return-void
.end method

.method public onLoadStarted()V
    .locals 2

    .line 142
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->access$002(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;Z)Z

    .line 143
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->refreshInternal()V

    .line 144
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onAdapterDataLoadStarted()V

    return-void
.end method
