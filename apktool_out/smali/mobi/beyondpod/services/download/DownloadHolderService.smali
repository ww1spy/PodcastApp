.class public Lmobi/beyondpod/services/download/DownloadHolderService;
.super Landroid/app/Service;
.source "DownloadHolderService.java"


# static fields
.field private static final IDLE_DELAY:J = 0x1b7740L

.field private static final PREPARING_FOR_DOWNLOAD:Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = "DownloadHolderService"


# instance fields
.field private _DelayedStopHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field _DownloadResumeThread:Ljava/lang/Thread;

.field _LoadDataStartTime:J

.field private volatile _started:Z

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget v0, Lmobi/beyondpod/R$string;->download_holder_preparing_for_download:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/download/DownloadHolderService;->PREPARING_FOR_DOWNLOAD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_started:Z

    .line 53
    new-instance v0, Lmobi/beyondpod/services/download/DownloadHolderService$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/download/DownloadHolderService$1;-><init>(Lmobi/beyondpod/services/download/DownloadHolderService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_DelayedStopHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lmobi/beyondpod/services/download/DownloadHolderService$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/download/DownloadHolderService$2;-><init>(Lmobi/beyondpod/services/download/DownloadHolderService;)V

    iput-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lmobi/beyondpod/services/download/DownloadHolderService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/beyondpod/services/download/DownloadHolderService;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_DelayedStopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/services/download/DownloadHolderService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/services/download/DownloadHolderService;->checkCanStop()V

    return-void
.end method

.method static synthetic access$300(Lmobi/beyondpod/services/download/DownloadHolderService;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/services/download/DownloadHolderService;->resumeDownloadIfRepositoryIsLoaded()Z

    move-result p0

    return p0
.end method

.method private checkCanStop()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 83
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-boolean v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_started:Z

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 88
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "service"

    .line 89
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x2

    .line 90
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_update:I

    .line 91
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 95
    sget-object v2, Lmobi/beyondpod/services/download/DownloadHolderService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting foreground service (DownloadHolderService) and passing notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x65

    .line 96
    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/services/download/DownloadHolderService;->startForeground(ILandroid/app/Notification;)V

    .line 97
    iput-boolean v1, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_started:Z

    :cond_0
    return-void
.end method

.method private resumeDownloadIfRepositoryIsLoaded()Z
    .locals 2

    .line 224
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 226
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->resumeUpdateAndDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lmobi/beyondpod/services/download/DownloadHolderService;->TAG:Ljava/lang/String;

    const-string v1, "No Downloads to resume! Stopping the holder service..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lmobi/beyondpod/services/download/DownloadHolderService;->checkCanStop()V

    .line 230
    invoke-virtual {p0}, Lmobi/beyondpod/services/download/DownloadHolderService;->stopSelf()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 254
    iget-object p1, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 255
    iget-object p1, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 111
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "service"

    .line 112
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x2

    .line 113
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_update:I

    .line 114
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 118
    sget-object v2, Lmobi/beyondpod/services/download/DownloadHolderService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting foreground service (DownloadHolderService) and passing notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x65

    .line 119
    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/services/download/DownloadHolderService;->startForeground(ILandroid/app/Notification;)V

    .line 120
    iput-boolean v1, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_started:Z

    .line 123
    :cond_0
    sget-object v0, Lmobi/beyondpod/services/download/DownloadHolderService;->TAG:Ljava/lang/String;

    const-string v1, "========================= Download Service Holder is Created! ======================="

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_DelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_DelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0x1b7740

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lmobi/beyondpod/services/download/DownloadHolderService$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/services/download/DownloadHolderService$3;-><init>(Lmobi/beyondpod/services/download/DownloadHolderService;)V

    const-string v3, "DownloadHolderService execution thread"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_DownloadResumeThread:Ljava/lang/Thread;

    .line 178
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_DownloadResumeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 242
    iget-object v0, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_DelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->stopForeground(Landroid/app/Service;I)V

    .line 245
    sget-object v0, Lmobi/beyondpod/services/download/DownloadHolderService;->TAG:Ljava/lang/String;

    const-string v1, "============================ Download Service Holder is Destroyed! ======================="

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 185
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 188
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 189
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "service"

    .line 190
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x2

    .line 191
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_update:I

    .line 192
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 196
    sget-object v2, Lmobi/beyondpod/services/download/DownloadHolderService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting foreground service (DownloadHolderService) and passing notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x65

    .line 197
    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/services/download/DownloadHolderService;->startForeground(ILandroid/app/Notification;)V

    .line 198
    iput-boolean v1, p0, Lmobi/beyondpod/services/download/DownloadHolderService;->_started:Z

    :cond_0
    if-eqz p1, :cond_2

    .line 201
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->isNotificationIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmobi/beyondpod/BeyondPodApplication;->setNotification(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_1

    .line 203
    :cond_2
    :goto_0
    sget-object v0, Lmobi/beyondpod/services/download/DownloadHolderService;->TAG:Ljava/lang/String;

    const-string v1, "========= Download Service Holder Started!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/services/download/DownloadHolderService;->PREPARING_FOR_DOWNLOAD:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getDefaultNotificationForService(Landroid/app/Service;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 210
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->startForegroundAndShowNotification(Landroid/app/Service;ILandroid/app/Notification;)V

    .line 219
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
