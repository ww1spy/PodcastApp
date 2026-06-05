.class public Lmobi/beyondpod/services/scheduler/SchedulingService;
.super Landroid/app/Service;
.source "SchedulingService.java"


# static fields
.field private static final IDLE_DELAY:J = 0x1b7740L

.field private static TAG:Ljava/lang/String; = "SchedulingService"


# instance fields
.field private _DelayedStopHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field _LoadDataStartTime:J

.field _OnTaskCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

.field _TaskExecutorThread:Ljava/lang/Thread;

.field private final _TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobi/beyondpod/rsscore/helpers/GenericQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _started:Z

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_started:Z

    .line 352
    new-instance v0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/scheduler/SchedulingService$2;-><init>(Lmobi/beyondpod/services/scheduler/SchedulingService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_OnTaskCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

    .line 390
    new-instance v0, Lmobi/beyondpod/services/scheduler/SchedulingService$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/scheduler/SchedulingService$3;-><init>(Lmobi/beyondpod/services/scheduler/SchedulingService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_DelayedStopHandler:Landroid/os/Handler;

    .line 434
    new-instance v0, Lmobi/beyondpod/services/scheduler/SchedulingService$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/scheduler/SchedulingService$4;-><init>(Lmobi/beyondpod/services/scheduler/SchedulingService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/beyondpod/services/scheduler/SchedulingService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->checkCanStop()V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/services/scheduler/SchedulingService;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->startScheduledTaskIfRepositoryIsLoaded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/services/scheduler/SchedulingService;)Lmobi/beyondpod/rsscore/helpers/GenericQueue;
    .locals 0

    .line 56
    iget-object p0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/services/scheduler/SchedulingService;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_DelayedStopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkCanStop()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 70
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-boolean v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_started:Z

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 75
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "service"

    .line 76
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x2

    .line 77
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_update:I

    .line 78
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 82
    sget-object v2, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting foreground service (SchedulingService) and passing notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x65

    .line 83
    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->startForeground(ILandroid/app/Notification;)V

    .line 84
    iput-boolean v1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_started:Z

    :cond_0
    return-void
.end method

.method private enqueueTask(Ljava/lang/String;)Z
    .locals 1

    .line 281
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 286
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->enqueue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private declared-synchronized handleCommand(Landroid/content/Intent;)V
    .locals 10

    monitor-enter p0

    if-nez p1, :cond_0

    .line 123
    :try_start_0
    sget-object p1, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v0, "Scheduling service was started without an intent! Exiting..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->checkCanStop()V

    .line 125
    invoke-virtual {p0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 129
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 130
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "SchedulingService was started for task: %s. Battery Level: %d%%, Charging: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget v5, Lmobi/beyondpod/BeyondPodApplication;->batteryLevel:I

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDevicePlugged()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Yes"

    goto :goto_0

    :cond_1
    const-string v5, "No"

    :goto_0
    const/4 v7, 0x2

    aput-object v5, v3, v7

    .line 130
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_LoadDataStartTime:J

    sub-long v8, v0, v2

    .line 137
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "Found that another scheduled task (%s) is already running! The task has been running for: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    .line 139
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-wide/16 v3, 0x3e8

    div-long v3, v8, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 137
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0x927c0

    cmp-long v2, v8, v0

    if-gez v2, :cond_3

    .line 143
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "Last task has been running for less than 10 minutes."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/scheduler/SchedulingService;->enqueueTask(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 146
    sget-object p1, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v0, "Queing the new task..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_2
    sget-object p1, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v0, "Task with the same id already exists - Exiting..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_1
    monitor-exit p0

    return-void

    .line 153
    :cond_3
    :try_start_2
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "Last task\'s Update & Download Manager is still working."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/scheduler/SchedulingService;->enqueueTask(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 159
    sget-object p1, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v0, "Queueing the new task..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 161
    :cond_4
    sget-object p1, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v0, "Task with the same id already exists - Exiting..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :goto_2
    monitor-exit p0

    return-void

    .line 167
    :cond_5
    :try_start_3
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "The last task appears to be stuck! Starting the execution of the new task"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->dequeue()Ljava/lang/Object;

    .line 173
    :cond_6
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    sget-object p1, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v0, "SchedulingService was started with invalid task id"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->checkCanStop()V

    .line 177
    invoke-virtual {p0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->stopSelf()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 182
    :cond_7
    :try_start_4
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/scheduler/SchedulingService;->enqueueTask(Ljava/lang/String;)Z

    .line 184
    new-instance p1, Ljava/lang/Thread;

    const/4 v0, 0x0

    new-instance v1, Lmobi/beyondpod/services/scheduler/SchedulingService$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/services/scheduler/SchedulingService$1;-><init>(Lmobi/beyondpod/services/scheduler/SchedulingService;)V

    const-string v2, "SchedulingService task executing thread"

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskExecutorThread:Ljava/lang/Thread;

    .line 250
    iget-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskExecutorThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 120
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized startScheduledTaskIfRepositoryIsLoaded()Z
    .locals 6

    monitor-enter p0

    .line 291
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isRuntimeShuttingDown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 292
    monitor-exit p0

    return v1

    .line 295
    :cond_0
    :try_start_1
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 298
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->hasItems()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 306
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifSchedulingRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeyondPod is running in restricted mode! (Expired on: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") Scheduled Updates are disabled!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_OnTaskCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

    invoke-interface {v0}, Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;->onOperationComplete()V

    goto :goto_1

    :cond_2
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 314
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    .line 315
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.TIME_SET"

    .line 316
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_0

    .line 335
    :cond_3
    :try_start_2
    iget-object v1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_OnTaskCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

    invoke-static {v0, v1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->executeTaskFor(Ljava/lang/String;Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 337
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_OnTaskCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

    invoke-interface {v0}, Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;->onOperationComplete()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 342
    :try_start_3
    sget-object v1, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 318
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 319
    sget-object v3, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v4, "device was rebooted. Restoring schedules..."

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_5
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onSystemScheduledTaskStarted(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->rescheduleAllActiveTasks()I

    .line 325
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleGoogleSynUpdateIfNeeded()V

    const/16 v3, 0x14

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 326
    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromMinutes(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleSyncTaskIfSyncIsEnabled(ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Z

    .line 327
    iget-object v3, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_OnTaskCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

    invoke-interface {v3}, Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;->onOperationComplete()V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 329
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    :cond_6
    :goto_1
    monitor-exit p0

    return v2

    .line 299
    :cond_7
    :goto_2
    :try_start_4
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "Attempting to execute scheduled task when the scheduling task Queue is empty!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_OnTaskCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

    invoke-interface {v0}, Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;->onOperationComplete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    monitor-exit p0

    return v2

    .line 349
    :cond_8
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 290
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 430
    iget-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 431
    iget-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 99
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "service"

    .line 100
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x2

    .line 101
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 102
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_pause:I

    goto :goto_0

    :cond_0
    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_play:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 106
    sget-object v2, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting foreground service (SchedulingService) and passing notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x65

    .line 107
    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->startForeground(ILandroid/app/Notification;)V

    .line 108
    iput-boolean v1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_started:Z

    .line 111
    :cond_1
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "--------------------------- Scheduling Service is Created!---------------------------"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_DelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_DelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 417
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_TaskQueue:Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->clear()V

    .line 418
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 419
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->stopForeground(Landroid/app/Service;I)V

    .line 421
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "--------------------------- Scheduling service is Destroyed! ---------------------------"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 258
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 260
    invoke-virtual {p0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 261
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 262
    invoke-virtual {p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, -0x1

    .line 263
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const-string v0, "service"

    .line 264
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, -0x2

    .line 265
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 266
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lmobi/beyondpod/R$drawable;->ic_notification_pause:I

    goto :goto_0

    :cond_0
    sget v0, Lmobi/beyondpod/R$drawable;->ic_notification_play:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 267
    invoke-virtual {p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 268
    invoke-virtual {p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 269
    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 270
    sget-object v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting foreground service (SchedulingService) and passing notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    .line 271
    invoke-virtual {p0, v0, p2}, Lmobi/beyondpod/services/scheduler/SchedulingService;->startForeground(ILandroid/app/Notification;)V

    .line 272
    iput-boolean p3, p0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_started:Z

    .line 275
    :cond_1
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/scheduler/SchedulingService;->handleCommand(Landroid/content/Intent;)V

    return p3
.end method
