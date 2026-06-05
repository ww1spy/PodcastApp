.class Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;
.super Ljava/lang/Object;
.source "CoreHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/helpers/CoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RedirectFollowerRunnable"
.end annotation


# instance fields
.field private _OnCompleteHandler:Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;

.field private _UrlToTry:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;)V
    .locals 0

    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1471
    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_UrlToTry:Ljava/lang/String;

    .line 1472
    iput-object p2, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_OnCompleteHandler:Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1480
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    .line 1481
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_UrlToTry:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpGet(Ljava/lang/String;)V

    .line 1482
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 1484
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved URL Redirect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_UrlToTry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->finalDownloadUrl()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1484
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_OnCompleteHandler:Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;

    if-eqz v1, :cond_0

    .line 1488
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_OnCompleteHandler:Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;

    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->finalDownloadUrl()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;->onComplete(Ljava/lang/String;ILjava/lang/Exception;)V

    .line 1491
    :cond_0
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1495
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to follow redirect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_UrlToTry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1496
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_OnCompleteHandler:Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;

    if-eqz v1, :cond_1

    .line 1497
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_OnCompleteHandler:Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;->_UrlToTry:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;->onComplete(Ljava/lang/String;ILjava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method
