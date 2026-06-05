.class public Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;
.super Ljava/lang/Object;
.source "DiskBasedCacheNoOp.java"

# interfaces
.implements Lcom/android/volley/Cache;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _DummyEntry:Lcom/android/volley/Cache$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheBP;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;->_DummyEntry:Lcom/android/volley/Cache$Entry;

    .line 36
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;->_DummyEntry:Lcom/android/volley/Cache$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;->_DummyEntry:Lcom/android/volley/Cache$Entry;

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 38
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;->_DummyEntry:Lcom/android/volley/Cache$Entry;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 39
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;->_DummyEntry:Lcom/android/volley/Cache$Entry;

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 40
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;->_DummyEntry:Lcom/android/volley/Cache$Entry;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 0

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object p1, p0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;->_DummyEntry:Lcom/android/volley/Cache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initialize()V
    .locals 2

    .line 60
    sget-object v0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;->TAG:Ljava/lang/String;

    const-string v1, "Using dummy disk image cache..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 0

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
