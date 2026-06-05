.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;
.super Ljava/lang/Object;
.source "FeedPropertiesView.java"

# interfaces
.implements Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->saveChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCompleted()V
    .locals 3

    .line 488
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 491
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$200(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v2, v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;-><init>(Ljava/lang/Object;Lmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    .line 494
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$202(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Z)Z

    .line 496
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->finish()V

    return-void
.end method

.method public onRefreshProgress(I)V
    .locals 3

    .line 508
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->SetTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onRefreshStarted()V
    .locals 2

    .line 502
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->showDialog(I)V

    return-void
.end method
