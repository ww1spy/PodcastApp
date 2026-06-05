.class public Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;
.super Ljava/lang/Object;
.source "MediaAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/MediaAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationState"
.end annotation


# static fields
.field private static _AlbumArt:Landroid/graphics/Bitmap;

.field private static _AlbumArtBig:Landroid/graphics/Bitmap;

.field private static _AlbumArtXBig:Landroid/graphics/Bitmap;

.field private static _trackBigHash:I

.field private static _trackHash:I

.field private static _trackXBigHash:I


# instance fields
.field public artist:Ljava/lang/CharSequence;

.field public infoMessage:Ljava/lang/CharSequence;

.field public nextVisibility:I

.field public playPauseResource:I

.field public playlistSize:Ljava/lang/CharSequence;

.field public progressResource:I

.field public streamVisibility:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;
    .locals 0

    .line 596
    invoke-static {p0, p1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->getBigBitmapForTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;
    .locals 0

    .line 596
    invoke-static {p0, p1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->getSmallBitmapForTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static buildFromTrack(Lmobi/beyondpod/rsscore/Track;ZLandroid/content/Context;)Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;
    .locals 10

    .line 613
    new-instance v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;-><init>()V

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_a

    .line 620
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    .line 621
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v5

    .line 623
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getLeftTruncateLongTrackNames()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 625
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/16 v6, 0x1f

    goto :goto_0

    :cond_0
    const/16 v6, 0x14

    .line 628
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_1

    .line 630
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 636
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 637
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result v6

    const/16 v7, 0x64

    if-ge v6, v7, :cond_2

    .line 638
    invoke-static {}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->access$200()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 639
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    .line 640
    invoke-static {}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->access$300()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 641
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v6

    if-ne v6, v1, :cond_4

    .line 642
    invoke-static {}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->access$400()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    if-nez p1, :cond_5

    .line 646
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 649
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u2022 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-static {p2, p0}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    const-string p2, ""

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 655
    :goto_3
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p1, 0x0

    .line 656
    invoke-static {p1}, Lmobi/beyondpod/services/player/ChromecastUtils;->buildCastingToTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 659
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result p2

    invoke-static {p2}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->getProgressResource(F)I

    move-result p2

    iput p2, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->progressResource:I

    .line 661
    iput-object v5, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    .line 662
    iput-object p1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    .line 664
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result p1

    .line 665
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result p2

    sub-int/2addr p1, p2

    if-lez p1, :cond_9

    .line 667
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    const-string p1, ""

    :goto_5
    iput-object p1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_a
    const p1, 0x7f080066

    .line 671
    iput p1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->progressResource:I

    const-string p1, ""

    .line 672
    iput-object p1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->infoMessage:Ljava/lang/CharSequence;

    const-string p1, ""

    .line 673
    iput-object p1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    .line 674
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->isConfigured()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->access$500()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_b
    const-string p1, ""

    :goto_6
    iput-object p1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    .line 676
    invoke-static {}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->access$600()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    :goto_7
    if-eqz p0, :cond_c

    .line 680
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result p1

    if-ne p1, v3, :cond_c

    goto :goto_8

    :cond_c
    move v3, v2

    :goto_8
    if-eqz v3, :cond_d

    const p1, 0x7f080064

    .line 683
    iput p1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playPauseResource:I

    goto :goto_9

    :cond_d
    const p1, 0x7f080065

    .line 687
    iput p1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playPauseResource:I

    :goto_9
    if-eqz p0, :cond_e

    .line 690
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result p0

    if-nez p0, :cond_e

    move v1, v2

    :cond_e
    iput v1, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->streamVisibility:I

    return-object v0
.end method

.method private static getBigBitmapForTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;
    .locals 3

    .line 805
    sget v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_trackBigHash:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 807
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_trackBigHash:I

    .line 808
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    .line 810
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 812
    sput-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtBig:Landroid/graphics/Bitmap;

    .line 813
    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/core/volley/ImageUtils;->loadEpisodeImage(Lmobi/beyondpod/rsscore/Track;II)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtBig:Landroid/graphics/Bitmap;

    .line 815
    sget-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtBig:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 816
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/core/FeedImageCache;->getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtBig:Landroid/graphics/Bitmap;

    .line 819
    :cond_0
    sget-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtBig:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 820
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f08005e

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtBig:Landroid/graphics/Bitmap;

    .line 828
    :cond_1
    sget-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtBig:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static getSmallBitmapForTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;
    .locals 3

    .line 773
    sget v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_trackHash:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 775
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_trackHash:I

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 780
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 783
    sput-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArt:Landroid/graphics/Bitmap;

    .line 785
    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/core/volley/ImageUtils;->loadEpisodeImage(Lmobi/beyondpod/rsscore/Track;II)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArt:Landroid/graphics/Bitmap;

    .line 787
    sget-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArt:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 788
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/core/FeedImageCache;->getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArt:Landroid/graphics/Bitmap;

    .line 791
    :cond_0
    sget-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArt:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 792
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f08005e

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArt:Landroid/graphics/Bitmap;

    .line 800
    :cond_1
    sget-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArt:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static getXBigBitmapForTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;
    .locals 3

    .line 833
    sget v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_trackXBigHash:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 835
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_trackXBigHash:I

    .line 836
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 837
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    .line 838
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 839
    sput-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtXBig:Landroid/graphics/Bitmap;

    .line 840
    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/core/volley/ImageUtils;->loadEpisodeImage(Lmobi/beyondpod/rsscore/Track;II)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtXBig:Landroid/graphics/Bitmap;

    .line 842
    sget-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtXBig:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 843
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/core/FeedImageCache;->getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtXBig:Landroid/graphics/Bitmap;

    .line 846
    :cond_0
    sget-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtXBig:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f08005e

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtXBig:Landroid/graphics/Bitmap;

    .line 855
    :cond_1
    sget-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->_AlbumArtXBig:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 720
    :cond_1
    instance-of v2, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    if-nez v2, :cond_2

    return v1

    .line 723
    :cond_2
    check-cast p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    .line 724
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    .line 726
    iget-object v2, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    return v1

    .line 729
    :cond_3
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    iget-object v3, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 732
    :cond_4
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->infoMessage:Ljava/lang/CharSequence;

    if-nez v2, :cond_5

    .line 734
    iget-object v2, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->infoMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    return v1

    .line 737
    :cond_5
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->infoMessage:Ljava/lang/CharSequence;

    iget-object v3, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->infoMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 740
    :cond_6
    iget v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->nextVisibility:I

    iget v3, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->nextVisibility:I

    if-eq v2, v3, :cond_7

    return v1

    .line 743
    :cond_7
    iget v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playPauseResource:I

    iget v3, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playPauseResource:I

    if-eq v2, v3, :cond_8

    return v1

    .line 746
    :cond_8
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    if-nez v2, :cond_9

    .line 748
    iget-object v2, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    return v1

    .line 751
    :cond_9
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    iget-object v3, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 754
    :cond_a
    iget v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->progressResource:I

    iget v3, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->progressResource:I

    if-eq v2, v3, :cond_b

    return v1

    .line 757
    :cond_b
    iget v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->streamVisibility:I

    iget v3, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->streamVisibility:I

    if-eq v2, v3, :cond_c

    return v1

    .line 760
    :cond_c
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_d

    .line 762
    iget-object p1, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    if-eqz p1, :cond_e

    return v1

    .line 765
    :cond_d
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    iget-object p1, p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 700
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 701
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->infoMessage:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->infoMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 702
    iget v3, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->nextVisibility:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 703
    iget v3, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playPauseResource:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 704
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 705
    iget v3, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->progressResource:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 706
    iget v3, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->streamVisibility:I

    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 707
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    return v2
.end method
