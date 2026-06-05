.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$12;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->toggleProgressIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)V
    .locals 0

    .line 1444
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$12;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iput-boolean p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$12;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1448
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$12;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Header:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$12;->val$show:Z

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;->toggleProgressIndicator(Z)V

    return-void
.end method
