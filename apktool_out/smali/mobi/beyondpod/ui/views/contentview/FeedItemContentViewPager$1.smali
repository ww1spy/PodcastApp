.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$1;
.super Ljava/lang/Object;
.source "FeedItemContentViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;

.field final synthetic val$evt:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$1;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$1;->val$evt:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$1;->val$evt:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    iget v0, v0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$1;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->access$000(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;)V

    :cond_0
    return-void
.end method
