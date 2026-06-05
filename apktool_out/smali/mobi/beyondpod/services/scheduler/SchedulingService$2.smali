.class Lmobi/beyondpod/services/scheduler/SchedulingService$2;
.super Ljava/lang/Object;
.source "SchedulingService.java"

# interfaces
.implements Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/scheduler/SchedulingService;
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

    .line 353
    iput-object p1, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationComplete()V
    .locals 4

    .line 357
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$300(Lmobi/beyondpod/services/scheduler/SchedulingService;)Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduled task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v2}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$300(Lmobi/beyondpod/services/scheduler/SchedulingService;)Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " completed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$300(Lmobi/beyondpod/services/scheduler/SchedulingService;)Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->dequeue()Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$300(Lmobi/beyondpod/services/scheduler/SchedulingService;)Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$300(Lmobi/beyondpod/services/scheduler/SchedulingService;)Lmobi/beyondpod/rsscore/helpers/GenericQueue;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/GenericQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found a waiting task ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") in the scheduling queue!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$200(Lmobi/beyondpod/services/scheduler/SchedulingService;)Z

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to execute the task from the scheduling queue, because the Repository is uninitilizad. Exiting..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_1
    :goto_0
    invoke-static {}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Terminating the scheduling service service..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->releaseWakeLocks()V

    .line 385
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-static {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->access$100(Lmobi/beyondpod/services/scheduler/SchedulingService;)V

    .line 386
    iget-object v0, p0, Lmobi/beyondpod/services/scheduler/SchedulingService$2;->this$0:Lmobi/beyondpod/services/scheduler/SchedulingService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/scheduler/SchedulingService;->stopSelf()V

    return-void
.end method
