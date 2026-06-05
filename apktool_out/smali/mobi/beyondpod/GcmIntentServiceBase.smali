.class public abstract Lmobi/beyondpod/GcmIntentServiceBase;
.super Landroid/app/IntentService;
.source "GcmIntentServiceBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GcmIntentServiceBase"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "GcmIntentServiceBase"

    .line 36
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private register(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 130
    :try_start_0
    sget-object v0, Lmobi/beyondpod/GcmIntentServiceBase;->TAG:Ljava/lang/String;

    const-string v1, "### Ready to register with GCM..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 131
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->GCMSenderID()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lmobi/beyondpod/GcmIntentServiceBase;->onRegistered(Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setGCMRegistrationId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "### failed to register GCM in Play Services!"

    .line 137
    invoke-virtual {p0, p1}, Lmobi/beyondpod/GcmIntentServiceBase;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private unregister(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->GCMRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lmobi/beyondpod/GcmIntentServiceBase;->TAG:Ljava/lang/String;

    const-string v2, "### Ready to un-register with GCM..."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    .line 116
    invoke-virtual {p0, v0}, Lmobi/beyondpod/GcmIntentServiceBase;->onUnregistered(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->clearGCMRegistrationId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "### failed to Un-register GCM in Play Services!"

    .line 121
    invoke-virtual {p0, p1}, Lmobi/beyondpod/GcmIntentServiceBase;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract onDeletedMessages(Landroid/content/Intent;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 54
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 58
    sget-object v2, Lmobi/beyondpod/GcmIntentServiceBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v2, Lmobi/beyondpod/Constants;->ACTION_REGISTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-direct {p0, v0}, Lmobi/beyondpod/GcmIntentServiceBase;->register(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {p1}, Lmobi/beyondpod/GcmBroadcastReceiver;->completeIntent(Landroid/content/Intent;)Ljava/lang/Boolean;

    return-void

    .line 64
    :cond_0
    :try_start_1
    sget-object v2, Lmobi/beyondpod/Constants;->ACTION_UNREGISTER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0, v0}, Lmobi/beyondpod/GcmIntentServiceBase;->unregister(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {p1}, Lmobi/beyondpod/GcmBroadcastReceiver;->completeIntent(Landroid/content/Intent;)Ljava/lang/Boolean;

    return-void

    .line 73
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "send_error"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "MESSAGE_TYPE_SEND_ERROR"

    .line 83
    invoke-virtual {p0, v0}, Lmobi/beyondpod/GcmIntentServiceBase;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "deleted_messages"

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p0, p1}, Lmobi/beyondpod/GcmIntentServiceBase;->onDeletedMessages(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "gcm"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p0, p1}, Lmobi/beyondpod/GcmIntentServiceBase;->onMessage(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 99
    :try_start_3
    sget-object v1, Lmobi/beyondpod/GcmIntentServiceBase;->TAG:Ljava/lang/String;

    const-string v2, "GCM onHandleIntent failed!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :cond_4
    :goto_0
    invoke-static {p1}, Lmobi/beyondpod/GcmBroadcastReceiver;->completeIntent(Landroid/content/Intent;)Ljava/lang/Boolean;

    return-void

    :goto_1
    invoke-static {p1}, Lmobi/beyondpod/GcmBroadcastReceiver;->completeIntent(Landroid/content/Intent;)Ljava/lang/Boolean;

    throw v0
.end method

.method protected abstract onMessage(Landroid/content/Intent;)V
.end method

.method protected abstract onRegistered(Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Ljava/lang/String;)V
.end method
