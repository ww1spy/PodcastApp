.class public abstract Lmobi/beyondpod/rsscore/helpers/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/helpers/NotificationHelper$ArcStyle;,
        Lmobi/beyondpod/rsscore/helpers/NotificationHelper$NewStyle;
    }
.end annotation


# static fields
.field public static final GENERAL_CHANNEL_ID:Ljava/lang/String; = "beyond.pod.general"

.field public static final GENERAL_CHANNEL_NAME:Ljava/lang/String; = "BeyondPod General"

.field public static NOTIFICATION_LINE1_EXTRA:Ljava/lang/String; = "LINE1"

.field public static NOTIFICATION_LINE2_EXTRA:Ljava/lang/String; = "LINE2"

.field public static NOTIFICATION_PROGRESS:Ljava/lang/String; = "PROGRESS"

.field public static NOTIFICATION_TICKER_EXTRA:Ljava/lang/String; = "TICKER"

.field public static NOTIFICATION_TYPE_EXTRA:Ljava/lang/String; = "TYPE"

.field public static final NT_Canceled:I = 0x1

.field public static final NT_Completed:I = 0x3

.field public static final NT_Connecting:I = 0x0

.field public static final NT_ProcessingCompleted:I = 0x6

.field public static final NT_ProcessingStarted:I = 0x5

.field public static final NT_Progress:I = 0x4

.field public static final NT_Started:I = 0x2

.field public static final NT_UpdateAndDownloadCompleted:I = 0x7

.field public static final NT_UpdateAndDownloadCompletedWithErrors:I = 0x8

.field private static TAG:Ljava/lang/String; = "NotificationHelper"

.field public static final UPDATEANDDOWNLOAD_COMPLETED:I = 0x81

.field public static final UPDATEANDDOWNLOAD_STATUS:I = 0x80

.field private static _CurrentNotifications:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->_CurrentNotifications:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(I)V
    .locals 0

    .line 33
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->markVisible(I)V

    return-void
.end method

.method static synthetic access$400(I)V
    .locals 0

    .line 33
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->markCleared(I)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDefaultChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getOrCreateNotificationChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;
    .locals 1

    .line 61
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper$NewStyle$Holder;->access$000()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    return-object v0
.end method

.method public static isNotificationIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 98
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_TYPE_EXTRA:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static markCleared(I)V
    .locals 2

    .line 220
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->_CurrentNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->_CurrentNotifications:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    return-void
.end method

.method private static markVisible(I)V
    .locals 2

    .line 211
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->_CurrentNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->_CurrentNotifications:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearNotification(Landroid/content/Context;I)V
    .locals 1

    .line 89
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 93
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->markCleared(I)V

    return-void
.end method

.method public getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2

    .line 112
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getDefaultChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const p1, 0x108009b

    .line 118
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 p1, 0x1

    .line 119
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method

.method protected getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    const-string v0, "notification"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    return-object p1
.end method

.method protected getOrCreateNotificationChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    .line 131
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "beyond.pod.general"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "beyond.pod.general"

    const-string v2, "BeyondPod General"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 137
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-object v0
.end method

.method public isNotificationShowing(I)Z
    .locals 1

    .line 206
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->_CurrentNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public abstract startForegroundAndShowNotification(Landroid/app/Service;ILandroid/app/Notification;)V
.end method

.method public abstract stopForeground(Landroid/app/Service;I)V
.end method

.method public updateNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 1

    .line 73
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    sget-object p3, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->TAG:Ljava/lang/String;

    const-string v0, "Notification manager failed to notify."

    invoke-static {p3, v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_0
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->markVisible(I)V

    return-void
.end method
