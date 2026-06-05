.class public Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;
.super Lmobi/beyondpod/aggregators/RequestBase;
.source "FRequestGetToken.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FRequestGetToken"


# instance fields
.field private _HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

.field private _OAuthCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lmobi/beyondpod/aggregators/RequestBase;-><init>()V

    .line 48
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "OAuth code is required!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_OAuthCode:Ljava/lang/String;

    const/4 p1, 0x1

    .line 55
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_RetryCount:I

    return-void
.end method


# virtual methods
.method public httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;
    .locals 3

    .line 110
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    return-object v0

    .line 113
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->TokenUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpPost(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    const-string v1, "*/*"

    invoke-static {v0, v1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    .line 118
    iget-object v2, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_OAuthCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_id"

    .line 119
    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->ClientID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_secret"

    .line 120
    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->ClientSTP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "redirect_uri"

    .line 121
    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->RedirectURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    const-string v2, "BPAuth"

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v1, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->setPostHashMap(Ljava/util/HashMap;)V

    .line 126
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    return-object v0
.end method

.method public onFail(Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    instance-of v0, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_RetryCount:I

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lmobi/beyondpod/aggregators/RequestBase;->onFail(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x2

    .line 70
    iput v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_RequestStatus:I

    .line 72
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "access_token"

    .line 77
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    .line 78
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 79
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "refresh_token"

    .line 80
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->clearLogin()V

    .line 86
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 87
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long v8, v4, v6

    invoke-virtual {v3, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 88
    invoke-static {v3}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthAccessTokenExpiration(Ljava/util/Date;)V

    .line 89
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthRefreshToken(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 91
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthUser(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 92
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->_RequestStatus:I

    .line 93
    sget-object p1, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- Received a fresh Feedly token! (expires: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    sget-object p1, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->TAG:Ljava/lang/String;

    const-string v0, "--- Received empty Feedly token!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;->TAG:Ljava/lang/String;

    const-string v1, "--- failed to parse Feedly response!"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Get Feedly token"

    return-object v0
.end method
