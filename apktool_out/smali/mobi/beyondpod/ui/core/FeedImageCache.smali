.class public Lmobi/beyondpod/ui/core/FeedImageCache;
.super Ljava/lang/Object;
.source "FeedImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/core/FeedImageCache$FeedCachePublisher;
    }
.end annotation


# static fields
.field public static CacheSize:I = 0x28

.field public static DefaultImageHeight:I = 0x2e

.field public static DefaultImageWidth:I = 0x2e

.field public static PREFETCH_QUEUE_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FeedImageCache"

.field private static final _DefaultBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field public static _DownloadedImageSize_height:I = 0x12c

.field public static _DownloadedImageSize_width:I = 0x12c

.field private static final _FeedImageCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/core/FeedImageCache;->_DefaultBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssImageCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/ui/core/FeedImageCache;->_FeedImageCacheDir:Ljava/io/File;

    .line 61
    sget-object v0, Lmobi/beyondpod/ui/core/FeedImageCache;->_DefaultBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$drawable;->default_feed_image:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lmobi/beyondpod/ui/core/FeedImageCache;->DefaultImageWidth:I

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sput v0, Lmobi/beyondpod/ui/core/FeedImageCache;->DefaultImageHeight:I

    .line 70
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$integer;->FeedDownloadImage_px_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lmobi/beyondpod/ui/core/FeedImageCache;->_DownloadedImageSize_width:I

    .line 71
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$integer;->FeedDownloadImage_px_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lmobi/beyondpod/ui/core/FeedImageCache;->_DownloadedImageSize_height:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteCustomImageForFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 363
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getCustomFeedImageFileName(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->deleteFileIfExists(Ljava/lang/String;)Z

    return-void
.end method

.method public static deleteImageCacheFor(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 104
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->deleteFileIfExists(Ljava/lang/String;)Z

    return-void
.end method

.method public static deleteImageCacheForAllFeeds()I
    .locals 9

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssImageCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 118
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 122
    sget-object v6, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to delete image for feed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reason: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public static formatTempImageForFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getTempFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/io/File;

    move-result-object v0

    .line 308
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/beyondpod/ui/core/FeedImageCache;->_DownloadedImageSize_width:I

    sget v3, Lmobi/beyondpod/ui/core/FeedImageCache;->_DownloadedImageSize_height:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lmobi/beyondpod/ui/core/FeedImageCache;->loadAsSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 314
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 321
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 322
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 323
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 332
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 327
    :try_start_3
    sget-object v3, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save temp image for feed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 339
    sget-object v1, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to format temp image for feed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private static getCustomFeedImageFileName(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s/.feedimage"

    const/4 v1, 0x1

    .line 174
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultImage(Lmobi/beyondpod/rsscore/Feed;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 86
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getDefaultImageResId(Lmobi/beyondpod/rsscore/Feed;)I

    move-result p0

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultImageResId(Lmobi/beyondpod/rsscore/Feed;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 92
    sget p0, Lmobi/beyondpod/R$drawable;->default_greader_feed_image:I

    return p0

    .line 94
    :cond_0
    sget p0, Lmobi/beyondpod/R$drawable;->default_feed_image:I

    return p0
.end method

.method public static getExistingFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 152
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getCustomFeedImageFileName(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 156
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmobi/beyondpod/ui/core/FeedImageCache;->getFeedImageFileName(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_2
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private static getFeedImageFileName(Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 5

    const-string v0, "%s/%s_%x%s.img"

    const/4 v1, 0x4

    .line 167
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lmobi/beyondpod/ui/core/FeedImageCache;->_FeedImageCacheDir:Ljava/io/File;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 168
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "unknownimagehost"

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x3

    if-eqz p1, :cond_1

    const-string p1, "temp"

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    aput-object p1, v1, p0

    .line 167
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFeedImageFor(Lmobi/beyondpod/rsscore/Feed;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 189
    :try_start_0
    sget v0, Lmobi/beyondpod/ui/core/FeedImageCache;->DefaultImageWidth:I

    sget v1, Lmobi/beyondpod/ui/core/FeedImageCache;->DefaultImageHeight:I

    invoke-static {p0, v0, v1}, Lmobi/beyondpod/ui/core/FeedImageCache;->getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load image for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "! reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getDefaultImage(Lmobi/beyondpod/rsscore/Feed;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 141
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getCustomFeedImageFileName(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getFeedImageFileName(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_2
    :goto_0
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getCustomFeedImageFileName(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 206
    :try_start_0
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    .line 211
    invoke-static {v1, p1, p2, v2}, Lmobi/beyondpod/ui/core/FeedImageCache;->loadAsSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 216
    sget-object p2, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load Sized image for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "! reason:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTempFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/io/File;
    .locals 2

    if-eqz p0, :cond_1

    .line 179
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lmobi/beyondpod/ui/core/FeedImageCache;->getFeedImageFileName(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasCachedImageFor(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 0

    .line 132
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasCustomImageForFeed(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 0

    .line 345
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getCustomFeedImageFileName(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasImageToDownload(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->hasCachedImageFor(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasOriginalImage(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 1

    .line 368
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getCustomFeedImageFileName(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getFeedImagePath(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p0

    .line 371
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 374
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static loadAsSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 226
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 229
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 230
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-lez p1, :cond_6

    if-gtz p2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 240
    :try_start_0
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 241
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 243
    sget-object v3, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resizing image from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, 0x0

    if-gt v3, p1, :cond_2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v3, p2, :cond_2

    if-nez p3, :cond_2

    .line 247
    sget-object p1, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    const-string p2, "Resizing image is smaller then required and we are not allowed to scale up! Using the original image."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 250
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 255
    :cond_2
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr p3, v2

    .line 256
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v3, v2

    move v5, v2

    :goto_0
    if-le p3, p1, :cond_3

    if-le v3, p2, :cond_3

    shl-int/lit8 v5, v5, 0x1

    shr-int/lit8 p3, p3, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :cond_3
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 265
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 267
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_7

    .line 271
    :try_start_1
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne p3, p1, :cond_4

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p3, p2, :cond_7

    .line 273
    :cond_4
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p2, p2

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    int-to-float p3, p1

    div-float/2addr p3, p2

    float-to-int p2, p3

    .line 276
    invoke-static {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_5

    .line 278
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    move-object p0, p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_2

    .line 237
    :cond_6
    :goto_1
    :try_start_2
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-object p0, v1

    .line 290
    :catch_2
    sget-object p1, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    const-string p2, "Unable to load feed Image. OutOfMemory error!"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception p0

    .line 286
    :goto_2
    sget-object p1, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    const-string p2, "Unable to load feed Image"

    invoke-static {p1, p2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v1

    :cond_7
    :goto_3
    return-object p0
.end method

.method public static setCustomFeedImage(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;)V
    .locals 1

    .line 352
    :try_start_0
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->deleteCustomImageForFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 353
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getCustomFeedImageFileName(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 357
    sget-object p1, Lmobi/beyondpod/ui/core/FeedImageCache;->TAG:Ljava/lang/String;

    const-string v0, "Unable to copy feed image"

    invoke-static {p1, v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
