.class public Lmobi/beyondpod/downloadengine/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createClient()Lmobi/beyondpod/downloadengine/IHttpClient;
    .locals 1

    .line 9
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->newInstance()Lmobi/beyondpod/downloadengine/HttpClientOkhttp;

    move-result-object v0

    return-object v0
.end method

.method public static createClient(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lmobi/beyondpod/downloadengine/IHttpClient;
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->newInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lmobi/beyondpod/downloadengine/HttpClientOkhttp;

    move-result-object p0

    return-object p0
.end method

.method public static createClient(Lmobi/beyondpod/rsscore/helpers/NetworkCredential;Ljava/net/URI;)Lmobi/beyondpod/downloadengine/IHttpClient;
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lmobi/beyondpod/downloadengine/HttpClientOkhttp;->newInstance(Lmobi/beyondpod/rsscore/helpers/NetworkCredential;Ljava/net/URI;)Lmobi/beyondpod/downloadengine/HttpClientOkhttp;

    move-result-object p0

    return-object p0
.end method
