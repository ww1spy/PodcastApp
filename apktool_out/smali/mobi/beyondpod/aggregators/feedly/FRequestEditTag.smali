.class public Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;
.super Lmobi/beyondpod/aggregators/RequestBase;
.source "FRequestEditTag.java"


# static fields
.field public static final OPERATION_TAG:I = 0x0

.field public static final OPERATION_UNTAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FRequestEditTag"


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

.field _Operation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lmobi/beyondpod/aggregators/RequestBase;-><init>()V

    .line 48
    iput-object p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->ItemIDs:Ljava/util/ArrayList;

    .line 49
    iput p2, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_Operation:I

    .line 50
    iput-object p3, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->Tag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_RetryCount:I

    return-void
.end method


# virtual methods
.method public httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;
    .locals 8

    .line 70
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    return-object v0

    .line 73
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->ItemIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v6, 0x7c

    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_3

    .line 87
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    .line 91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_1
    iget v4, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_Operation:I

    if-nez v4, :cond_2

    const-string v4, "\"%s\""

    .line 94
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v3, v5

    goto :goto_0

    .line 102
    :cond_3
    sget-object v5, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid item id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_5
    iget v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_Operation:I

    if-nez v1, :cond_6

    .line 111
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->EditTagURL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->userStream()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->Tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "{\"entryIds\": [%s]}"

    .line 112
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 116
    iget-object v2, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpPut(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-interface {v1, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->setPutString(Ljava/lang/String;)V

    goto :goto_2

    .line 122
    :cond_6
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->EditTagURL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->userStream()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->Tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpDelete(Ljava/lang/String;)V

    .line 127
    :cond_7
    :goto_2
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    const-string v1, "*/*"

    invoke-static {v0, v1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->blockingGetAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAuthorizationTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_HttpClient:Lmobi/beyondpod/downloadengine/IHttpClient;

    return-object v0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OK"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 60
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_RequestStatus:I

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 64
    iput p1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_RequestStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->_Operation:I

    if-nez v1, :cond_0

    const-string v1, "[TAG]"

    goto :goto_0

    :cond_0
    const-string v1, "[UNTAG]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Tag: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->Tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] For ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;->ItemIDs:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
