.class public Lmobi/beyondpod/ui/core/volley/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadEpisodeImage(Lmobi/beyondpod/rsscore/Track;II)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 25
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    new-instance p1, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;

    invoke-static {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->getEpisodeImageUrl(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 32
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v8

    move-object v0, p1

    move v3, v4

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    new-instance p1, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->generateFeedImageUrl(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 28
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v8

    move-object v0, p1

    move v3, v4

    invoke-direct/range {v0 .. v8}, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;)V

    .line 35
    :goto_1
    invoke-virtual {p1}, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->getEpisodeImageQuick()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static scaleBitmap(ILjava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2

    .line 47
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 51
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    .line 53
    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    int-to-double v0, p1

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    int-to-double p1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr p1, v2

    .line 39
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int p1, v1

    const/4 p2, 0x0

    .line 41
    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
