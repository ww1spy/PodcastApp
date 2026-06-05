.class public Lmobi/beyondpod/ui/views/impexp/FeedSearchService;
.super Ljava/lang/Object;
.source "FeedSearchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/FeedSearchService$RequestFilter;,
        Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;,
        Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;
    }
.end annotation


# static fields
.field private static final CLIENT_VERSION:I = 0x1

# iTunes Search API base URL (replaces dead BeyondPod Azure backend)
.field private static final ITUNES_SEARCH_URL:Ljava/lang/String; = "https://itunes.apple.com/search"


# instance fields
.field private _requestFilter:Lmobi/beyondpod/ui/views/impexp/FeedSearchService$RequestFilter;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private rootUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/RequestQueue;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 166
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$RequestFilter;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$RequestFilter;-><init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchService;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->_requestFilter:Lmobi/beyondpod/ui/views/impexp/FeedSearchService$RequestFilter;

    .line 73
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->rootUrl:Ljava/lang/String;

    .line 74
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->rootUrl:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->rootUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->rootUrl:Ljava/lang/String;

    .line 78
    :cond_0
    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/FeedSearchService;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs buildParams([Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 173
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 176
    aget-object v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSoftwareVersion()Ljava/lang/String;
    .locals 3

    .line 36
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 39
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

# performItunesGet: GETs an iTunes Search API URL.
# The iTunes response is a JSONObject with a "results" JSONArray.
# FeedSearchService$1 unwraps the results array and forwards it to the listener.
.method private performItunesGet(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    # v0 = FeedSearchService$1 inner listener (unwraps "results" array)
    # v1 = JsonObjectRequest
    # v2 = null (for JSONObject body param)
    # v3 = DefaultRetryPolicy
    # v4 = float 2.0f (backoff)

    # Create the inner listener (FeedSearchService$1) that unwraps "results"
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;

    invoke-direct {v0, p0, p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;-><init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchService;Lcom/android/volley/Response$Listener;)V

    # Create JsonObjectRequest(url, null, listener, errorListener)
    new-instance v1, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0, p3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    # Set retry policy: 10000ms timeout, 2 retries, 2.0f backoff multiplier
    new-instance v3, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x2710

    const/4 v0, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v2, v0, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    # Add request to the queue
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

# Legacy performGet kept for internal stub calls.
# NOTE: BeyondPod backend (rootUrl) is dead; this delegates to performItunesGet.
.method private performGet(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # Check if URL is already absolute (https://); if not, prepend rootUrl
    if-eqz p1, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->rootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->performItunesGet(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    .line 245
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->performGet(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 249
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;

    const/16 p3, -0x64

    const-string p4, "Service Error"

    invoke-direct {p2, p3, p4, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private queryGetStrings(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    .line 231
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->performGet(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 235
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;

    const/16 p3, -0x64

    const-string p4, "Service Error"

    invoke-direct {p2, p3, p4, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public findByAudioBookCategory(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

.method public findByAudioBookQuery(Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

.method public findByPopularCategory(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

# findByQuery: Build iTunes Search API URL and call performItunesGet.
# p1=query, p2=type(ignored), p3=page, p4=pageSize, p5=listener, p6=errorListener
.method public findByQuery(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # Build: https://itunes.apple.com/search?term=ENCODED&media=podcast&entity=podcast&limit=N&offset=START
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://itunes.apple.com/search"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?term="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # URLEncoder.encode(query != null ? query : "", "UTF-8")
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&media=podcast&entity=podcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # offset = page * pageSize
    mul-int v1, p3, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5, p6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->performItunesGet(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;

    const/16 v2, 0x64

    const-string v3, "error encoding parameters"

    invoke-direct {v1, v2, v3, v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAudioBookGenres(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

.method public getAudioBookLanguages(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

.method public getPopularCategories(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

.method public getPublisherFeeds(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

.method public getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

.method public getRecommendedFeeds(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

.method public getSampleContent(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

.method public getTrendingEpisodes(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # BeyondPod backend is dead; no-op stub
    return-void
.end method

# parseJSONResults: maps iTunes Search API fields to FeedSearchResult.
# iTunes field mapping:
#   trackName     -> Title (arg 0)
#   description   -> Description (arg 1)
#   feedUrl       -> Link / RSS URL (arg 2)
#   artworkUrl600 -> ImageUrl (fallback artworkUrl100) (arg 3)
#   kind          -> type (arg 4)
#   OriginatingFeed, EpisodeUrl, Language, TotalTime, pubDate -> null
.method public parseJSONResults(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    # Register layout (.locals 14):
    #   v0=ArrayList  v1=length  v2=counter  v3=JSONObject→FeedSearchResult
    #   v4=title  v5=desc  v6=link  v7=imageUrl  v8=type
    #   v9=temp(key/bool)  v10-v13=null trailing constructor args
    #   p0=v14(this)  p1=v15(JSONArray) — all within v0-v15 for non-range invokes
    #   Constructor: invoke-direct/range {v3..v13} = instance + 10 String args

    .line 257
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_end

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_end

    const/4 v2, 0x0

    :loop_start
    if-ge v2, v1, :cond_end

    .line 268
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    # --- Title: trackName ---
    const-string v9, "trackName"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :title_null

    const-string v9, "trackName"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :got_title

    :title_null
    const/4 v4, 0x0

    :got_title

    # --- Description ---
    const-string v9, "description"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :desc_null

    const-string v9, "description"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :got_desc

    :desc_null
    const/4 v5, 0x0

    :got_desc

    # --- Link: feedUrl ---
    const-string v9, "feedUrl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :link_null

    const-string v9, "feedUrl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :got_link

    :link_null
    const/4 v6, 0x0

    :got_link

    # --- ImageUrl: artworkUrl600, fallback artworkUrl100 ---
    const-string v9, "artworkUrl600"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :try_artwork100

    const-string v9, "artworkUrl600"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :got_image

    :try_artwork100
    const-string v9, "artworkUrl100"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :no_image

    const-string v9, "artworkUrl100"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :got_image

    :no_image
    const/4 v7, 0x0

    :got_image

    # --- type: kind ---
    const-string v9, "kind"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :type_null

    const-string v9, "kind"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :got_type

    :type_null
    const/4 v8, 0x0

    :got_type

    # Build FeedSearchResult(title, desc, link, imageUrl, type, null×5)
    # v4=title v5=desc v6=link v7=imageUrl v8=type
    # Overwrite v3 (JSONObject no longer needed) with new instance
    # Set v9-v13 to null for the 5 trailing constructor args

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v3, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    invoke-direct/range {v3 .. v13}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :loop_start

    :cond_end
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;

    const/16 v2, -0x64

    const-string v3, "Service Error"

    invoke-direct {v1, v2, v3, v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
