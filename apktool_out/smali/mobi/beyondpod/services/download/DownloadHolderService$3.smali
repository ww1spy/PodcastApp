.class Lmobi/beyondpod/services/download/DownloadHolderService$3;
.super Ljava/lang/Object;
.source "DownloadHolderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/download/DownloadHolderService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/download/DownloadHolderService;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/download/DownloadHolderService;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lmobi/beyondpod/services/download/DownloadHolderService$3;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0xa

    .line 135
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 139
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService$3;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmobi/beyondpod/services/download/DownloadHolderService;->_LoadDataStartTime:J

    .line 141
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 143
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->clearNotification()V

    .line 145
    invoke-static {}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******* DownloadHolderService OnCreate found that repository is not loaded! (repo state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Loading repository..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->initializeAndLoadRepository()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download Service - the repository failed to load! Giving Up!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService$3;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-static {v0}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$200(Lmobi/beyondpod/services/download/DownloadHolderService;)V

    .line 152
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService$3;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/download/DownloadHolderService;->stopSelf()V

    return-void

    .line 156
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmobi/beyondpod/services/download/DownloadHolderService$3;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    iget-wide v2, v2, Lmobi/beyondpod/services/download/DownloadHolderService;->_LoadDataStartTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x4e20

    cmp-long v2, v4, v0

    if-gez v2, :cond_2

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService$3;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-static {v0}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$300(Lmobi/beyondpod/services/download/DownloadHolderService;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 161
    :cond_1
    invoke-static {}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download Service Holder is waiting for Repository to load..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 163
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Repository is taking too long to load! Giving Up!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService$3;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-static {v0}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$200(Lmobi/beyondpod/services/download/DownloadHolderService;)V

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService$3;->this$0:Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/download/DownloadHolderService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 173
    invoke-static {}, Lmobi/beyondpod/services/download/DownloadHolderService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to resume download!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
