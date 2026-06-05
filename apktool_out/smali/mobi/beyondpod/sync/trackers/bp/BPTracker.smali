.class public Lmobi/beyondpod/sync/trackers/bp/BPTracker;
.super Ljava/lang/Object;
.source "BPTracker.java"

# interfaces
.implements Lmobi/beyondpod/sync/trackers/ITracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;
    }
.end annotation


# static fields
.field private static final BACKOFF_MILLI_SECONDS:I = 0x7d0

.field private static final MAX_ATTEMPTS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BPTracker"

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 262
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadRemoteChanges(Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;",
            ">;)",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 171
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;

    const/4 v4, 0x0

    const/4 v8, 0x3

    .line 176
    invoke-virtual {v2}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->getDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 177
    invoke-virtual {v2}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-static {v3, v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v13

    .line 178
    invoke-virtual {v2}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->getData()Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v13, v3, :cond_8

    const/4 v3, 0x2

    if-eq v13, v3, :cond_8

    const/4 v3, 0x3

    if-eq v13, v3, :cond_8

    const/16 v3, 0xe

    if-ne v13, v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x4

    if-eq v13, v3, :cond_7

    const/4 v3, 0x5

    if-eq v13, v3, :cond_7

    const/4 v3, 0x6

    if-ne v13, v3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0xc

    if-eq v13, v3, :cond_6

    const/16 v3, 0xd

    if-eq v13, v3, :cond_6

    const/16 v3, 0xa

    if-eq v13, v3, :cond_6

    const/16 v3, 0xb

    if-ne v13, v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x9

    if-eq v13, v3, :cond_5

    const/4 v3, 0x7

    if-eq v13, v3, :cond_5

    const/16 v3, 0x8

    if-eq v13, v3, :cond_5

    const/16 v3, 0xf

    if-ne v13, v3, :cond_9

    .line 204
    :cond_5
    new-instance v2, Lmobi/beyondpod/sync/TrackedChangeEpisode;

    const/4 v10, 0x0

    const/4 v14, 0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lmobi/beyondpod/sync/TrackedChangeEpisode;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    goto :goto_4

    .line 198
    :cond_6
    :goto_1
    new-instance v2, Lmobi/beyondpod/sync/TrackedChangePost;

    const/4 v10, 0x0

    const/4 v14, 0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lmobi/beyondpod/sync/TrackedChangePost;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    goto :goto_4

    .line 192
    :cond_7
    :goto_2
    new-instance v2, Lmobi/beyondpod/sync/TrackedChangeEnclosure;

    const/4 v10, 0x0

    const/4 v14, 0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    goto :goto_4

    .line 187
    :cond_8
    :goto_3
    new-instance v2, Lmobi/beyondpod/sync/TrackedChangeFeed;

    move-object v3, v2

    move-wide v5, v11

    move v7, v13

    move-object v9, v15

    invoke-direct/range {v3 .. v9}, Lmobi/beyondpod/sync/TrackedChangeFeed;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    :cond_9
    :goto_4
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 209
    invoke-virtual {v2, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->setIsModified(Z)V

    .line 210
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public static logout()V
    .locals 2

    const-string v0, ""

    .line 362
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSUserName(Ljava/lang/String;)V

    const-string v0, ""

    .line 363
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSPassword(Ljava/lang/String;)V

    const-string v0, ""

    .line 364
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSToken(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 365
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->setLastSyncTimeStamp(J)V

    .line 366
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->setLastRemoteChangeTimeStamp(J)V

    const-string v0, ""

    .line 367
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCDSDeviceID(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->cleanAllRecords()V

    return-void
.end method

.method private refreshToken(Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 222
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 223
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 226
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 227
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSTokenExpiration()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 229
    :cond_1
    sget-object p2, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v1, " --- Requesting fresh token..."

    invoke-static {p2, v1, v2}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 233
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSUserName()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSPassword()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->BeyondPod:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p1

    .line 233
    invoke-virtual/range {v3 .. v8}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->authenticateUser(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;Ljava/lang/String;Z)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->isWaitingForEmailVerification()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 237
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Account is awaiting verification!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_2
    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->setCDSToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->getTokenExpires()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setCDSTokenExpiration(Ljava/util/Date;)V
    :try_end_0
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->getStatusCode()I

    move-result p2

    sget v1, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->AUTH_RESULT_AUTHENTICATION_FAILED:I

    if-ne p2, v1, :cond_3

    .line 247
    sget-object p2, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v0, " --- Your password has changed! Please login again!"

    invoke-static {p2, v0, v2}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 248
    invoke-static {}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->logout()V

    .line 249
    throw p1

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 255
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setCDSDeviceID(Ljava/lang/String;)V

    .line 257
    :cond_4
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :cond_5
    :goto_1
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;

    const/4 p2, -0x1

    const-string v0, "Empty user name or password"

    invoke-direct {p1, p2, v0, v2}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getRemoteChangesSince(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Not Implemented"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 60
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid User or device id"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncChangesUp(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Not Implemented"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public syncPushPull(Ljava/util/List;J)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;J)",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v2, " --- Nothing to upload! Checking for remote changes..."

    invoke-static {v0, v2, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object v2, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --- Starting the execution of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " upload syncing requests!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 91
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 94
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    sget-object v2, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v3, " --- Request Queue processing was interrupted."

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_2

    .line 100
    :cond_1
    invoke-virtual {v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->prepareForSave()V

    .line 102
    new-instance v4, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;

    invoke-direct {v4}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;-><init>()V

    .line 103
    invoke-virtual {v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->changeType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->setType(Ljava/lang/String;)V

    .line 104
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->setDateTime(Ljava/util/Date;)V

    .line 105
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->setDevice(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->blob()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->setData(Ljava/lang/String;)V

    .line 107
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_2
    :goto_2
    new-instance v2, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;

    invoke-direct {v2}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;-><init>()V

    const/4 v3, 0x0

    .line 112
    invoke-direct {p0, v2, v3}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->refreshToken(Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 118
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 120
    sget-object v8, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v9, " --- ["

    invoke-static {v8, v9, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 121
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4, v0, v5, v8}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->storeAndRetrieveActivities(Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;)Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;

    move-result-object v4

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v6

    long-to-float v6, v10

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    .line 126
    sget-object v7, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " --- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v9

    const-string v10, " %.2f s."

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v11, v3

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V
    :try_end_0
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 130
    :catch_0
    invoke-direct {p0, v2, v5}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->refreshToken(Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;Z)Ljava/lang/String;

    move-result-object v3

    .line 131
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3, v0, v5, v4}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->storeAndRetrieveActivities(Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;)Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;

    move-result-object v4

    .line 135
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/sync/TrackedChangeBase;

    .line 137
    invoke-virtual {v0, v5}, Lmobi/beyondpod/sync/TrackedChangeBase;->setSyncStatus(I)V

    .line 138
    sget-object v2, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ------> Synced:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->changeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " => "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->friendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v2, v0, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_4

    .line 142
    :cond_3
    invoke-virtual {v4}, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->hasRemoteActivities()Z

    move-result p1

    if-nez p1, :cond_4

    .line 143
    sget-object p1, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --- No remote changes since: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_5

    .line 145
    :cond_4
    sget-object p1, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --- Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remote changes since: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 148
    :goto_5
    invoke-virtual {v4}, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->getRemoteDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/sync/ChangeTracker;->isDeviceTimeCorrect(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 150
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance p2, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    new-instance p3, Ljava/lang/Exception;

    const-string v0, "device time is incorrect!"

    invoke-direct {p3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-direct {p2, p3, v0}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    .line 151
    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 155
    sget-object p1, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " --- device time is incorrect by: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 156
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v4}, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->getRemoteDate()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v7, v2, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (it could miss some remote changes)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-static {p1, p2, v1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 161
    :cond_5
    invoke-virtual {v4}, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->getActivities()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->loadRemoteChanges(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public updateServerCDMRegistration(Ljava/lang/String;Z)Z
    .locals 10

    .line 266
    new-instance v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;

    invoke-direct {v0}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;-><init>()V

    .line 268
    sget-object v1, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->random:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x7d0

    add-int/2addr v2, v1

    int-to-long v1, v2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 271
    sget-object v4, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v5, "\n--- Registering device with CDS Server..."

    invoke-static {v4, v5, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 273
    :cond_0
    sget-object v4, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v5, "\n--- Unregistering device from CDS Server..."

    invoke-static {v4, v5, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_0
    const/4 v4, 0x1

    move-wide v5, v1

    move v1, v4

    :goto_1
    const/4 v2, 0x5

    const/4 v7, 0x0

    if-gt v1, v2, :cond_6

    if-eqz p2, :cond_1

    .line 281
    :try_start_0
    invoke-direct {p0, v0, v7}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->refreshToken(Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;Z)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :try_start_1
    invoke-virtual {v0, v8, p1}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->gcmRegister(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 290
    :catch_0
    :try_start_2
    invoke-direct {p0, v0, v4}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->refreshToken(Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;Z)Ljava/lang/String;

    move-result-object v8

    .line 291
    invoke-virtual {v0, v8, p1}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->gcmRegister(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v8

    goto :goto_5

    :catch_3
    move-exception p1

    goto/16 :goto_6

    .line 295
    :cond_1
    invoke-virtual {v0, p1}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->gcmUnregister(Ljava/lang/String;)V

    .line 297
    :goto_2
    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->setRegisteredOnServer(Z)V

    if-eqz p2, :cond_2

    .line 300
    sget-object v8, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v9, "--- device Registered!"

    invoke-static {v8, v9, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_3

    .line 302
    :cond_2
    sget-object v8, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v9, "--- device Unregistered!"

    invoke-static {v8, v9, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V
    :try_end_2
    .catch Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    return v4

    .line 353
    :goto_4
    sget-object v7, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--- Registeration failed! reason:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto/16 :goto_8

    .line 324
    :goto_5
    invoke-static {v8}, Lmobi/beyondpod/sync/SyncWorker;->canRetry(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 326
    sget-object v8, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v9, "--- Registering device with Sync Server..."

    invoke-static {v8, v9, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    if-ne v1, v2, :cond_3

    goto/16 :goto_9

    .line 332
    :cond_3
    :try_start_3
    sget-object v2, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--- Sleeping for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms. before retry"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    const-wide/16 v7, 0x2

    mul-long/2addr v5, v7

    goto :goto_8

    .line 337
    :catch_4
    sget-object p1, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string p2, "--- Thread interrupted: abort remaining retries!"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return v7

    .line 347
    :cond_4
    sget-object p1, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--- Registeration failed! reason:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_9

    .line 318
    :goto_6
    sget-object p2, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- Registration failed! Authentication error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_5
    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-static {p2, p1, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_9

    .line 313
    :catch_5
    sget-object p1, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string p2, "--- Registration failed! Invalid token!"

    invoke-static {p1, p2, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_9

    .line 308
    :catch_6
    sget-object v2, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->TAG:Ljava/lang/String;

    const-string v7, "--- Registration failed! Mobile connections are not allowed and WiFi is not connected!"

    invoke-static {v2, v7, v3}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    :goto_9
    return v7
.end method
