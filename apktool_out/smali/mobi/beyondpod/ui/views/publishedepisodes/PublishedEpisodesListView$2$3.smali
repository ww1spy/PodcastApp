.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$3;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$3;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 373
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$3;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->clearItems()V

    return-void
.end method
