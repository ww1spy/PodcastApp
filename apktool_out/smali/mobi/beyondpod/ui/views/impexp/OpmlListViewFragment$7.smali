.class Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;
.super Ljava/lang/Object;
.source "OpmlListViewFragment.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 341
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$400(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V

    return-void
.end method

.method public onFeedUpdateError(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)V
    .locals 2

    .line 347
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$500(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V

    .line 349
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$700(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$800()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 356
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->updatePercent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 362
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$1000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onFeedUpdateTerminated(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 368
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$500(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V

    .line 370
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$700(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method
