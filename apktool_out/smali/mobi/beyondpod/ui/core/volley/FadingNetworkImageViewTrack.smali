.class public Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;
.super Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;
.source "FadingNetworkImageViewTrack.java"


# instance fields
.field private mRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

.field private mTrack:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static generateItemImageUrl(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Ljava/lang/String;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isItemImageUsingParentFeedImage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->selectedItemImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemImageUrls()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemImageUrls()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    :cond_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setSelectedItemImageUrlToUseParentFeedImage()V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setSelectedItemImageUrl(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultImage(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 129
    :pswitch_0
    sget p0, Lmobi/beyondpod/R$drawable;->podcast_list_image_bg:I

    return p0

    .line 127
    :pswitch_1
    sget p0, Lmobi/beyondpod/R$drawable;->podcast_list_movie_bg:I

    return p0

    .line 125
    :pswitch_2
    sget p0, Lmobi/beyondpod/R$drawable;->podcast_list_audio_bg:I

    return p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEpisodeImageUrl(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;
    .locals 3

    const-string v0, "episode://%s"

    const/4 v1, 0x1

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getImageContainer()Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 8

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-object v1, v0

    check-cast v1, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    iget-object v2, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mTrack:Lmobi/beyondpod/rsscore/Track;

    iget-object v4, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    iget-object v5, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    iget v6, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mMaxImageWidth:I

    iget v7, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mMaxImageHeight:I

    invoke-virtual/range {v1 .. v7}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->get(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method protected imageError(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setSelectedItemImageUrlToUseParentFeedImage()V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->imageError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public setRssItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 66
    iput-object p2, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 68
    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->generateItemImageUrl(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    iget-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->generateFeedImageUrl(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_0
    invoke-super {p0, p1, p3}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setImageUrl(Ljava/lang/String;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    return-void
.end method

.method public setTrack(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 1

    .line 58
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mTrack:Lmobi/beyondpod/rsscore/Track;

    .line 59
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 60
    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->getEpisodeImageUrl(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setImageUrl(Ljava/lang/String;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    return-void
.end method
