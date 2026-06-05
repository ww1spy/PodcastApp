.class public Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;
.super Lmobi/beyondpod/ui/core/volley/ImageLoader;
.source "ImageLoaderFeed.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageLoaderFeed"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 47
    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->getInstance(Landroid/support/v4/app/FragmentManager;)Lmobi/beyondpod/ui/core/volley/BitmapCache;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/core/volley/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->setBatchedResponseDelay(I)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 2

    .line 53
    new-instance p0, Lcom/android/volley/RequestQueue;

    new-instance v0, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoOp;-><init>()V

    new-instance v1, Lmobi/beyondpod/ui/core/volley/NetworkNoOp;

    invoke-direct {v1}, Lmobi/beyondpod/ui/core/volley/NetworkNoOp;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->start()V

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    .line 62
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->throwIfNotOnMainThread()V

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p5

    .line 64
    invoke-static {v8, v10, v11}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 67
    iget-object v0, v6, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->mCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, v15}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    .line 72
    new-instance v10, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, v6

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 73
    invoke-interface {v7, v10, v9}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-object v10

    .line 78
    :cond_0
    new-instance v14, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    move-object v0, v14

    move-object v1, v6

    move-object v3, v8

    move-object v4, v15

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 82
    invoke-interface {v7, v14, v9}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 85
    iget-object v0, v6, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, v14}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    return-object v14

    .line 97
    :cond_1
    new-instance v0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;

    new-instance v9, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed$1;

    invoke-direct {v9, v6, v15}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed$1;-><init>(Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;Ljava/lang/String;)V

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v13, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed$2;

    invoke-direct {v13, v6, v15}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed$2;-><init>(Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;Ljava/lang/String;)V

    move-object v7, v0

    move-object v1, v14

    move-object/from16 v14, p2

    invoke-direct/range {v7 .. v14}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lmobi/beyondpod/rsscore/Feed;)V

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 117
    iget-object v2, v6, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 118
    iget-object v2, v6, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v3, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    invoke-direct {v3, v6, v0, v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/android/volley/toolbox/ImageLoader;Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
