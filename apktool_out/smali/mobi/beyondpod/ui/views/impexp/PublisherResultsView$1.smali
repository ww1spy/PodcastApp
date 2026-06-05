.class Lmobi/beyondpod/ui/views/impexp/PublisherResultsView$1;
.super Ljava/lang/Object;
.source "PublisherResultsView.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView$1;->this$0:Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 189
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView$1;->this$0:Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->access$000(Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    iget-object p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
