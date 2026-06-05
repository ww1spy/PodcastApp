.class public Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;
.super Lmobi/beyondpod/schedulercore/ScheduledTask;
.source "SyncChangeTrackingScheduledTask.java"


# static fields
.field public static final CHANGE_TRACKING_SYNC_TASK_ID:Ljava/lang/String; = "BPT#SYNC_CHANGE_TRACKING"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "BPT#SYNC_CHANGE_TRACKING"

    .line 33
    invoke-direct {p0, v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;

    invoke-direct {v0}, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;-><init>()V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;->setOperation(Lmobi/beyondpod/schedulercore/OperationBase;)V

    .line 35
    new-instance v0, Lmobi/beyondpod/schedulercore/Event;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromMinutes(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3, v1}, Lmobi/beyondpod/schedulercore/Event;-><init>(Ljava/util/Date;ILmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    iput-object v0, p0, Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    return-void
.end method
