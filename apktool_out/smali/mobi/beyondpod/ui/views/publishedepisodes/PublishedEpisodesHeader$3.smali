.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$3;
.super Ljava/lang/Object;
.source "PublishedEpisodesHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 154
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 159
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    iget-boolean v1, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->existsOnDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->rescheduleAllActiveTasks()I

    .line 166
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->refreshContent()V

    return-void

    .line 170
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v0

    .line 172
    instance-of v1, v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    if-eqz v1, :cond_2

    .line 174
    check-cast v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 179
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    .line 181
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$3;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setCategorySchedule(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void
.end method
