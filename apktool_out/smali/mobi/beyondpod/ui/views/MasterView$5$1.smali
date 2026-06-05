.class Lmobi/beyondpod/ui/views/MasterView$5$1;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MasterView$5;->onSelectFeedCategoryAndOpenFeedEvent(Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/MasterView$5;

.field final synthetic val$evt:Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView$5;Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$5$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$5;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/MasterView$5$1;->val$evt:Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 224
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$5$1;->val$evt:Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;

    iget-object v0, v0, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 225
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$5$1;->val$evt:Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;

    iget-object v0, v0, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 228
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$5$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$5;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/MasterView$5;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/MasterView;->selectCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 232
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$5$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$5;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView$5;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$5$1;->val$evt:Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;

    iget-object v1, v1, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lmobi/beyondpod/ui/views/MasterView;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    const/16 v0, 0xe

    .line 233
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyCategoryEvent(I)V

    return-void
.end method
