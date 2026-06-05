.class final Lmobi/beyondpod/sync/ChangeSyncManager$1;
.super Ljava/lang/Object;
.source "ChangeSyncManager.java"

# interfaces
.implements Lmobi/beyondpod/sync/SyncWorker$QueueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/sync/ChangeSyncManager;->syncChanges(Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;


# direct methods
.method constructor <init>(Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lmobi/beyondpod/sync/ChangeSyncManager$1;->val$result:Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueCompleted(Z)V
    .locals 4

    .line 89
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->clearChangeSyncNotification()V

    const/4 v0, 0x0

    .line 91
    invoke-static {v0}, Lmobi/beyondpod/sync/ChangeSyncManager;->access$002(Lmobi/beyondpod/sync/SyncWorker;)Lmobi/beyondpod/sync/SyncWorker;

    .line 93
    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- Episode Sync completed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 95
    iget-object v0, p0, Lmobi/beyondpod/sync/ChangeSyncManager$1;->val$result:Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lmobi/beyondpod/sync/ChangeSyncManager$1;->val$result:Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;

    invoke-interface {v0, p1}, Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;->syncCompleted(Z)V

    :cond_0
    return-void
.end method

.method public onQueueProgress(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->access$200()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->access$500()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setChangeSyncNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->access$200()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->access$400()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setChangeSyncNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->access$200()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->access$300()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setChangeSyncNotification(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onQueueStarted()V
    .locals 3

    .line 124
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/BeyondPodApplication;->setChangeSyncNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
