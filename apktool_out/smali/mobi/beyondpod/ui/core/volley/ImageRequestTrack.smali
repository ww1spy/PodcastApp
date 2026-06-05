.class public Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;
.super Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;
.source "ImageRequestTrack.java"


# static fields
.field private static final IMAGE_EXPIRATION_IN_DAYS_URL_FEED:J = 0x337f9800L

.field private static final IMAGE_EXPIRATION_IN_DAYS_VIR_FEED:J = 0x9a7ec800L

.field private static final TAG:Ljava/lang/String; = "ImageRequestTrack"


# instance fields
.field private final mTrack:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lmobi/beyondpod/rsscore/Track;",
            "Lmobi/beyondpod/rsscore/Feed;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    .line 73
    invoke-direct/range {v0 .. v7}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lmobi/beyondpod/rsscore/Feed;)V

    move-object v1, p7

    .line 74
    iput-object v1, v0, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->mTrack:Lmobi/beyondpod/rsscore/Track;

    return-void
.end method

.method private setResponseExpiration(Lcom/android/volley/Response;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;J)V"
        }
    .end annotation

    .line 150
    iget-object v0, p1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v3, v1, p2

    iput-wide v3, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 153
    iget-object p2, p1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    iget-object p1, p1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    iget-wide v0, p1, Lcom/android/volley/Cache$Entry;->ttl:J

    iput-wide v0, p2, Lcom/android/volley/Cache$Entry;->softTtl:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

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

    .line 88
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 89
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "episode://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 98
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->mTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->ensureTrackHasContentType()V

    .line 99
    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->mTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 101
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->mTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 107
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->useFeedAlbumArtForEpisodes()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 110
    :cond_2
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 111
    iget-object v4, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->mTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 116
    new-instance v4, Lcom/android/volley/NetworkResponse;

    invoke-direct {v4, v1}, Lcom/android/volley/NetworkResponse;-><init>([B)V

    invoke-super {p0, v4}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/android/volley/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    const-wide v2, 0x9a7ec800L

    goto :goto_1

    :cond_3
    const-wide/32 v2, 0x337f9800

    .line 122
    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->setResponseExpiration(Lcom/android/volley/Response;J)V

    return-object v1

    .line 128
    :cond_4
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    iget-object v3, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->mTrack:Lmobi/beyondpod/rsscore/Track;

    iget v4, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->mMaxWidth:I

    iget v5, p0, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->mMaxHeight:I

    invoke-static {v1, v3, v4, v5, v2}, Lmobi/beyondpod/ui/core/MusicUtils;->getAudioArtwork(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;III)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 138
    sget-object v2, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to retrieve episode image! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_5

    .line 142
    invoke-static {v1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 144
    :cond_5
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 90
    :cond_6
    :goto_4
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/core/volley/ImageRequestFeed;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getEpisodeImageQuick()Landroid/graphics/Bitmap;
    .locals 2

    .line 79
    new-instance v0, Lcom/android/volley/NetworkResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/volley/NetworkResponse;-><init>([B)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/core/volley/ImageRequestTrack;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
