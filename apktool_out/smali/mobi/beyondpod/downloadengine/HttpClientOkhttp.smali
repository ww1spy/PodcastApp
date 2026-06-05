.class public Lmobi/beyondpod/downloadengine/HttpClientOkhttp;
.super Ljava/lang/Object;
.source "HttpClientOkhttp.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/IHttpClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClientOkhttp"


# instance fields
.field private final DELETE_REQUEST:I

.field private final GET_REQUEST:I

.field private final POST_REQUEST:I

.field private final PUT_REQUEST:I

.field private _LastRedirectedUri:Ljava/net/URI;

.field private _WebCall:Lokhttp3/Call;

.field private _WebRequest:Lokhttp3/Request$Builder;

.field private _WebResponse:Lokhttp3/Response;

.field private delegate:Lokhttp3/OkHttpClient;

.field private mLeakedException:Ljava/lang/RuntimeException;

.field private requestType:I

.field private userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;Ljava/net/URI;)V
    .locals 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    .line 31
    iput-object p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->delegate:Lokhttp3/OkHttpClient;

    .line 32
    iput-object p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    .line 33
    iput-object p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    const/4 p5, -0x1

    .line 37
    iput p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->requestType:I

    const/4 p5, 0x0

    .line 38
    iput p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->GET_REQUEST:I

    const/4 p5, 0x1

    .line 39
    iput p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->POST_REQUEST:I

    const/4 p5, 0x2

    .line 40
    iput p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->PUT_REQUEST:I

    const/4 p5, 0x3

    .line 41
    iput p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->DELETE_REQUEST:I

    .line 121
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string v0, "BeyondPodHttpClient created and never closed"

    invoke-direct {p5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->mLeakedException:Ljava/lang/RuntimeException;

    .line 125
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultUserAgent()Ljava/lang/String;

    move-result-object p5

    .line 127
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    if-eqz p3, :cond_2

    .line 133
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :cond_2
    if-eqz p4, :cond_3

    .line 135
    new-instance p1, Lmobi/beyondpod/downloadengine/HttpClientOkhttp$1;

    invoke-direct {p1, p0, p4}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp$1;-><init>(Lmobi/beyondpod/downloadengine/HttpClientOkhttp;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;)V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 153
    :cond_3
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->delegate:Lokhttp3/OkHttpClient;

    .line 154
    iput-object p5, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public static newInstance()Lmobi/beyondpod/downloadengine/HttpClientOkhttp;
    .locals 7

    .line 110
    new-instance v6, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->httpConnectionTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->httpConnectionTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;Ljava/net/URI;)V

    return-object v6
.end method

.method public static newInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lmobi/beyondpod/downloadengine/HttpClientOkhttp;
    .locals 7

    .line 114
    new-instance v6, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;Ljava/net/URI;)V

    return-object v6
.end method

.method public static newInstance(Lmobi/beyondpod/rsscore/helpers/NetworkCredential;Ljava/net/URI;)Lmobi/beyondpod/downloadengine/HttpClientOkhttp;
    .locals 7

    .line 118
    new-instance v6, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->httpConnectionTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->httpConnectionTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x0

    move-object v0, v6

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;Ljava/net/URI;)V

    return-object v6
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 52
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    const-string v0, "HttpClientOkhttp"

    const-string v1, ">> Aborting any in-flight requests..."

    .line 53
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 180
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->delegate:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->delegate:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->delegate:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->evictAll()V

    :cond_0
    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->mLeakedException:Ljava/lang/RuntimeException;

    .line 186
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    :cond_2
    return-void
.end method

.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isRuntimeShuttingDown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->delegate:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebCall:Lokhttp3/Call;

    .line 197
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_LastRedirectedUri:Ljava/net/URI;

    goto :goto_0

    :catch_0
    const-string v0, "HttpClientOkhttp"

    const-string v1, "Failed to execute web call because the JVM is shutting down."

    .line 200
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    return-void
.end method

.method public finalDownloadUrl()Ljava/net/URI;
    .locals 1

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_LastRedirectedUri:Ljava/net/URI;

    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 159
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 160
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    const-string v0, "HttpClientOkhttp"

    const-string v1, "Leak found"

    .line 161
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->mLeakedException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->mLeakedException:Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    invoke-virtual {v0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 44
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public getUnzippedContent()Ljava/io/InputStream;
    .locals 1

    .line 167
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public httpDelete(Ljava/lang/String;)V
    .locals 1

    .line 77
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    const-string p1, "User-Agent"

    .line 78
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 79
    iput p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->requestType:I

    return-void
.end method

.method public httpGet(Ljava/lang/String;)V
    .locals 1

    .line 59
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    const-string p1, "User-Agent"

    .line 60
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->requestType:I

    return-void
.end method

.method public httpPost(Ljava/lang/String;)V
    .locals 1

    .line 65
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    const-string p1, "User-Agent"

    .line 66
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 67
    iput p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->requestType:I

    return-void
.end method

.method public httpPut(Ljava/lang/String;)V
    .locals 1

    .line 71
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    const-string p1, "User-Agent"

    .line 72
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 73
    iput p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->requestType:I

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public setPostHashMap(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 84
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 85
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 86
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "application/x-www-form-urlencoded"

    .line 88
    invoke-static {p0, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setContentTypeTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public setPostString(Ljava/lang/String;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    const-string v1, "application/json"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public setPutString(Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->_WebRequest:Lokhttp3/Request$Builder;

    const-string v1, "application/json"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    return-void
.end method
