.class public Lmobi/beyondpod/schedulercore/ScheduledTasksManager;
.super Ljava/lang/Object;
.source "ScheduledTasksManager.java"


# static fields
.field private static MANUAL_CATEGORY_UPDATE_TASK_ID:Ljava/lang/String; = "MANUAL_CATEGORY_UPDATE_TASK:"

.field private static MANUAL_SMART_PLAY_UPDATE_TASK_ID:Ljava/lang/String; = "MANUAL_SMART_PLAY_UPDATE_TASK:"

.field public static final SCHEDULER_ACTION:Ljava/lang/String; = "mobi.beyondpod.scheduling.SCHEDULED_TASK"

.field private static TAG:Ljava/lang/String; = "ScheduledTasksManager"

.field public static final TASK_EXTRA:Ljava/lang/String; = "task_id"

.field public static final TIME_EXTRA:Ljava/lang/String; = "task_start_time"

.field private static _GoogleReaderSyncTask:Lmobi/beyondpod/schedulercore/SyncGoogleReaderScheduledTask;

.field private static _Operations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Lmobi/beyondpod/schedulercore/OperationBase;",
            ">;"
        }
    .end annotation
.end field

.field private static _OperationsForAssignment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/schedulercore/OperationBase;",
            ">;"
        }
    .end annotation
.end field

.field private static _ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lmobi/beyondpod/schedulercore/ScheduledTask;",
            ">;"
        }
    .end annotation
.end field

.field private static _SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

.field private static _UpdateSmartPlayTask:Lmobi/beyondpod/schedulercore/UpdateSmartPlayFeedsScheduledTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_Operations:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_OperationsForAssignment:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    new-instance v0, Lmobi/beyondpod/schedulercore/SyncGoogleReaderScheduledTask;

    invoke-direct {v0}, Lmobi/beyondpod/schedulercore/SyncGoogleReaderScheduledTask;-><init>()V

    sput-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_GoogleReaderSyncTask:Lmobi/beyondpod/schedulercore/SyncGoogleReaderScheduledTask;

    .line 70
    new-instance v0, Lmobi/beyondpod/schedulercore/UpdateSmartPlayFeedsScheduledTask;

    invoke-direct {v0}, Lmobi/beyondpod/schedulercore/UpdateSmartPlayFeedsScheduledTask;-><init>()V

    sput-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_UpdateSmartPlayTask:Lmobi/beyondpod/schedulercore/UpdateSmartPlayFeedsScheduledTask;

    .line 71
    new-instance v0, Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    invoke-direct {v0}, Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;-><init>()V

    sput-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    .line 113
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->loadOperations()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeTaskCount()I
    .locals 1

    .line 90
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->activeTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static activeTasks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/schedulercore/ScheduledTask;",
            ">;"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 433
    iget-boolean v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_0

    .line 435
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static areAllActiveTasksScheduled()Z
    .locals 2

    .line 185
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->activeTaskCount()I

    move-result v0

    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->registeredTaskCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static buildAdHockCategoryUpdateTaskID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->MANUAL_CATEGORY_UPDATE_TASK_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildAdHockSmartPlayUpdateTaskID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->MANUAL_SMART_PLAY_UPDATE_TASK_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildIntent(Lmobi/beyondpod/schedulercore/ScheduledTask;)Landroid/content/Intent;
    .locals 4

    .line 519
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/scheduler/ScheduledEventReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.evo"

    .line 521
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bpscheduler:task/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "task_id"

    .line 524
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task_start_time"

    .line 525
    iget-object v2, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    .line 526
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->recurrence()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v2

    .line 525
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method private static buildPendingIntentForTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)Landroid/app/PendingIntent;
    .locals 3

    .line 505
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildIntent(Lmobi/beyondpod/schedulercore/ScheduledTask;)Landroid/content/Intent;

    move-result-object p0

    .line 506
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v1

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    const/high16 v1, 0x10000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    :goto_0
    const/4 v2, 0x0

    .line 505
    invoke-static {v0, v2, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static clearAllTasks()V
    .locals 1

    .line 419
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static deleteScheduledTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 600
    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->unregisterTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    .line 601
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteScheduledTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    :cond_0
    return-void
.end method

.method public static deleteScheduledTaskFromDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 3

    .line 294
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 296
    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildPendingIntentForTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 298
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 299
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed scheduled task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static deleteScheduledTasksFromDevice()V
    .locals 3

    .line 281
    :try_start_0
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 283
    invoke-static {v1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->deleteScheduledTaskFromDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to delete old scheduled tasks!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static dumpRepository()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 495
    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static executeTaskFor(Ljava/lang/String;Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)Z
    .locals 3

    .line 118
    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->getTaskById(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 122
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->MANUAL_CATEGORY_UPDATE_TASK_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0, p1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->handleOperationCategoryUpdate(Ljava/lang/String;Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)Z

    move-result p0

    return p0

    .line 126
    :cond_0
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->MANUAL_SMART_PLAY_UPDATE_TASK_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {p0, p1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->handleOperationSmartPlayUpdate(Ljava/lang/String;Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)Z

    move-result p0

    return p0

    .line 132
    :cond_1
    sget-object p1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    const-string v0, "Unable to find task for key: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 137
    :cond_2
    iget-object p0, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->occursInTheFuture()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 138
    invoke-static {v0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->setScheduledTaskToDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    .line 140
    :cond_3
    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->checkIfCanExecute()Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    .line 143
    :cond_4
    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmobi/beyondpod/schedulercore/OperationBase;->execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V

    return v1
.end method

.method public static findOverlappingTasksWith(Lmobi/beyondpod/schedulercore/Event;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/schedulercore/Event;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/schedulercore/ScheduledTask;",
            ">;"
        }
    .end annotation

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 587
    iget-boolean v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v3, p0}, Lmobi/beyondpod/schedulercore/Event;->overlapsWith(Lmobi/beyondpod/schedulercore/Event;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getFirstTaskToExecuteAfter(Ljava/util/Date;)Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 11

    .line 476
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 478
    iget-boolean v5, v4, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-gez v5, :cond_0

    .line 480
    iget-object v5, v4, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v9, v5, v7

    long-to-double v5, v9

    cmpg-double v7, v5, v2

    if-gez v7, :cond_0

    move-object v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getLastTaskThatExecutedBefore(Ljava/util/Date;)Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 11

    .line 337
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 339
    iget-boolean v5, v4, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->getUnadjustedStartTime()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    .line 340
    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->getUnadjustedStartTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 342
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object v7, v4, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v7}, Lmobi/beyondpod/schedulercore/Event;->getUnadjustedStartTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v9, v5, v7

    long-to-double v5, v9

    cmpg-double v7, v5, v2

    if-gez v7, :cond_0

    move-object v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getTaskById(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 1

    .line 318
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_GoogleReaderSyncTask:Lmobi/beyondpod/schedulercore/SyncGoogleReaderScheduledTask;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/SyncGoogleReaderScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_GoogleReaderSyncTask:Lmobi/beyondpod/schedulercore/SyncGoogleReaderScheduledTask;

    return-object p0

    .line 321
    :cond_0
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_UpdateSmartPlayTask:Lmobi/beyondpod/schedulercore/UpdateSmartPlayFeedsScheduledTask;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/UpdateSmartPlayFeedsScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_UpdateSmartPlayTask:Lmobi/beyondpod/schedulercore/UpdateSmartPlayFeedsScheduledTask;

    return-object p0

    .line 324
    :cond_1
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    return-object p0

    .line 326
    :cond_2
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/schedulercore/ScheduledTask;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static handleOperationCategoryUpdate(Ljava/lang/String;Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)Z
    .locals 2

    .line 149
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->MANUAL_CATEGORY_UPDATE_TASK_ID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ALL FEEDS"

    .line 151
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    goto :goto_0

    :cond_0
    const-string v0, "UNCATEGORIZED"

    .line 153
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 158
    :goto_0
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v0, v1, :cond_2

    .line 160
    sget-object p1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduled task MANUAL CATEGORY UPDATE was invoked with an invalid category \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 166
    :cond_2
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->operations()Ljava/util/HashMap;

    move-result-object p0

    sget-object v1, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->OperationID:Ljava/util/UUID;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/schedulercore/OperationBase;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lmobi/beyondpod/schedulercore/OperationBase;->createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object p0

    .line 167
    move-object v1, p0

    check-cast v1, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->setCategoryToUpdate(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1}, Lmobi/beyondpod/schedulercore/OperationBase;->execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static handleOperationSmartPlayUpdate(Ljava/lang/String;Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)Z
    .locals 2

    .line 174
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->MANUAL_SMART_PLAY_UPDATE_TASK_ID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 177
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->operations()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->OperationID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/schedulercore/OperationBase;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmobi/beyondpod/schedulercore/OperationBase;->createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v0

    .line 178
    move-object v1, v0

    check-cast v1, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;

    invoke-virtual {v1, p0}, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->setSmartPlayToUpdate(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1}, Lmobi/beyondpod/schedulercore/OperationBase;->execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static hasPendingIntentForTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)Z
    .locals 3

    .line 512
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildIntent(Lmobi/beyondpod/schedulercore/ScheduledTask;)Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x20000000

    invoke-static {v0, v1, p0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static loadOperations()V
    .locals 3

    .line 533
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_Operations:Ljava/util/HashMap;

    sget-object v1, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->OperationID:Ljava/util/UUID;

    new-instance v2, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-direct {v2}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_Operations:Ljava/util/HashMap;

    sget-object v1, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->OperationID:Ljava/util/UUID;

    new-instance v2, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;

    invoke-direct {v2}, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static loadTask(JLjava/lang/String;ZILjava/util/Date;IJLjava/util/UUID;Ljava/lang/String;)Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 1

    .line 389
    new-instance v0, Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-direct {v0, p2}, Lmobi/beyondpod/schedulercore/ScheduledTask;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->initRowID(Ljava/lang/Long;)V

    .line 392
    iput-boolean p3, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    .line 393
    iput p4, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->minBatteryLevelRequired:I

    .line 396
    new-instance p0, Lmobi/beyondpod/schedulercore/Event;

    new-instance p1, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    invoke-direct {p1, p7, p8}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    invoke-direct {p0, p5, p6, p1}, Lmobi/beyondpod/schedulercore/Event;-><init>(Ljava/util/Date;ILmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    iput-object p0, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    .line 399
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_Operations:Ljava/util/HashMap;

    invoke-virtual {p0, p9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 401
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_Operations:Ljava/util/HashMap;

    invoke-virtual {p0, p9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/schedulercore/OperationBase;

    invoke-virtual {p0, p10}, Lmobi/beyondpod/schedulercore/OperationBase;->createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object p0

    .line 402
    invoke-virtual {v0, p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->setOperation(Lmobi/beyondpod/schedulercore/OperationBase;)V

    .line 405
    :cond_0
    invoke-static {v0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->registerTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    return-object v0
.end method

.method public static loadTask(Lorg/xml/sax/helpers/AttributesImpl;)Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 7

    const-string v0, ""

    const-string v1, "id"

    .line 357
    invoke-virtual {p0, v0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v1, Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-direct {v1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    const-string v2, "active"

    .line 360
    invoke-virtual {p0, v0, v2}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseBooleanFromString(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    const-string v0, ""

    const-string v2, "minBattLevel"

    .line 361
    invoke-virtual {p0, v0, v2}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    .line 362
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 361
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->minBatteryLevelRequired:I

    .line 365
    new-instance v0, Ljava/util/Date;

    const-string v2, ""

    const-string v3, "startTime"

    invoke-virtual {p0, v2, v3}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 366
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 365
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, ""

    const-string v3, "recInterval"

    .line 367
    invoke-virtual {p0, v2, v3}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, ""

    const-string v4, "recPeriod"

    .line 368
    invoke-virtual {p0, v3, v4}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 370
    new-instance v5, Lmobi/beyondpod/schedulercore/Event;

    new-instance v6, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    invoke-direct {v6, v3, v4}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    invoke-direct {v5, v0, v2, v6}, Lmobi/beyondpod/schedulercore/Event;-><init>(Ljava/util/Date;ILmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    iput-object v5, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    const-string v0, ""

    const-string v2, "operationId"

    .line 373
    invoke-virtual {p0, v0, v2}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseUUIDFromString(Ljava/lang/String;Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v0

    const-string v2, ""

    const-string v3, "state"

    .line 374
    invoke-virtual {p0, v2, v3}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 376
    sget-object v2, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_Operations:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    sget-object v2, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_Operations:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/schedulercore/OperationBase;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/schedulercore/OperationBase;->createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object p0

    .line 379
    invoke-virtual {v1, p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->setOperation(Lmobi/beyondpod/schedulercore/OperationBase;)V

    .line 382
    :cond_0
    invoke-static {v1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->registerTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    return-object v1
.end method

.method public static operations()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Lmobi/beyondpod/schedulercore/OperationBase;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_Operations:Ljava/util/HashMap;

    return-object v0
.end method

.method public static operationsForAssignment()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/schedulercore/OperationBase;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_OperationsForAssignment:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static registerTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 2

    .line 305
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registeredTaskCount()I
    .locals 5

    .line 99
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 101
    iget-boolean v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_0

    .line 102
    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/ScheduledTask;->existsOnDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static rescheduleAllActiveTasks()I
    .locals 4

    .line 193
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    const-string v1, "Rescheduling all active scheduled tasks..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->deleteScheduledTasksFromDevice()V

    .line 198
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifSchedulingRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application is running in restricted mode! (Expired on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") Scheduling is disabled!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->setScheduledTasksToDevice()I

    move-result v0

    .line 211
    :goto_0
    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->registeredTaskCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->activeTaskCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active tasks."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static saveTasks(Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;)V
    .locals 5

    :try_start_0
    const-string v0, "scheduledTasks"

    .line 446
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    .line 448
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/schedulercore/ScheduledTask;

    const-string v2, "task"

    .line 450
    invoke-virtual {p0, v2}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v2, "id"

    .line 451
    invoke-virtual {v1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "active"

    .line 452
    iget-boolean v3, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_1

    :cond_0
    const-string v3, "0"

    :goto_1
    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "minBattLevel"

    .line 453
    iget v3, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->minBatteryLevelRequired:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "startTime"

    .line 454
    iget-object v3, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/Event;->getUnadjustedStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "recPeriod"

    .line 455
    iget-object v3, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    .line 456
    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/Event;->getRecurrencePeriod()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "recInterval"

    .line 457
    iget-object v3, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/Event;->getRecurrenceInterval()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "operationId"

    .line 458
    invoke-virtual {v1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/OperationBase;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "state"

    .line 459
    invoke-virtual {v1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/schedulercore/OperationBase;->serializedData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "task"

    .line 460
    invoke-virtual {p0, v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "scheduledTasks"

    .line 463
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 467
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to save ScheduledTasks"

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static scheduleGoogleSynUpdateIfNeeded()V
    .locals 2

    .line 539
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->hasUnsynchronizedGoogleReaderItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    const-string v1, "Scheduling Google Sync Task"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_GoogleReaderSyncTask:Lmobi/beyondpod/schedulercore/SyncGoogleReaderScheduledTask;

    invoke-static {v0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->setScheduledTaskToDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    :cond_0
    return-void
.end method

.method public static scheduleSyncTaskIfSyncIsEnabled(ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Z
    .locals 6

    .line 548
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->hasUploadPendingChanges()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-nez p0, :cond_1

    .line 552
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->deleteScheduledTaskFromDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    .line 553
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    const-string p1, "Executing Change Sync Task without a delay!"

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "BPT#SYNC_CHANGE_TRACKING"

    invoke-static {p0, p1}, Lmobi/beyondpod/services/scheduler/CommandReceiver;->startScheduledTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_1
    sget-object p2, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    iget-object p2, p2, Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p2, p0}, Lmobi/beyondpod/schedulercore/Event;->setRecurrenceInterval(I)V

    .line 560
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    iget-object p0, p0, Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/schedulercore/Event;->setRecurrencePeriod(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    .line 562
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-object p2, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    iget-object p2, p2, Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p2}, Lmobi/beyondpod/schedulercore/Event;->recurrence()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v0

    add-long v2, p0, v0

    .line 563
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Scheduling Change Sync Task for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lmobi/beyondpod/rsscore/helpers/DateTime;->HOURMINSECFORMAT:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 564
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    const-string p1, "alarm"

    invoke-virtual {p0, p1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    if-eqz p0, :cond_2

    const/4 p1, 0x2

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object p2, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    iget-object p2, p2, Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    .line 570
    invoke-virtual {p2}, Lmobi/beyondpod/schedulercore/Event;->recurrence()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v2

    add-long v4, v0, v2

    sget-object p2, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_SyncChangesTask:Lmobi/beyondpod/schedulercore/SyncChangeTrackingScheduledTask;

    .line 571
    invoke-static {p2}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildPendingIntentForTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 569
    invoke-virtual {p0, p1, v4, v5, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static setScheduledTaskToDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 10

    .line 241
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    .line 243
    sget-object p0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    const-string v0, "ERROR: Cannot retrieve AlarmManager service!"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    .line 250
    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->recurrence()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v5

    add-long v7, v3, v5

    .line 251
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildIntent(Lmobi/beyondpod/schedulercore/ScheduledTask;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    .line 250
    invoke-static {v3, v2, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 249
    invoke-virtual {v1, v0, v7, v8, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 252
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduled ELAPSED_REALTIME_WAKEUP task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/OperationBase;->startTimeBias()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (Bias: +"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "s.)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 259
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_3

    .line 261
    iget-object v5, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    add-long v7, v5, v3

    .line 262
    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildPendingIntentForTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 261
    invoke-virtual {v1, v2, v7, v8, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 264
    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled Idle RTC_WAKEUP task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 268
    iget-object v5, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    add-long v7, v5, v3

    const-wide/32 v5, 0xdbba0

    .line 269
    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildPendingIntentForTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)Landroid/app/PendingIntent;

    move-result-object v9

    move-wide v3, v7

    move-object v7, v9

    .line 268
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 270
    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled RTC_WAKEUP task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static setScheduledTasksToDevice()I
    .locals 4

    const/4 v0, 0x0

    .line 222
    :try_start_0
    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 224
    iget-boolean v3, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v3, :cond_0

    .line 226
    invoke-static {v2}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->setScheduledTaskToDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 233
    sget-object v2, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to schedule tasks!"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static tasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lmobi/beyondpod/schedulercore/ScheduledTask;",
            ">;"
        }
    .end annotation

    .line 424
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static unregisterAndClearAllTasks()V
    .locals 2

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 413
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 414
    invoke-static {v1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->unregisterTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static unregisterTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 2

    .line 310
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->_ScheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->deleteScheduledTaskFromDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    return-void
.end method
