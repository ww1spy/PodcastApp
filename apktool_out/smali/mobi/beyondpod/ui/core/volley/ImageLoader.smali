.class public Lmobi/beyondpod/ui/core/volley/ImageLoader;
.super Lcom/android/volley/toolbox/ImageLoader;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    .line 32
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->init()V

    return-void
.end method


# virtual methods
.method public evictAll()V
    .locals 1

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/ImageLoader;->mCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/ImageLoader;->mCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    check-cast v0, Lmobi/beyondpod/ui/core/volley/BitmapCache;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 57
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method protected init()V
    .locals 1

    const-string v0, "BeyondPod"

    .line 37
    invoke-static {v0}, Lcom/android/volley/VolleyLog;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 62
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    return-void
.end method
