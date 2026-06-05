.class public Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;
.super Lmobi/beyondpod/ui/core/volley/ImageLoader;
.source "ImageLoaderTrack.java"


# static fields
.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x3200000


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 47
    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->getInstance(Landroid/support/v4/app/FragmentManager;)Lmobi/beyondpod/ui/core/volley/BitmapCache;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/core/volley/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 3

    .line 56
    new-instance p0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 58
    new-instance v0, Lcom/android/volley/RequestQueue;

    new-instance v1, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheBP;

    const/high16 v2, 0x3200000

    invoke-direct {v1, v2}, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheBP;-><init>(I)V

    new-instance v2, Lmobi/beyondpod/ui/core/volley/NetworkTrack;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/core/volley/NetworkTrack;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 60
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v7, p4

    .line 69
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->throwIfNotOnMainThread()V

    move/from16 v10, p5

    move/from16 v11, p6

    .line 71
    invoke-static {v15, v10, v11}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    .line 74
    iget-object v0, v6, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->mCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, v14}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    .line 78
    new-instance v9, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, v6

    move-object v3, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 79
    invoke-interface {v7, v9, v8}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-object v9

    .line 84
    :cond_0
    new-instance v13, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    move-object v0, v13

    move-object v1, v6

    move-object v3, v15

    move-object v4, v14

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 88
    invoke-interface {v7, v13, v8}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 91
    iget-object v0, v6, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0, v13}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    return-object v13

    .line 104
    :cond_1
    new-instance v0, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;

    new-instance v9, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$1;

    invoke-direct {v9, v6, v14}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$1;-><init>(Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;Ljava/lang/String;)V

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v1, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$2;

    invoke-direct {v1, v6, v14}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$2;-><init>(Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;Ljava/lang/String;)V

    move-object v7, v0

    move-object v8, v15

    move-object v2, v13

    move-object v13, v1

    move-object v1, v14

    move-object/from16 v14, p2

    move-object v3, v15

    move-object/from16 v15, p3

    invoke-direct/range {v7 .. v15}, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;)V

    const-string v4, "episode://"

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 123
    iget-object v3, v6, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 124
    iget-object v3, v6, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v4, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    invoke-direct {v4, v6, v0, v2}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/android/volley/toolbox/ImageLoader;Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method
