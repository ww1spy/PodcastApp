.class Lmobi/beyondpod/services/scheduler/SchedulingService$1;
.super Ljava/lang/Object;
.source "SchedulingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/scheduler/SchedulingService;->handleCommand(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/scheduler/SchedulingService;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v0, 0xa

    .line 188
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 192
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmobi/beyondpod/services/scheduler/SchedulingService;->_LoadDataStartTime:J

    .line 194
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, -0x1

    const-wide/16 v2, 0x3e8

    if-ne v0, v1, :cond_2

    .line 200
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    const-string v4, "Loading feeds..."

    invoke-virtual {v0, v1, v4}, Lmobi/beyondpod/BeyondPodApplication;->getDefaultNotificationForService(Landroid/app/Service;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 201
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    iget-object v4, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->startForegroundAndShowNotification(Landroid/app/Service;ILandroid/app/Notification;)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    const-wide/16 v4, 0x7530

    cmp-long v8, v6, v4

    if-gez v8, :cond_1

    .line 207
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->canRepositoryBeLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Storage card found..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Waiting for the Storage Card to get mounted..."

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 217
    :cond_1
    :goto_1
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* SchedulingService OnStart found that repository is not loaded! (repo state is: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") Loading repository..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->initializeAndLoadRepository()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scheduling Service - the repository failed to load! (Possibly no Storage Card) Exiting...!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$100(Lmobi/beyondpod/services/scheduler/SchedulingService;)V

    .line 224
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->stopSelf()V

    const/4 v0, 0x0

    .line 225
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    .line 230
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    iget-wide v4, v4, Lmobi/beyondpod/services/scheduler/SchedulingService;->_LoadDataStartTime:J

    sub-long v6, v0, v4

    const-wide/32 v0, 0xc350

    cmp-long v4, v6, v0

    if-gez v4, :cond_4

    .line 232
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$200(Lmobi/beyondpod/services/scheduler/SchedulingService;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 235
    :cond_3
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Repository is still loading..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 241
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to start scheduled task!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    :cond_4
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Repository is taking too long to load! Giving Up!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$100(Lmobi/beyondpod/services/scheduler/SchedulingService;)V

    .line 246
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$1;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->stopSelf()V

    return-void
.end method
