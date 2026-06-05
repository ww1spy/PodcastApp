.class final Lmobi/beyondpod/ui/commands/CommandManager$10;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->refreshVirtualFeed(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$RETRIEVING_FEED:Ljava/lang/String;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    .line 1376
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$10;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lmobi/beyondpod/ui/commands/CommandManager$10;->val$RETRIEVING_FEED:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCompleted()V
    .locals 4

    .line 1379
    iget-object v0, p0, Lmobi/beyondpod/ui/commands/CommandManager$10;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1380
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method public onRefreshProgress(I)V
    .locals 3

    .line 1394
    iget-object v0, p0, Lmobi/beyondpod/ui/commands/CommandManager$10;->val$progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/beyondpod/ui/commands/CommandManager$10;->val$RETRIEVING_FEED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRefreshStarted()V
    .locals 4

    .line 1387
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    .line 1388
    iget-object v0, p0, Lmobi/beyondpod/ui/commands/CommandManager$10;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
