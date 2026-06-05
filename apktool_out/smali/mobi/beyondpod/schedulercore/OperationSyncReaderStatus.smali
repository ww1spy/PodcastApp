.class public Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;
.super Lmobi/beyondpod/schedulercore/OperationBase;
.source "OperationSyncReaderStatus.java"


# static fields
.field public static final OperationID:Ljava/util/UUID;

.field private static TAG:Ljava/lang/String; = "OperationSyncReaderStatus"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FFAACCDD-0C02-4314-B8C4-4FEDE4C83C80"

    .line 32
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->OperationID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const-string v0, "BeyondPod Sync Google Reader Subscriptions"

    const-string v1, "BeyondPod Sync Google Reader Subscriptions"

    .line 36
    sget-object v2, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->OperationID:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/schedulercore/OperationBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;
    .locals 0

    .line 79
    new-instance p1, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;

    invoke-direct {p1}, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;-><init>()V

    return-object p1
.end method

.method public execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lmobi/beyondpod/schedulercore/OperationBase;->execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V

    .line 44
    sget-object p1, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->TAG:Ljava/lang/String;

    const-string v0, "Starting a Scheduled Google Sync"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isSyncing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 50
    :try_start_0
    new-instance p1, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus$1;-><init>(Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;)V

    invoke-static {p1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->syncItemStatus(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    sget-object v0, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->TAG:Ljava/lang/String;

    const-string v1, "Unable to start Google Sync"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->onOperationCompleted()V

    goto :goto_0

    .line 71
    :cond_0
    sget-object p1, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->TAG:Ljava/lang/String;

    const-string v0, "Another Google Sync is already in progress! Skipping sync!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->onOperationCompleted()V

    :goto_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->_Name:Ljava/lang/String;

    return-object v0
.end method
