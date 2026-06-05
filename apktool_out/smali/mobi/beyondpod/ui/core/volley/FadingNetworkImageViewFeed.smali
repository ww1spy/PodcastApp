.class public Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;
.super Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;
.source "FadingNetworkImageViewFeed.java"


# instance fields
.field protected mFeed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method

.method public static generateFeedImageUrl(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;
    .locals 3

    .line 44
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getExistingFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "file://%s"

    const/4 v1, 0x1

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected getImageContainer()Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 7

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-object v1, v0

    check-cast v1, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    iget-object v2, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    iget-object v4, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->mImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    iget v5, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->mMaxImageWidth:I

    iget v6, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->mMaxImageHeight:I

    invoke-virtual/range {v1 .. v6}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->get(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method protected imageError(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->imageError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public setFeed(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 39
    iget-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->generateFeedImageUrl(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setImageUrl(Ljava/lang/String;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    return-void
.end method
