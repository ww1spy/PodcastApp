.class public Lmobi/beyondpod/ui/core/volley/NetworkNoOp;
.super Ljava/lang/Object;
.source "NetworkNoOp.java"

# interfaces
.implements Lcom/android/volley/Network;


# instance fields
.field _NoResponse:Lcom/android/volley/NetworkResponse;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/android/volley/NetworkResponse;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x194

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    iput-object v0, p0, Lmobi/beyondpod/ui/core/volley/NetworkNoOp;->_NoResponse:Lcom/android/volley/NetworkResponse;

    return-void
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 0
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

    .line 20
    iget-object p1, p0, Lmobi/beyondpod/ui/core/volley/NetworkNoOp;->_NoResponse:Lcom/android/volley/NetworkResponse;

    return-object p1
.end method
