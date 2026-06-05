.class public Lmobi/beyondpod/ui/views/impexp/FeedSearchService;
.super Ljava/lang/Object;
.source "FeedSearchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/FeedSearchService$RequestFilter;,
        Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
    }
.end annotation


# static fields
.field private static final CLIENT_VERSION:I = 0x1

.field static _PatchTag:Ljava/lang/String; = "http://az412796.vo.msecnd.net/regs/"

.field static _PatchTagPubs:Ljava/lang/String; = "http://az412796.vo.msecnd.net/pubs/"


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

.method private patchImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 298
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->_PatchTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->_PatchTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flag_"

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->_PatchTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->_PatchTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private performGet(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
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

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->rootUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 185
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "?"

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&"

    .line 195
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 200
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;

    const/16 p3, 0x64

    const-string p4, "error encoding parameters"

    invoke-direct {p2, p3, p4, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 205
    :cond_2
    :goto_2
    new-instance p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, p3, p4}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;-><init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchService;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 222
    new-instance p2, Lcom/android/volley/DefaultRetryPolicy;

    const/16 p3, 0x1388

    const/4 p4, 0x2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p2, p3, p4, v0}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p1, p2}, Lcom/android/volley/toolbox/JsonArrayRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 223
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p2, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

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
    .locals 4
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

    const-string v0, "audiobookcategories"

    const/16 v1, 0x8

    .line 110
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "genre"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-nez p1, :cond_0

    const-string p1, "*"

    :cond_0
    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "language"

    aput-object v2, v1, p1

    const/4 p1, 0x3

    if-nez p2, :cond_1

    const-string p2, "*"

    :cond_1
    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, "start"

    aput-object p2, v1, p1

    const/4 p1, 0x5

    mul-int/2addr p3, p4

    .line 111
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x6

    const-string p2, "take"

    aput-object p2, v1, p1

    const/4 p1, 0x7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    .line 110
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1, p5, p6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public findByAudioBookQuery(Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
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

    const-string v0, "audiobooksearch"

    const/4 v1, 0x6

    .line 103
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "query"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "start"

    const/4 v2, 0x2

    aput-object p1, v1, v2

    mul-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "take"

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 104
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    .line 103
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1, p4, p5}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public findByPopularCategory(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
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

    const-string v0, "feedcategories"

    const/16 v1, 0x8

    .line 84
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "category"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-nez p1, :cond_0

    const-string p1, "*"

    :cond_0
    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "type"

    aput-object v2, v1, p1

    const/4 p1, 0x3

    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, "start"

    aput-object p2, v1, p1

    const/4 p1, 0x5

    mul-int/2addr p3, p4

    .line 85
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x6

    const-string p2, "take"

    aput-object p2, v1, p1

    const/4 p1, 0x7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    .line 84
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1, p5, p6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public findByQuery(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
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

    const-string v0, "feedsearch"

    const/16 v1, 0x8

    .line 96
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "query"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "type"

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object p2, v1, p1

    const-string p1, "start"

    const/4 p2, 0x4

    aput-object p1, v1, p2

    mul-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const-string p1, "take"

    const/4 p2, 0x6

    aput-object p1, v1, p2

    .line 97
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    .line 96
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1, p5, p6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getAudioBookGenres(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
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

    const-string v0, "audiobookmeta"

    const-string v1, "type"

    const-string v2, "genres"

    .line 150
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetStrings(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getAudioBookLanguages(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
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

    const-string v0, "audiobookmeta"

    const-string v1, "type"

    const-string v2, "languages"

    .line 155
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetStrings(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getPopularCategories(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
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

    const-string v0, "feedcategoriesmeta"

    const-string v1, "type"

    const-string v2, "feed"

    .line 90
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetStrings(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getPublisherFeeds(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
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

    const-string v0, "publisherFeeds"

    const/16 v1, 0x8

    .line 144
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pid"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "type"

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object p2, v1, p1

    const-string p1, "start"

    const/4 p2, 0x4

    aput-object p1, v1, p2

    mul-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const-string p1, "take"

    const/4 p2, 0x6

    aput-object p1, v1, p2

    .line 145
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    .line 144
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1, p5, p6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
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

    const-string v0, "feedPublishers"

    const/4 v1, 0x6

    .line 137
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "type"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "start"

    const/4 v2, 0x2

    aput-object p1, v1, v2

    mul-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "take"

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 138
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    .line 137
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1, p4, p5}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getRecommendedFeeds(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
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

    const-string v0, "recommendedFeeds"

    const/16 v1, 0x8

    .line 124
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "userfeeds"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "type"

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object p2, v1, p1

    const-string p1, "start"

    const/4 p2, 0x4

    aput-object p1, v1, p2

    mul-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const-string p1, "take"

    const/4 p2, 0x6

    aput-object p1, v1, p2

    .line 125
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    .line 124
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1, p5, p6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getSampleContent(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
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

    const-string v0, "sampleContent"

    const/4 v1, 0x4

    .line 131
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "cids"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "take"

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 132
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 131
    invoke-direct {p0, v0, p1, p3, p4}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public getTrendingEpisodes(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
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

    const-string v0, "trendingEpisodes"

    const/16 v1, 0x8

    .line 117
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "userfeeds"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "type"

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object p2, v1, p1

    const-string p1, "start"

    const/4 p2, 0x4

    aput-object p1, v1, p2

    mul-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const-string p1, "take"

    const/4 p2, 0x6

    aput-object p1, v1, p2

    .line 118
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    .line 117
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1, p5, p6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->queryGetFeeds(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public parseJSONResults(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 20
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

    move-object/from16 v1, p1

    .line 257
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    if-eqz v1, :cond_b

    .line 265
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_b

    .line 268
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 270
    new-instance v15, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    const-string v6, "Title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    const-string v6, "Title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    :goto_1
    const-string v6, "Description"

    .line 271
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v9, v7

    goto :goto_2

    :cond_2
    const-string v6, "Description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    :goto_2
    const-string v6, "Link"

    .line 272
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v10, v7

    goto :goto_3

    :cond_3
    const-string v6, "Link"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    :goto_3
    const-string v6, "ImageUrl"

    .line 273
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v14, p0

    move-object v11, v7

    goto :goto_4

    :cond_4
    const-string v6, "ImageUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v14, p0

    invoke-direct {v14, v6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->patchImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    :goto_4
    const-string v6, "type"

    .line 274
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v12, v7

    goto :goto_5

    :cond_5
    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    :goto_5
    const-string v6, "OriginatingFeed"

    .line 275
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v13, v7

    goto :goto_6

    :cond_6
    const-string v6, "OriginatingFeed"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    :goto_6
    const-string v6, "EpisodeUrl"

    .line 276
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v16, v7

    goto :goto_7

    :cond_7
    const-string v6, "EpisodeUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    :goto_7
    const-string v6, "Language"

    .line 277
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v17, v7

    goto :goto_8

    :cond_8
    const-string v6, "Language"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    :goto_8
    const-string v6, "TotalTime"

    .line 278
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v18, v7

    goto :goto_9

    :cond_9
    const-string v6, "TotalTime"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    :goto_9
    const-string v6, "pubDate"

    .line 279
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v5, v7

    goto :goto_a

    :cond_a
    const-string v6, "pubDate"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_a
    move-object v6, v15

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object v1, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v5

    invoke-direct/range {v6 .. v16}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_b
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 287
    new-instance v2, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;

    const/16 v3, -0x64

    const-string v4, "Service Error"

    invoke-direct {v2, v3, v4, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
