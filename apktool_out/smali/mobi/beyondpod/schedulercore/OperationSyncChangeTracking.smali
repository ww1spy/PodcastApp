.class public Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;
.super Lmobi/beyondpod/schedulercore/OperationBase;
.source "OperationSyncChangeTracking.java"


# static fields
.field private static final MAX_RETRY_INTERVAL:I = 0x78

.field public static final OperationID:Ljava/util/UUID;

.field private static final RETRY_INTERVAL:I = 0xf

.field private static TAG:Ljava/lang/String; = "OperationSyncChangeTracking"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AABBCCDD-0C02-4314-B8C4-4FEDED56EEE0"

    .line 36
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->OperationID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const-string v0, "BeyondPod Sync Change Tracking"

    const-string v1, "BeyondPod Sync Change Tracking"

    .line 43
    sget-object v2, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->OperationID:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/schedulercore/OperationBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;
    .locals 0

    .line 122
    new-instance p1, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;

    invoke-direct {p1}, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;-><init>()V

    return-object p1
.end method

.method public execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lmobi/beyondpod/schedulercore/OperationBase;->execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V

    .line 51
    sget-object p1, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->TAG:Ljava/lang/String;

    const-string v0, "Starting a Change Tracking Sync"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->isSyncing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 57
    :try_start_0
    new-instance p1, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking$1;-><init>(Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;)V

    invoke-static {p1}, Lmobi/beyondpod/sync/ChangeSyncManager;->syncChanges(Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    sget-object v0, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->TAG:Ljava/lang/String;

    const-string v1, "Unable to start Change Sync"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->onOperationCompleted()V

    goto :goto_0

    .line 114
    :cond_0
    sget-object p1, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->TAG:Ljava/lang/String;

    const-string v0, "Another Change Sync is already in progress! Skipping sync!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->onOperationCompleted()V

    :goto_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationSyncChangeTracking;->_Name:Ljava/lang/String;

    return-object v0
.end method
