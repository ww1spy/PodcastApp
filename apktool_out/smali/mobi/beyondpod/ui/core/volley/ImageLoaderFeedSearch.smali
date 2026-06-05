.class public Lmobi/beyondpod/ui/core/volley/ImageLoaderFeedSearch;
.super Lmobi/beyondpod/ui/core/volley/ImageLoader;
.source "ImageLoaderFeedSearch.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 13
    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeedSearch;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->getInstance(Landroid/support/v4/app/FragmentManager;)Lmobi/beyondpod/ui/core/volley/BitmapCache;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/core/volley/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 3

    .line 17
    new-instance p0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 19
    new-instance v0, Lcom/android/volley/RequestQueue;

    new-instance v1, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoCache;

    invoke-direct {v1}, Lmobi/beyondpod/ui/core/volley/DiskBasedCacheNoCache;-><init>()V

    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v2, p0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 20
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    return-object v0
.end method
