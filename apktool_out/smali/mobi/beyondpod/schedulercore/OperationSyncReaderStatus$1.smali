.class Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus$1;
.super Ljava/lang/Object;
.source "OperationSyncReaderStatus.java"

# interfaces
.implements Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;


# direct methods
.method constructor <init>(Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus$1;->this$0:Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncCompleted(ZII)V
    .locals 0

    if-ltz p3, :cond_0

    .line 59
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleGoogleSynUpdateIfNeeded()V

    .line 61
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus$1;->this$0:Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/OperationSyncReaderStatus;->onOperationCompleted()V

    return-void
.end method
