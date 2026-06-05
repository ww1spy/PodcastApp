.class public Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;
.super Lmobi/beyondpod/aggregators/RequestBase;
.source "FRequestRefreshToken.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FRequestRefreshToken"


# instance fields
.field _HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

.field private _RefreshToken:Ljava/lang/String;


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

    .line 45
    invoke-direct {p0}, Lmobi/beyondpod/aggregators/RequestBase;-><init>()V

    .line 47
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Refresh token is required!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_RefreshToken:Ljava/lang/String;

    const/4 p1, 0x1

    .line 53
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_RetryCount:I

    return-void
.end method


# virtual methods
.method public httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;
    .locals 3

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    return-object v0

    .line 102
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->TokenUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpPost(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    const-string v1, "*/*"

    invoke-static {v0, v1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "refresh_token"

    .line 107
    iget-object v2, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_RefreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_id"

    .line 108
    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->ClientID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_secret"

    .line 109
    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->ClientSTP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "grant_type"

    const-string v2, "refresh_token"

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v1, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->setPostHashMap(Ljava/util/HashMap;)V

    .line 112
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    return-object v0
.end method

.method public onFail(Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 59
    instance-of v0, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_RetryCount:I

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lmobi/beyondpod/aggregators/RequestBase;->onFail(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x2

    .line 68
    iput v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_RequestStatus:I

    .line 70
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "access_token"

    .line 75
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    .line 76
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 77
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 83
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    add-long v7, v3, v5

    invoke-virtual {v2, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 84
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthAccessTokenExpiration(Ljava/util/Date;)V

    .line 85
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthUser(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 87
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->_RequestStatus:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Refresh Feedly token"

    return-object v0
.end method
