.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->onFeedUpdateError(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

.field final synthetic val$ex:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;Ljava/lang/Exception;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->val$ex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 293
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$500(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)V

    .line 296
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->onFeedUpdateCompleted()V

    .line 298
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->indicatesSDCardCorruption()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1000a7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 302
    iget-object v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v3, v3, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v4, v4, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 303
    invoke-virtual {v4}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1000a9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    .line 302
    invoke-static {v3, v4, v5, v5}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->requestPermissionsIfNeeded(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 308
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isFolderReallyWritable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 309
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1000aa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 311
    :cond_2
    iget-object v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v3, v3, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 315
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->val$ex:Ljava/lang/Exception;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->val$ex:Ljava/lang/Exception;

    instance-of v3, v3, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    if-eqz v3, :cond_5

    .line 319
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->clearAccountToken()V

    .line 322
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1001a2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_4
    invoke-static {}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1400()Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_5
    :goto_0
    iget-object v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v3, v3, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 332
    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    invoke-static {}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->val$ex:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 339
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$600(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->hasCachedFileFor(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 341
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0, v1, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$800(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;ZZ)V

    goto :goto_2

    .line 345
    :cond_7
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$900(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    .line 346
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2$2;->this$1:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1500(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    :goto_2
    return-void
.end method
