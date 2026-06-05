.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment$2;
.super Ljava/lang/Object;
.source "PublishedEpisodesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->onFeedUpdateCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;)Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
