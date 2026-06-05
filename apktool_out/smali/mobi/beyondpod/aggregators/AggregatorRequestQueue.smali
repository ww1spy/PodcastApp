.class public Lmobi/beyondpod/aggregators/AggregatorRequestQueue;
.super Ljava/lang/Object;
.source "AggregatorRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AggregatorRequestQueue"


# instance fields
.field private _CallerThread:Ljava/lang/Thread;

.field private volatile _DownloadThreadIsDownloading:Z

.field private _QueueListener:Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;

.field private _RequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/aggregators/RequestBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_CallerThread:Ljava/lang/Thread;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_RequestQueue:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_QueueListener:Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;

    return-void
.end method

.method public static executeRequest(Lmobi/beyondpod/aggregators/RequestBase;)Z
    .locals 9

    .line 159
    invoke-virtual {p0}, Lmobi/beyondpod/aggregators/RequestBase;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    :try_start_0
    sget-object v2, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v2, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- Executing Aggregator API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v2, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    const-string v3, "--- Sending Request "

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 174
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 176
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 178
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result v2

    .line 180
    sget-object v3, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- Got Response! status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x191

    const/16 v4, 0x193

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    .line 186
    new-instance v2, Ljava/lang/Exception;

    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_1
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getUnzippedContent()Ljava/io/InputStream;

    move-result-object v6

    .line 192
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x1000

    invoke-direct {v7, v8, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 197
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 200
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 202
    sget-object v7, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    const-string v8, "--- Request completed!"

    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, v4, :cond_5

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne v2, v5, :cond_4

    .line 210
    invoke-static {v6}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v6, "OK"

    .line 213
    :cond_4
    invoke-virtual {p0, v6}, Lmobi/beyondpod/aggregators/RequestBase;->onSuccess(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 207
    :cond_5
    :goto_1
    new-instance v2, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    invoke-direct {v2, v6}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 218
    sget-object v3, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- Error during Aggregator Sync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->finalDownloadUrl()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". reason: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v2}, Lmobi/beyondpod/aggregators/RequestBase;->onFail(Ljava/lang/Exception;)V

    return v1
.end method

.method private onQueueCompleted(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_DownloadThreadIsDownloading:Z

    .line 241
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_QueueListener:Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_QueueListener:Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;

    iget-object v1, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_RequestQueue:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;->onQueueCompleted(ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method private onQueueProgress(II)V
    .locals 1

    .line 247
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_QueueListener:Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_QueueListener:Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;

    invoke-interface {v0, p1, p2}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;->onQueueProgress(II)V

    :cond_0
    return-void
.end method

.method private onQueueStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_DownloadThreadIsDownloading:Z

    .line 233
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_QueueListener:Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_QueueListener:Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;

    iget-object v1, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_RequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;->onQueueStarted(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public executeQueuedRequests()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_CallerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "You must use a new instance of this class for each new download!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iget-boolean v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_DownloadThreadIsDownloading:Z

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Download is already in progress!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_DownloadThreadIsDownloading:Z

    .line 80
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_CallerThread:Ljava/lang/Thread;

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_CallerThread:Ljava/lang/Thread;

    const-string v1, "Aggregator caller thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_CallerThread:Ljava/lang/Thread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 83
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_CallerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isWorking()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_DownloadThreadIsDownloading:Z

    return v0
.end method

.method public declared-synchronized queueRequest(Lmobi/beyondpod/aggregators/RequestBase;)V
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_RequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 59
    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 7

    const/16 v0, 0xa

    .line 102
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 106
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_RequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 107
    invoke-direct {p0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->onQueueStarted()V

    .line 109
    sget-object v1, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- Starting the execution of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " synchronization requests..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_RequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/aggregators/RequestBase;

    .line 115
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    sget-object v0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    const-string v1, "--- Request Queue processing was interrupted."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 122
    invoke-direct {p0, v1, v0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->onQueueProgress(II)V

    .line 124
    invoke-static {v3}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->executeRequest(Lmobi/beyondpod/aggregators/RequestBase;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    invoke-virtual {v3}, Lmobi/beyondpod/aggregators/RequestBase;->shouldAbort()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    sget-object v0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Request queue processing aborted as a result of request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v3}, Lmobi/beyondpod/aggregators/RequestBase;->shouldRetry()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    sget-object v4, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- Retrying request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v3}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->executeRequest(Lmobi/beyondpod/aggregators/RequestBase;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    goto :goto_0

    .line 149
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->onQueueCompleted(Z)V

    .line 150
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_RequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/aggregators/RequestBase;

    .line 151
    invoke-virtual {v1}, Lmobi/beyondpod/aggregators/RequestBase;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 152
    invoke-virtual {v1}, Lmobi/beyondpod/aggregators/RequestBase;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v1

    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 145
    :try_start_1
    sget-object v1, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->TAG:Ljava/lang/String;

    const-string v2, "--- failed to process Aggregator request queue"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->onQueueCompleted(Z)V

    .line 150
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_RequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/aggregators/RequestBase;

    .line 151
    invoke-virtual {v1}, Lmobi/beyondpod/aggregators/RequestBase;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 152
    invoke-virtual {v1}, Lmobi/beyondpod/aggregators/RequestBase;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v1

    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    goto :goto_3

    :cond_6
    return-void

    .line 149
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->onQueueCompleted(Z)V

    .line 150
    iget-object v1, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_RequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/aggregators/RequestBase;

    .line 151
    invoke-virtual {v2}, Lmobi/beyondpod/aggregators/RequestBase;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 152
    invoke-virtual {v2}, Lmobi/beyondpod/aggregators/RequestBase;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v2

    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    goto :goto_5

    .line 153
    :cond_8
    throw v0
.end method

.method public stop()V
    .locals 1

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_CallerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_CallerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->_CallerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
