.class public Lmobi/beyondpod/sync/ChangeSyncManager;
.super Ljava/lang/Object;
.source "ChangeSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;
    }
.end annotation


# static fields
.field private static final APPLYING_REMOTE_CHANGES:Ljava/lang/String;

.field private static final CHECKING_FOR_REMOTE_CHANGES:Ljava/lang/String;

.field private static final PUBLISHING_LOCAL_CHANGES:Ljava/lang/String;

.field private static final SYNCING_LOCAL_CHANGES:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ChangeSyncManager"

.field private static _Syncer:Lmobi/beyondpod/sync/SyncWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget v0, Lmobi/beyondpod/R$string;->cds_notification_applying_remote_changes:I

    .line 33
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->APPLYING_REMOTE_CHANGES:Ljava/lang/String;

    .line 34
    sget v0, Lmobi/beyondpod/R$string;->cds_notification_checking_for_remote_changes:I

    .line 35
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->CHECKING_FOR_REMOTE_CHANGES:Ljava/lang/String;

    .line 36
    sget v0, Lmobi/beyondpod/R$string;->cds_notification_publishing_local_changes:I

    .line 37
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->PUBLISHING_LOCAL_CHANGES:Ljava/lang/String;

    .line 38
    sget v0, Lmobi/beyondpod/R$string;->cds_notification_syncing_local_changes:I

    .line 39
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->SYNCING_LOCAL_CHANGES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lmobi/beyondpod/sync/SyncWorker;)Lmobi/beyondpod/sync/SyncWorker;
    .locals 0

    .line 30
    sput-object p0, Lmobi/beyondpod/sync/ChangeSyncManager;->_Syncer:Lmobi/beyondpod/sync/SyncWorker;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->SYNCING_LOCAL_CHANGES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->PUBLISHING_LOCAL_CHANGES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->CHECKING_FOR_REMOTE_CHANGES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->APPLYING_REMOTE_CHANGES:Ljava/lang/String;

    return-object v0
.end method

.method public static isSyncing()Z
    .locals 1

    .line 148
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->_Syncer:Lmobi/beyondpod/sync/SyncWorker;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->_Syncer:Lmobi/beyondpod/sync/SyncWorker;

    invoke-virtual {v0}, Lmobi/beyondpod/sync/SyncWorker;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static stopSyncing()V
    .locals 1

    .line 153
    invoke-static {}, Lmobi/beyondpod/sync/ChangeSyncManager;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->_Syncer:Lmobi/beyondpod/sync/SyncWorker;

    invoke-virtual {v0}, Lmobi/beyondpod/sync/SyncWorker;->stop()V

    :cond_0
    return-void
.end method

.method public static syncChanges(Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;)Z
    .locals 6

    .line 50
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->TAG:Ljava/lang/String;

    const-string v2, "Trying to sync, but Episode Sync is disabled! Exiting..."

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 55
    invoke-interface {p0, v1}, Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;->syncCompleted(Z)V

    :cond_0
    return v1

    .line 60
    :cond_1
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->TAG:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 61
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- Starting Episode Sync: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ---"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 63
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectedToNetwork()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->TAG:Ljava/lang/String;

    const-string v2, "--- device is offline! Sync cancelled ---"

    invoke-static {v0, v2, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    if-eqz p0, :cond_2

    .line 67
    invoke-interface {p0, v1}, Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;->syncCompleted(Z)V

    :cond_2
    return v1

    .line 72
    :cond_3
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->_Syncer:Lmobi/beyondpod/sync/SyncWorker;

    if-eqz v0, :cond_5

    .line 74
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->TAG:Ljava/lang/String;

    const-string v2, "--- Another Episode Sync is already in progress! Exiting..."

    invoke-static {v0, v2, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    if-eqz p0, :cond_4

    .line 77
    invoke-interface {p0, v1}, Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;->syncCompleted(Z)V

    :cond_4
    return v1

    .line 82
    :cond_5
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onChangeSync(I)V

    .line 84
    new-instance v0, Lmobi/beyondpod/sync/SyncWorker;

    new-instance v2, Lmobi/beyondpod/sync/ChangeSyncManager$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/sync/ChangeSyncManager$1;-><init>(Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;)V

    invoke-direct {v0, v2}, Lmobi/beyondpod/sync/SyncWorker;-><init>(Lmobi/beyondpod/sync/SyncWorker$QueueListener;)V

    sput-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->_Syncer:Lmobi/beyondpod/sync/SyncWorker;

    .line 131
    :try_start_0
    sget-object v0, Lmobi/beyondpod/sync/ChangeSyncManager;->_Syncer:Lmobi/beyondpod/sync/SyncWorker;

    invoke-virtual {v0}, Lmobi/beyondpod/sync/SyncWorker;->executeQueuedRequests()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 135
    sget-object v2, Lmobi/beyondpod/sync/ChangeSyncManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- Unable to start sync! reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    if-eqz p0, :cond_6

    .line 138
    invoke-interface {p0, v1}, Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;->syncCompleted(Z)V

    :cond_6
    return v1
.end method
