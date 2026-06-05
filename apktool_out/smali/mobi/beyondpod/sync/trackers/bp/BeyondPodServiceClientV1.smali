.class public Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;
.super Ljava/lang/Object;
.source "BeyondPodServiceClientV1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;
    }
.end annotation


# static fields
.field private static final CLIENT_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BeyondPodServiceClientV1"


# instance fields
.field private restUrlRoot:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSServiceEndpoint()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->setRestUrlRoot(Landroid/net/Uri;)V

    return-void
.end method

.method private authenticateUserBeyondPod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;,
            Lmobi/beyondpod/sync/trackers/bp/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v1
    :try_end_0
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->restUrlRoot:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/users/authenticate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpPost(Ljava/lang/String;)V

    const-string v2, "application/json"

    .line 119
    invoke-static {v1, v2}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 120
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodClientVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodSoftwareVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 122
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "user"

    .line 123
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pass"

    .line 124
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    .line 125
    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "registerNew"

    if-eqz p4, :cond_0

    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    .line 126
    :goto_0
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reAuthenticating"

    if-eqz p5, :cond_1

    const-string p2, "true"

    goto :goto_1

    :cond_1
    const-string p2, "false"

    .line 127
    :goto_1
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v1, v3}, Lmobi/beyondpod/downloadengine/IHttpClient;->setPostHashMap(Ljava/util/HashMap;)V

    .line 129
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 130
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->getResponseString()Ljava/lang/String;

    move-result-object p1

    .line 131
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Status"

    .line 132
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 133
    sget p3, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->AUTH_RESULT_AUTHENTICATED:I

    if-eq p1, p3, :cond_5

    .line 134
    sget p3, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->AUTH_RESULT_ACCOUNT_CREATED:I

    if-ne p1, p3, :cond_3

    .line 135
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    invoke-direct {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;-><init>()V

    .line 136
    invoke-virtual {p1, v0}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setToken(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, v0}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setTokenExpires(Ljava/util/Date;)V

    .line 138
    invoke-virtual {p1, v2}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setWaitingForEmailVerification(Z)V

    const-string p3, "EncryptedPass"

    .line 139
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setEncryptedPassword(Ljava/lang/String;)V

    .line 140
    invoke-static {v1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->getResponseDate(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setServerDate(Ljava/util/Date;)V
    :try_end_1
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 176
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_2
    return-object p1

    .line 144
    :cond_3
    :try_start_2
    sget p3, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->AUTH_RESULT_SERVER_ERROR:I

    if-ne p1, p3, :cond_4

    .line 145
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "StatusMessage"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_4
    new-instance p3, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;

    const-string p4, "StatusMessage"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2, v0}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_5
    const-string p1, "Token"

    .line 150
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, -0x1

    if-eqz p1, :cond_a

    const-string p4, ""

    .line 151
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    const-string p4, "TokenExpires"

    .line 155
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_9

    const-string p5, ""

    .line 156
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    goto :goto_2

    .line 160
    :cond_7
    new-instance p3, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    invoke-direct {p3}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;-><init>()V

    .line 161
    invoke-virtual {p3, p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setToken(Ljava/lang/String;)V

    const-string p1, "EncryptedPass"

    .line 162
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setEncryptedPassword(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p4}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setTokenExpires(Ljava/util/Date;)V

    .line 164
    invoke-static {v1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->getResponseDate(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setServerDate(Ljava/util/Date;)V
    :try_end_2
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_8

    .line 176
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_8
    return-object p3

    .line 157
    :cond_9
    :goto_2
    :try_start_3
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;

    const-string p2, "Authentication Failure - Invalid Expiration"

    invoke-direct {p1, p3, p2, v0}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 152
    :cond_a
    :goto_3
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;

    const-string p2, "Authentication Failure - Invalid Token"

    invoke-direct {p1, p3, p2, v0}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_6

    :catch_2
    move-exception p1

    .line 171
    :goto_4
    :try_start_4
    new-instance p2, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const/16 p3, -0x64

    const-string p4, "Service Error"

    invoke-direct {p2, p3, p4, p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 168
    :goto_5
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    if-eqz v1, :cond_b

    .line 176
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_b
    throw p1
.end method

.method private authenticateUserGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;,
            Lmobi/beyondpod/sync/trackers/bp/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v1
    :try_end_0
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->restUrlRoot:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/users/authenticate-google"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpPost(Ljava/lang/String;)V

    const-string v2, "application/json"

    .line 214
    invoke-static {v1, v2}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 215
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodClientVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodSoftwareVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "user"

    .line 218
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "authToken"

    .line 219
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    .line 220
    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "registerNew"

    if-eqz p4, :cond_0

    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    .line 221
    :goto_0
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-interface {v1, v2}, Lmobi/beyondpod/downloadengine/IHttpClient;->setPostHashMap(Ljava/util/HashMap;)V

    .line 224
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 225
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->getResponseString()Ljava/lang/String;

    move-result-object p1

    .line 226
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Status"

    .line 227
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    new-instance p3, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;

    const-string p4, "StatusMessage"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2, v0}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_1
    const-string p1, "Token"

    .line 232
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, -0x1

    if-eqz p1, :cond_6

    const-string p4, ""

    .line 233
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const-string p4, "TokenExpires"

    .line 237
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p4, ""

    .line 238
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_1

    .line 242
    :cond_3
    new-instance p3, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    invoke-direct {p3}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;-><init>()V

    .line 243
    invoke-virtual {p3, p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setToken(Ljava/lang/String;)V

    .line 244
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 245
    invoke-virtual {p3, p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->setTokenExpires(Ljava/util/Date;)V
    :try_end_1
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 257
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_4
    return-object p3

    .line 239
    :cond_5
    :goto_1
    :try_start_2
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;

    const-string p2, "Authentication Failure - Invalid Expiration"

    invoke-direct {p1, p3, p2, v0}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 234
    :cond_6
    :goto_2
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;

    const-string p2, "Authentication Failure - Invalid Token"

    invoke-direct {p1, p3, p2, v0}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception p1

    .line 252
    :goto_3
    :try_start_3
    new-instance p2, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const/16 p3, -0x64

    const-string p4, "Service Error"

    invoke-direct {p2, p3, p4, p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 249
    :goto_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    if-eqz v1, :cond_7

    .line 257
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_7
    throw p1
.end method

.method private createList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/sync/trackers/bp/ServiceException;
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "DeviceActivities"

    .line 456
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DeviceActivities"

    .line 457
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "DeviceActivity"

    .line 459
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DeviceActivity"

    .line 460
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 462
    instance-of v2, p1, Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    .line 463
    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    goto :goto_0

    .line 465
    :cond_0
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 466
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 467
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 471
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    .line 473
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 474
    new-instance v4, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;

    invoke-direct {v4}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "DateTime"

    .line 476
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->setDateTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "BeyondPodServices"

    const-string v7, "error parsing activity date"

    .line 479
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string v5, "type"

    .line 482
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->setType(Ljava/lang/String;)V

    const-string v5, "Data"

    .line 483
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->setData(Ljava/lang/String;)V

    const-string v5, "DeviceMeta"

    .line 484
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->setDevice(Ljava/lang/String;)V

    .line 485
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :catch_1
    move-exception p1

    .line 493
    new-instance v0, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const/4 v1, -0x1

    const-string v2, "failed to parse service activity records"

    invoke-direct {v0, v1, v2, p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 442
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 443
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const-string v1, ":"

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getSoftwareVersion()Ljava/lang/String;
    .locals 3

    .line 59
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 62
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    const-string v1, ""

    .line 182
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "Z"

    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, "z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\.\\d{3}[-\\+]{0,1}\\d{2}:\\d{2}$"

    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 192
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1

    :cond_2
    const-string v1, "^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\.\\d{3}[-\\+]{0,1}\\d{4}$"

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 197
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 198
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 200
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t parse date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_4
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    .line 187
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "BeyondPodServiceClientV1"

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filed to parse date:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public authenticateUser(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;Ljava/lang/String;Z)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;,
            Lmobi/beyondpod/sync/trackers/bp/ServiceException;
        }
    .end annotation

    .line 100
    sget-object v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->BeyondPod:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    if-ne p3, v0, :cond_0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v6, p5

    .line 101
    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->authenticateUserBeyondPod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    move-result-object p1

    return-object p1

    .line 103
    :cond_0
    sget-object v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->Google:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    if-ne p3, v0, :cond_2

    if-eqz p5, :cond_1

    .line 105
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "when authenticating via google, you can NOT use the reAuthenticatingUsingEncryptedPassword feature."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p3, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p4, p3}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->authenticateUserGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    move-result-object p1

    return-object p1

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "invalid authType specified"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public gcmBroadcast(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;,
            Lmobi/beyondpod/sync/trackers/bp/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 404
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v1
    :try_end_0
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 406
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->restUrlRoot:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/devices/gcm/send"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpGet(Ljava/lang/String;)V

    const-string v2, "application/json"

    .line 407
    invoke-static {v1, v2}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const-string v2, "application/json"

    .line 408
    invoke-static {v1, v2}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setContentTypeTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 409
    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodTokenTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 410
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodClientVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodSoftwareVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 412
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 413
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result p1

    const/16 v2, 0x193

    if-ne p1, v2, :cond_0

    .line 414
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;

    const-string v2, "invalid token"

    invoke-direct {p1, v2, v0}, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 417
    :cond_0
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->getResponseString()Ljava/lang/String;

    move-result-object p1

    .line 418
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Status"

    .line 420
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 422
    new-instance v3, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const-string v4, "StatusMessage"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p1, v2, v0}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 432
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 428
    :goto_0
    :try_start_2
    new-instance v1, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const/4 v2, -0x1

    const-string v3, "Service error"

    invoke-direct {v1, v2, v3, p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception p1

    .line 426
    :goto_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v1, :cond_3

    .line 432
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_3
    throw p1
.end method

.method public gcmRegister(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;,
            Lmobi/beyondpod/sync/trackers/bp/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 333
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v1
    :try_end_0
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 334
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->restUrlRoot:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/devices/gcm/register?gcmToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UTF8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpGet(Ljava/lang/String;)V

    const-string p2, "application/json"

    .line 335
    invoke-static {v1, p2}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const-string p2, "application/json"

    .line 336
    invoke-static {v1, p2}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setContentTypeTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 337
    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodTokenTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 338
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodClientVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodSoftwareVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 340
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 341
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result p1

    const/16 p2, 0x193

    if-ne p1, p2, :cond_0

    .line 342
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;

    const-string p2, "invalid token"

    invoke-direct {p1, p2, v0}, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 345
    :cond_0
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->getResponseString()Ljava/lang/String;

    move-result-object p1

    .line 346
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Status"

    .line 348
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 350
    new-instance v2, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const-string v3, "StatusMessage"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2, v0}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 360
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 356
    :goto_0
    :try_start_2
    new-instance p2, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const/4 v1, -0x1

    const-string v2, "Service error"

    invoke-direct {p2, v1, v2, p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 354
    :goto_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v1, :cond_3

    .line 360
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_3
    throw p1
.end method

.method public gcmUnregister(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;,
            Lmobi/beyondpod/sync/trackers/bp/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 368
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v1
    :try_end_0
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 370
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->restUrlRoot:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/devices/gcm/unregister?gcmToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UTF8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpGet(Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 371
    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 372
    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setContentTypeTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const-string p1, ""

    .line 373
    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodTokenTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 374
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodClientVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodSoftwareVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 376
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 377
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result p1

    const/16 v2, 0x193

    if-ne p1, v2, :cond_0

    .line 378
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;

    const-string v2, "invalid token"

    invoke-direct {p1, v2, v0}, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 381
    :cond_0
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->getResponseString()Ljava/lang/String;

    move-result-object p1

    .line 382
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Status"

    .line 384
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 386
    new-instance v3, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const-string v4, "StatusMessage"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p1, v2, v0}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 396
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 392
    :goto_0
    :try_start_2
    new-instance v1, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const/4 v2, -0x1

    const-string v3, "Service error"

    invoke-direct {v1, v2, v3, p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception p1

    .line 390
    :goto_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v1, :cond_3

    .line 396
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_3
    throw p1
.end method

.method public getRestUrlRoot()Landroid/net/Uri;
    .locals 1

    .line 50
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->restUrlRoot:Landroid/net/Uri;

    return-object v0
.end method

.method public registerUser(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;Ljava/lang/String;)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;,
            Lmobi/beyondpod/sync/trackers/bp/ServiceException;
        }
    .end annotation

    .line 79
    sget-object v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->BeyondPod:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    if-ne p3, v0, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    .line 80
    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->authenticateUserBeyondPod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    sget-object v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->Google:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    if-ne p3, v0, :cond_1

    const/4 p3, 0x1

    .line 83
    invoke-direct {p0, p1, p2, p4, p3}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->authenticateUserGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    move-result-object p1

    return-object p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "invalid authType specified"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRestUrlRoot(Landroid/net/Uri;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->restUrlRoot:Landroid/net/Uri;

    return-void
.end method

.method public storeAndRetrieveActivities(Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;)Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;",
            ">;Z",
            "Ljava/util/Date;",
            ")",
            "Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;,
            Lmobi/beyondpod/sync/trackers/bp/ServiceException;
        }
    .end annotation

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 274
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0
    :try_end_0
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    invoke-direct {p0, p4}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->restUrlRoot:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/devices/activity?includeMyActivities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p3, "false"

    goto :goto_0

    :cond_0
    const-string p3, "true"

    :goto_0
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1

    const-string p3, ""

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "&sinceDateTime="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpPost(Ljava/lang/String;)V

    const-string p3, "application/json"

    .line 279
    invoke-static {v0, p3}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const-string p3, "application/json"

    .line 280
    invoke-static {v0, p3}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setContentTypeTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 281
    invoke-static {v0, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodTokenTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 282
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodClientVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setBeyondpodSoftwareVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 285
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 286
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "DeviceActivities"

    .line 287
    invoke-virtual {p1, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    new-instance p4, Lorg/json/JSONArray;

    invoke-direct {p4}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "DeviceActivity"

    .line 289
    invoke-virtual {p3, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 293
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;

    .line 294
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "DateTime"

    .line 295
    invoke-virtual {p3}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->getDateTime()Ljava/util/Date;

    move-result-object v4

    invoke-direct {p0, v4}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    .line 296
    invoke-virtual {p3}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Data"

    .line 297
    invoke-virtual {p3}, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->getData()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    invoke-virtual {p4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 302
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setPostString(Ljava/lang/String;)V

    .line 303
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 304
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result p1

    const/16 p2, 0x193

    if-ne p1, p2, :cond_3

    .line 305
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;

    const-string p2, "invalid token"

    invoke-direct {p1, p2, v1}, Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 308
    :cond_3
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getResponseString()Ljava/lang/String;

    move-result-object p1

    .line 309
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Status"

    .line 311
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 313
    new-instance p3, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const-string p4, "StatusMessage"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2, v1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 316
    :cond_4
    new-instance p1, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;

    invoke-direct {p0, p2}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->createList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p2

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->getResponseDate(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/util/Date;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;-><init>(Ljava/util/List;Ljava/util/Date;)V
    :try_end_1
    .catch Lmobi/beyondpod/sync/trackers/bp/InvalidTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 326
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v0

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 321
    :goto_3
    :try_start_2
    new-instance p2, Lmobi/beyondpod/sync/trackers/bp/ServiceException;

    const/4 p3, -0x1

    const-string p4, "Service error"

    invoke-direct {p2, p3, p4, p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 319
    :goto_4
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    if-eqz v0, :cond_6

    .line 326
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_6
    throw p1
.end method
