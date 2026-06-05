.class public Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;
.super Lcom/android/volley/toolbox/ImageRequest;
.source "ImageRequestFeed.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageRequestFeed"


# instance fields
.field mFeed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lmobi/beyondpod/rsscore/Feed;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct/range {p0 .. p6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 67
    iput-object p7, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method

.method private decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 7

    .line 185
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 189
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 190
    array-length v4, p1

    invoke-static {p1, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 191
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 192
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v5, p3, :cond_3

    if-ge v4, p2, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    iget p2, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mMaxWidth:I

    iget p3, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mMaxHeight:I

    invoke-static {p2, p3, v4, v5}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->getResizedDimension(IIII)I

    move-result p2

    .line 203
    iget p3, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mMaxHeight:I

    iget v6, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mMaxWidth:I

    invoke-static {p3, v6, v5, v4}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->getResizedDimension(IIII)I

    move-result p3

    .line 206
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 207
    invoke-static {v4, v5, p2, p3}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->findBestSampleSize(IIII)I

    move-result v4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 213
    :try_start_0
    array-length v4, p1

    invoke-static {p1, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 223
    :cond_1
    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p2

    :cond_2
    return-object p1

    .line 196
    :cond_3
    :goto_1
    sget-object p1, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "+++ Loaded image is too small - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for feed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 197
    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Ignoring..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 131
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 140
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 141
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v4, 0x0

    if-lt v3, p3, :cond_3

    if-ge v2, p2, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    iget p2, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mMaxWidth:I

    iget p3, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mMaxHeight:I

    invoke-static {p2, p3, v2, v3}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->getResizedDimension(IIII)I

    move-result p2

    .line 153
    iget p3, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mMaxHeight:I

    iget v5, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mMaxWidth:I

    invoke-static {p3, v5, v3, v2}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->getResizedDimension(IIII)I

    move-result p3

    const/4 v5, 0x0

    .line 156
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 157
    invoke-static {v2, v3, p2, p3}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->findBestSampleSize(IIII)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 164
    :try_start_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 173
    :cond_1
    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p2

    :cond_2
    return-object p1

    .line 145
    :cond_3
    :goto_1
    sget-object p1, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "+++ Loaded image is too small - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for feed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 146
    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Ignoring..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 145
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method protected doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const/16 v2, 0x2d

    invoke-direct {p0, v0, v2, v2}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 95
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v0, :cond_3

    .line 101
    iget-object v2, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->mFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v2}, Lmobi/beyondpod/ui/core/FeedImageCache;->getExistingFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v0, 0x14

    .line 107
    :try_start_1
    invoke-direct {p0, v2, v0, v0}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 118
    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 126
    :cond_3
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
