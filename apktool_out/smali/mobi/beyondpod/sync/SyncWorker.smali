.class public Lmobi/beyondpod/sync/SyncWorker;
.super Ljava/lang/Object;
.source "SyncWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/sync/SyncWorker$QueueListener;
    }
.end annotation


# static fields
.field public static final PROGRESS_TYPE_SYNCING_APPLYING_CHANGES:I = 0x2

.field public static final PROGRESS_TYPE_SYNCING_DOWN:I = 0x1

.field public static final PROGRESS_TYPE_SYNCING_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SyncWorker"


# instance fields
.field private _CallerThread:Ljava/lang/Thread;

.field private _QueueListener:Lmobi/beyondpod/sync/SyncWorker$QueueListener;

.field private _RetryCount:I

.field private volatile _SyncingThreadIsDownloading:Z

.field private _Tracker:Lmobi/beyondpod/sync/trackers/ITracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/sync/SyncWorker$QueueListener;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_CallerThread:Ljava/lang/Thread;

    .line 60
    iput-object p1, p0, Lmobi/beyondpod/sync/SyncWorker;->_QueueListener:Lmobi/beyondpod/sync/SyncWorker$QueueListener;

    .line 61
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/BPTracker;

    invoke-direct {p1}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/sync/SyncWorker;->_Tracker:Lmobi/beyondpod/sync/trackers/ITracker;

    return-void
.end method

.method public static canRetry(Ljava/lang/Throwable;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 149
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/net/SocketException;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private doSync()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 161
    iget-object v1, p0, Lmobi/beyondpod/sync/SyncWorker;->_Tracker:Lmobi/beyondpod/sync/trackers/ITracker;

    invoke-interface {v1}, Lmobi/beyondpod/sync/trackers/ITracker;->initialize()V

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, v1}, Lmobi/beyondpod/sync/SyncWorker;->onQueueProgress(I)V

    .line 172
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastRemoteChangeTimeStamp()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 175
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 176
    sget-object v2, Lmobi/beyondpod/sync/SyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --- Detected Initial Sync! Setting the last remote change timestamp to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 179
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/Configuration;->setLastRemoteChangeTimeStamp(J)V

    .line 182
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/sync/SyncWorker;->isUnAuthorizedMobileDataConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    new-instance v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 189
    iget-object v1, p0, Lmobi/beyondpod/sync/SyncWorker;->_Tracker:Lmobi/beyondpod/sync/trackers/ITracker;

    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->pendingUploadChanges()Ljava/util/ArrayList;

    move-result-object v2

    .line 190
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastRemoteChangeTimeStamp()J

    move-result-wide v3

    .line 189
    invoke-interface {v1, v2, v3, v4}, Lmobi/beyondpod/sync/trackers/ITracker;->syncPushPull(Ljava/util/List;J)Ljava/util/List;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lmobi/beyondpod/sync/ChangeTracker;->addPendingRemoteChanges(Ljava/util/List;)V

    const/4 v1, 0x2

    .line 195
    invoke-direct {p0, v1}, Lmobi/beyondpod/sync/SyncWorker;->onQueueProgress(I)V

    .line 196
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->applyPendingRemoteChangesSync()I

    .line 198
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/Configuration;->setLastSyncTimeStamp(J)V
    :try_end_0
    .catch Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    .line 217
    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v2}, Lmobi/beyondpod/sync/SyncWorker;->shouldRetry(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    sget-object v2, Lmobi/beyondpod/sync/SyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --- Potentially recoverable service error occurred! (Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 220
    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 223
    :cond_2
    sget-object v2, Lmobi/beyondpod/sync/SyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --- Sync failed! Service error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v2, v1, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_3

    :catch_1
    move-exception v1

    .line 211
    sget-object v2, Lmobi/beyondpod/sync/SyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --- Sync failed! Authentication error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v2, v1, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_3

    :catch_2
    move-exception v1

    .line 206
    sget-object v2, Lmobi/beyondpod/sync/SyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --- Sync failed! Invalid token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v2, v1, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_3

    .line 202
    :catch_3
    sget-object v1, Lmobi/beyondpod/sync/SyncWorker;->TAG:Ljava/lang/String;

    const-string v2, " --- Sync failed! Mobile connections are not allowed and WiFi is not connected!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_3
    return-void
.end method

.method private isUnAuthorizedMobileDataConnection()Z
    .locals 1

    .line 233
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isCellularConnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 236
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionCellular()Z

    move-result v0

    return v0
.end method

.method private onQueueCompleted(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_SyncingThreadIsDownloading:Z

    .line 257
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_QueueListener:Lmobi/beyondpod/sync/SyncWorker$QueueListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_QueueListener:Lmobi/beyondpod/sync/SyncWorker$QueueListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/sync/SyncWorker$QueueListener;->onQueueCompleted(Z)V

    .line 260
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/sync/SyncWorker;->_Tracker:Lmobi/beyondpod/sync/trackers/ITracker;

    invoke-interface {p1}, Lmobi/beyondpod/sync/trackers/ITracker;->close()V

    return-void
.end method

.method private onQueueProgress(I)V
    .locals 1

    .line 265
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_QueueListener:Lmobi/beyondpod/sync/SyncWorker$QueueListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_QueueListener:Lmobi/beyondpod/sync/SyncWorker$QueueListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/sync/SyncWorker$QueueListener;->onQueueProgress(I)V

    :cond_0
    return-void
.end method

.method private onQueueStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_SyncingThreadIsDownloading:Z

    .line 247
    iput v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_RetryCount:I

    .line 249
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_QueueListener:Lmobi/beyondpod/sync/SyncWorker$QueueListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_QueueListener:Lmobi/beyondpod/sync/SyncWorker$QueueListener;

    invoke-interface {v0}, Lmobi/beyondpod/sync/SyncWorker$QueueListener;->onQueueStarted()V

    :cond_0
    return-void
.end method

.method private shouldRetry(Ljava/lang/Throwable;)Z
    .locals 0

    .line 144
    invoke-static {p1}, Lmobi/beyondpod/sync/SyncWorker;->canRetry(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lmobi/beyondpod/sync/SyncWorker;->_RetryCount:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public executeQueuedRequests()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_CallerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "You must use a new instance of this class for each new download!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-boolean v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_SyncingThreadIsDownloading:Z

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Downlod is already in progress!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_SyncingThreadIsDownloading:Z

    .line 79
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_CallerThread:Ljava/lang/Thread;

    .line 80
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_CallerThread:Ljava/lang/Thread;

    const-string v1, "ChangeSyncer Caller thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_CallerThread:Ljava/lang/Thread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 82
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_CallerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isWorking()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_SyncingThreadIsDownloading:Z

    return v0
.end method

.method public run()V
    .locals 5

    const/16 v0, 0xa

    .line 101
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 103
    invoke-direct {p0}, Lmobi/beyondpod/sync/SyncWorker;->onQueueStarted()V

    :cond_0
    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-direct {p0}, Lmobi/beyondpod/sync/SyncWorker;->doSync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    .line 117
    :try_start_1
    iget v3, p0, Lmobi/beyondpod/sync/SyncWorker;->_RetryCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmobi/beyondpod/sync/SyncWorker;->_RetryCount:I

    .line 118
    invoke-direct {p0, v2}, Lmobi/beyondpod/sync/SyncWorker;->shouldRetry(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    sget-object v3, Lmobi/beyondpod/sync/SyncWorker;->TAG:Ljava/lang/String;

    const-string v4, " ----- Sleeping before sync retry..."

    invoke-static {v3, v4, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 121
    invoke-static {v2}, Lmobi/beyondpod/BeyondPodApplication;->pokeWiFiIfNeeded(Ljava/lang/Throwable;)V

    .line 122
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 123
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->nap(I)V

    .line 132
    iget v2, p0, Lmobi/beyondpod/sync/SyncWorker;->_RetryCount:I

    if-gtz v2, :cond_0

    goto :goto_1

    .line 127
    :cond_1
    sget-object v0, Lmobi/beyondpod/sync/SyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --- Sync failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 136
    :goto_0
    sget-object v2, Lmobi/beyondpod/sync/SyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --- Sync retry failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 139
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/sync/SyncWorker;->onQueueCompleted(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_CallerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_CallerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/sync/SyncWorker;->_CallerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
