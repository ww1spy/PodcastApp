.class public Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;
.super Lmobi/beyondpod/aggregators/RequestBase;
.source "FRequestEditRead.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FRequestEditRead"

.field public static final TAG_READ:Ljava/lang/String; = "markAsRead"

.field public static final TAG_UNREAD:Ljava/lang/String; = "keepUnread"


# instance fields
.field ItemIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Tag:Ljava/lang/String;

.field _HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/aggregators/RequestBase;-><init>()V

    .line 45
    iput-object p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->ItemIDs:Ljava/util/ArrayList;

    .line 46
    iput-object p2, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->Tag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_RetryCount:I

    return-void
.end method


# virtual methods
.method public httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;
    .locals 8

    .line 66
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    return-object v0

    .line 69
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    .line 70
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->EditMarkerURL:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpPost(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    const-string v1, "*/*"

    invoke-static {v0, v1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->ItemIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v6, 0x7c

    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    .line 85
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v4, "\"%s\""

    .line 91
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_0

    .line 97
    :cond_2
    sget-object v5, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid item id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v1, "{\"action\": \"%s\",\"type\": \"entries\",\"entryIds\": [%s]}"

    const/4 v3, 0x2

    .line 104
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->Tag:Ljava/lang/String;

    aput-object v4, v3, v2

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 104
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->blockingGetAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAuthorizationTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 111
    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v1, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->setPostString(Ljava/lang/String;)V

    .line 114
    :cond_5
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    return-object v0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OK"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 56
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_RequestStatus:I

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 60
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->_RequestStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operation:  Tag: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->Tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] For ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;->ItemIDs:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
