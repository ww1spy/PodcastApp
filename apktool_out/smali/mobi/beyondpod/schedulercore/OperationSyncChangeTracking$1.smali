.class Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking$1;
.super Ljava/lang/Object;
.source "OperationSyncChangeTracking.java"

# interfaces
.implements Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;


# direct methods
.method constructor <init>(Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking$1;->this$0:Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncCompleted(Z)V
    .locals 5

    .line 62
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 66
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->hasUploadPendingChanges()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 69
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSSyncRetryInterval()I

    move-result p1

    const/16 v1, 0x78

    const/4 v2, 0x0

    if-ge p1, v1, :cond_1

    if-nez p1, :cond_0

    const/16 p1, 0xf

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 77
    :goto_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setCDSSyncRetryInterval(I)V

    .line 78
    invoke-static {}, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### There are still pending changes! Retrying sync in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " min"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 82
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromMinutes(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v1

    .line 81
    invoke-static {p1, v1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleSyncTaskIfSyncIsEnabled(ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Z

    goto :goto_1

    .line 88
    :cond_1
    invoke-static {}, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#### There are still pending changes, but we reached the max retry interval of 120 min. Giving up!"

    .line 87
    invoke-static {p1, v0, v2}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_1

    .line 98
    :cond_2
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSSyncRetryInterval(I)V

    .line 102
    :cond_3
    :goto_1
    iget-object p1, p0, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking$1;->this$0:Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->onOperationCompleted()V

    return-void
.end method
