.class public Lmobi/beyondpod/rsscore/FeedURLPatcher;
.super Ljava/lang/Object;
.source "FeedURLPatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedURLPatcher"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callUrlPatcher(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 63
    sget-object v0, Lmobi/beyondpod/rsscore/FeedURLPatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++++ Starting Patch of url for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    .line 67
    invoke-static {p1}, Lmobi/beyondpod/rsscore/FeedURLPatcher;->constructPatchURL(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpGet(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 71
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 73
    sget-object v3, Lmobi/beyondpod/rsscore/FeedURLPatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while retrieving bitmap from "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    return-object v1

    .line 77
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getUnzippedContent()Ljava/io/InputStream;

    move-result-object v2

    .line 78
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    invoke-direct {v3, v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 93
    :catch_0
    :try_start_2
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :goto_1
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    goto :goto_2

    :catch_1
    move-exception v2

    .line 89
    :try_start_3
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->abort()V

    .line 90
    sget-object v3, Lmobi/beyondpod/rsscore/FeedURLPatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network error while retrieving patched URL for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    return-object v1

    .line 96
    :goto_3
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    throw p1
.end method

.method private static constructPatchURL(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicWebSite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android/search/PatchFeedURL.aspx?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static tryPatchFeedUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;
    .locals 1

    .line 57
    new-instance v0, Lmobi/beyondpod/rsscore/FeedURLPatcher;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedURLPatcher;-><init>()V

    .line 58
    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/FeedURLPatcher;->callUrlPatcher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    new-instance v0, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
