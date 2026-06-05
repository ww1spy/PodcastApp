.class public Lmobi/beyondpod/ui/core/volley/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;
    }
.end annotation


# static fields
.field private static final DEFAULT_MEM_CACHE_PERCENT:F = 0.15f

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "BeyondPod.BitmapCache"

.field private static final TAG:Ljava/lang/String; = "BitmapCache"

.field private static _InstanceCount:I

.field private static final _syncLock:Ljava/lang/Object;


# instance fields
.field private _InstanceId:I

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_syncLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceId:I

    .line 54
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->init(I)V

    .line 55
    sget v0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceCount:I

    iput v0, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceId:I

    const-string v0, "BitmapCache"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap Memory Cache created (size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "KB). Instances: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static calculateMemCacheSize(F)I
    .locals 2

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p0, v0

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 183
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 193
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentManager;)Lmobi/beyondpod/ui/core/volley/BitmapCache;
    .locals 1

    const v0, 0x3e19999a    # 0.15f

    .line 100
    invoke-static {p0, v0}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->getInstance(Landroid/support/v4/app/FragmentManager;F)Lmobi/beyondpod/ui/core/volley/BitmapCache;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Landroid/support/v4/app/FragmentManager;F)Lmobi/beyondpod/ui/core/volley/BitmapCache;
    .locals 0

    .line 96
    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->calculateMemCacheSize(F)I

    move-result p1

    invoke-static {p0, p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->getInstance(Landroid/support/v4/app/FragmentManager;I)Lmobi/beyondpod/ui/core/volley/BitmapCache;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Landroid/support/v4/app/FragmentManager;I)Lmobi/beyondpod/ui/core/volley/BitmapCache;
    .locals 1

    const-string v0, "BeyondPod.BitmapCache"

    .line 92
    invoke-static {p0, v0, p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->getInstance(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;I)Lmobi/beyondpod/ui/core/volley/BitmapCache;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;I)Lmobi/beyondpod/ui/core/volley/BitmapCache;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 75
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->getRetainFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    .line 83
    new-instance p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;

    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/core/volley/BitmapCache;-><init>(I)V

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method private static getRetainFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;
    .locals 1

    .line 208
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;-><init>()V

    .line 213
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-object v0
.end method

.method private init(I)V
    .locals 1

    .line 108
    new-instance v0, Lmobi/beyondpod/ui/core/volley/BitmapCache$1;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache$1;-><init>(Lmobi/beyondpod/ui/core/volley/BitmapCache;I)V

    iput-object v0, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    return-void
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public evictAll()V
    .locals 4

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    .line 124
    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->evictAll()V

    const-string v1, "BitmapCache"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "KB of cached images from cache #"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 232
    sget v0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceCount:I

    const-string v0, "BitmapCache"

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap Memory Cache #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " finalized! Remaining instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_1

    .line 155
    sget-object v0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->_syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 159
    monitor-exit v0

    return-object p1

    .line 161
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 226
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
