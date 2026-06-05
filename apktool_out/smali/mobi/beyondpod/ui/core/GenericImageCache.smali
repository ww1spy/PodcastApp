.class public Lmobi/beyondpod/ui/core/GenericImageCache;
.super Ljava/lang/Object;
.source "GenericImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenericImageCache"


# instance fields
.field private final _CacheName:Ljava/lang/String;

.field private final _HardBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final _SoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 7

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_CacheName:Ljava/lang/String;

    .line 26
    new-instance p2, Lmobi/beyondpod/ui/core/GenericImageCache$1;

    div-int/lit8 v6, p1, 0x2

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    move-object v0, p2

    move-object v1, p0

    move v2, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/ui/core/GenericImageCache$1;-><init>(Lmobi/beyondpod/ui/core/GenericImageCache;IFZI)V

    iput-object p2, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    .line 46
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_SoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/core/GenericImageCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 10
    iget-object p0, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_SoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 92
    iget-object v0, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_SoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 93
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public getDrawableFromCache(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 116
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit v1

    return-object v2

    .line 127
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v1, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_SoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    return-object v1

    .line 141
    :cond_2
    iget-object v1, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_SoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    .line 127
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public purgeHardCache()V
    .locals 6

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    iget-object v3, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_SoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putDrawableToCache(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public removeImage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_HardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lmobi/beyondpod/ui/core/GenericImageCache;->_SoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 167
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
