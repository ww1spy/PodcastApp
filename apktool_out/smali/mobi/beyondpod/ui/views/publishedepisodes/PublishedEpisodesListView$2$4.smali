.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$4;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->onFeedUpdateTerminated(Lmobi/beyondpod/rsscore/Feed;)V
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

    .line 393
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$4;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 397
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$4;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1600()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
