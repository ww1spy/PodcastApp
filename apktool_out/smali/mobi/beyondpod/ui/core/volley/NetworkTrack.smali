.class public Lmobi/beyondpod/ui/core/volley/NetworkTrack;
.super Lcom/android/volley/toolbox/BasicNetwork;
.source "NetworkTrack.java"


# instance fields
.field _NoResponse:Lcom/android/volley/NetworkResponse;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 4

    .line 37
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 40
    new-instance p1, Lcom/android/volley/NetworkResponse;

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x194

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v0, v3}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/NetworkTrack;->_NoResponse:Lcom/android/volley/NetworkResponse;

    return-void
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "episode://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/BasicNetwork;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object p1

    return-object p1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/core/volley/NetworkTrack;->_NoResponse:Lcom/android/volley/NetworkResponse;

    return-object p1
.end method
