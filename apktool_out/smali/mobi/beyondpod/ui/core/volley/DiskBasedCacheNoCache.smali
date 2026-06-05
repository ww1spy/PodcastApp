.class public Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoCache;
.super Ljava/lang/Object;
.source "DiskBasedCacheNoCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field _DummyEntry:Lcom/android/volley/Cache$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheBP;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 40
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initialize()V
    .locals 2

    .line 52
    sget-object v0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoCache;->TAG:Ljava/lang/String;

    const-string v1, "Using \'No-Cache\' disk image cache..."

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
