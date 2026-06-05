.class public Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "BeyondPodMediaBrowserService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final BUILD_FROM_CATEGORY:I = 0x2

.field private static final BUILD_FROM_FEED:I = 0x1

.field private static final BUILD_FROM_SMARTPLAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeyondPodMediaBrowserService"


# instance fields
.field _packageValidator:Lmobi/beyondpod/services/auto/PackageValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getFolderContent(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildFeedsCategories(Ljava/lang/String;Ljava/lang/String;)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 2

    .line 306
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 307
    invoke-virtual {v0, p2}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 309
    invoke-virtual {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "__CATEGORIES__"

    .line 310
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lmobi/beyondpod/R$drawable;->ic_media_browser_categories:I

    goto :goto_0

    :cond_0
    sget p2, Lmobi/beyondpod/R$drawable;->ic_media_browser_feeds:I

    .line 309
    :goto_0
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p1

    .line 313
    new-instance p2, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    return-object p2
.end method

.method private buildRootHierarchy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    invoke-direct {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getAllSmartPlaylists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmobi/beyondpod/R$string;->android_auto_categories_folder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__CATEGORIES__"

    invoke-direct {p0, v1, v2}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->buildFeedsCategories(Ljava/lang/String;Ljava/lang/String;)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmobi/beyondpod/R$string;->android_auto_feeds_folder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__FEEDS__"

    invoke-direct {p0, v1, v2}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->buildFeedsCategories(Ljava/lang/String;Ljava/lang/String;)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private buildTrialExpired()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    new-instance v1, Landroid/media/MediaDescription$Builder;

    invoke-direct {v1}, Landroid/media/MediaDescription$Builder;-><init>()V

    const-string v2, "___TRIALEXPIRED___"

    .line 295
    invoke-virtual {v1, v2}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmobi/beyondpod/R$string;->android_auto_trial_expired:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    .line 297
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmobi/beyondpod/R$drawable;->ic_media_browser_trial_expired:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v1

    .line 299
    new-instance v2, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private createMediaDescriptionFromCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Landroid/media/MediaDescription;
    .locals 4

    .line 369
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getCategoryTracks(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 373
    :cond_0
    new-instance v1, Landroid/media/MediaDescription$Builder;

    invoke-direct {v1}, Landroid/media/MediaDescription$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__CATEGORIES__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    .line 375
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 376
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getFeedCategorySubtitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 377
    invoke-virtual {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$drawable;->ic_media_browser_category:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p1

    return-object p1
.end method

.method private createMediaDescriptionFromFeed(Lmobi/beyondpod/rsscore/Feed;)Landroid/media/MediaDescription;
    .locals 4

    .line 392
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 396
    :cond_0
    new-instance v1, Landroid/media/MediaDescription$Builder;

    invoke-direct {v1}, Landroid/media/MediaDescription$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__FEEDS__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    .line 398
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    .line 399
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getFeedCategorySubtitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    .line 400
    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->getMediaBrowserFeedImage(Lmobi/beyondpod/rsscore/Feed;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 401
    invoke-virtual {p1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p1

    return-object p1
.end method

.method private createMediaItemFromSmartplay(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)Landroid/media/MediaDescription;
    .locals 4

    .line 406
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->generatePlaylist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 410
    :cond_0
    new-instance v1, Landroid/media/MediaDescription$Builder;

    invoke-direct {v1}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 411
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lmobi/beyondpod/services/auto/MediaIdHelper;->buildSmartplayMediaId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    .line 412
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 413
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getFeedCategorySubtitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$drawable;->ic_media_browser_smartplay:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p1

    return-object p1
.end method

.method private createMediaItemFromTrack(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;I)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 1

    .line 489
    new-instance v0, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->createTrackMediaDescription(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;I)Landroid/media/MediaDescription;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {v0, p1, p2}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    return-object v0
.end method

.method private createMediaItemFromTracks(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 462
    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->maxListSize()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 463
    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->maxListSize()I

    move-result v1

    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 476
    :pswitch_0
    new-instance v2, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v3

    invoke-direct {v2, v3}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 470
    :pswitch_1
    new-instance v2, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {v2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>()V

    .line 471
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    .line 472
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getLocalOrInheritedTrackSortOrder()I

    move-result v3

    iput v3, v2, Lmobi/beyondpod/rsscore/TrackSorter;->SortOrder:I

    .line 473
    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    :pswitch_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 482
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0, p1, v3, p3}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->createMediaItemFromTrack(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createTrackMediaDescription(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;I)Landroid/media/MediaDescription;
    .locals 1

    const-string v0, ""

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 504
    :pswitch_0
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lmobi/beyondpod/services/auto/MediaIdHelper;->buildCategoryMediaId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :pswitch_1
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lmobi/beyondpod/services/auto/MediaIdHelper;->buildFeedMediaId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 498
    :pswitch_2
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lmobi/beyondpod/services/auto/MediaIdHelper;->buildSmartplayMediaId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_0
    new-instance p1, Landroid/media/MediaDescription$Builder;

    invoke-direct {p1}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 509
    invoke-virtual {p1, v0}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 510
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 511
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p3

    invoke-static {p3, p2}, Lmobi/beyondpod/ui/views/base/UIUtils;->buildTrackSubtitle(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 512
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 513
    invoke-static {p2}, Lmobi/beyondpod/ui/views/base/UIUtils;->getMediaBrowserEpisodeAlbumArt(Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 514
    invoke-virtual {p1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private executeIfRepositoryIsAvailable(Ljava/lang/Runnable;)Z
    .locals 2

    .line 228
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 230
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private executeWhenRepositoryIsAvailable(Ljava/lang/Runnable;)V
    .locals 1

    .line 190
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->executeIfRepositoryIsAvailable(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->loadRepositoryAndRunWhenLoaded(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private getAllCategories()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesUserDefined()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 322
    invoke-direct {p0, v2}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->createMediaDescriptionFromCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Landroid/media/MediaDescription;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 324
    new-instance v3, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->allowBrowsingFeedsAndCategories()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    invoke-direct {v3, v2, v4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->maxListSize()I

    move-result v3

    if-lt v2, v3, :cond_0

    :cond_3
    return-object v0
.end method

.method private getAllFeeds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v1

    .line 337
    new-instance v2, Lmobi/beyondpod/rsscore/FeedSorter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getFeedsSortOrder()I

    move-result v3

    invoke-direct {v2, v3}, Lmobi/beyondpod/rsscore/FeedSorter;-><init>(I)V

    .line 338
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 339
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 341
    invoke-direct {p0, v2}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->createMediaDescriptionFromFeed(Lmobi/beyondpod/rsscore/Feed;)Landroid/media/MediaDescription;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 343
    new-instance v3, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->allowBrowsingFeedsAndCategories()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    invoke-direct {v3, v2, v4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->maxListSize()I

    move-result v3

    if-lt v2, v3, :cond_0

    :cond_3
    return-object v0
.end method

.method private getAllSmartPlaylists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getPlaylistsForDiaplay()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    .line 358
    invoke-direct {p0, v2}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->createMediaItemFromSmartplay(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)Landroid/media/MediaDescription;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 360
    new-instance v3, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-direct {p0, v2}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->createMediaItemFromSmartplay(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)Landroid/media/MediaDescription;

    move-result-object v2

    .line 361
    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->allowBrowsingFeedsAndCategories()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->autoPlaySmartPlaylists()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x2

    :goto_2
    invoke-direct {v3, v2, v4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 360
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getCategoryTracks(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 420
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 421
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getCategoryTracks(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->createMediaItemFromTracks(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getCategoryTracks(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/categories/FeedCategory;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 429
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getFeedCategorySubtitle(I)Ljava/lang/String;
    .locals 5

    .line 383
    invoke-virtual {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$plurals;->media_browser_episodes:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->maxListSize()I

    move-result v1

    if-le p1, v1, :cond_0

    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->allowBrowsingFeedsAndCategories()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->maxListSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getFeedTracks(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 437
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 438
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 441
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->createMediaItemFromTracks(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFolderContent(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "__ROOT__"

    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifAutoRestricted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 244
    invoke-direct {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->buildRootHierarchy()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->buildTrialExpired()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "__SMARTPLAYS__"

    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    invoke-static {p1}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getSmartplayIdFromMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getSmartPlayTracks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "__FEEDS__"

    .line 255
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    invoke-direct {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getAllFeeds()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "__FEEDS__"

    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "__FEEDS__"

    const-string v1, ""

    .line 261
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getFeedTracks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "__CATEGORIES__"

    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 265
    invoke-direct {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getAllCategories()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "__CATEGORIES__"

    .line 267
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "__CATEGORIES__"

    const-string v1, ""

    .line 269
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getCategoryTracks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_6
    :goto_0
    return-object v0
.end method

.method private getSmartPlayTracks(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 448
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 449
    invoke-static {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->generatePlaylist()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->createMediaItemFromTracks(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadRepositoryAndRunWhenLoaded(Ljava/lang/Runnable;)V
    .locals 7

    .line 198
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 199
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 201
    sget-object v2, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    const-string v3, "   === Loading feed repository from MediaBrowser service"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->initializeAndLoadRepository()Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    sget-object p1, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    const-string v0, "   === MediaBrowserService - the repository failed to load! Giving Up!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/16 v2, 0x4e20

    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    .line 211
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->executeIfRepositoryIsAvailable(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 214
    :cond_1
    sget-object v2, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    const-string v3, "   === MediaBrowserService - Repository is still loading..."

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    sget-object v0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "   === MediaBrowserService - failed to process Command!"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :cond_2
    sget-object p1, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    const-string v0, "   === MediaBrowserService repository load is taking too long to load! Giving Up!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 65
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 66
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 70
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "service"

    .line 71
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x2

    .line 72
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 73
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_pause:I

    goto :goto_0

    :cond_0
    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_play:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 77
    sget-object v1, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting foreground service (BeyondPodMediaBrowserService) and passing notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x65

    .line 78
    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->startForeground(ILandroid/app/Notification;)V

    .line 81
    :cond_1
    sget-object v0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "==== MediaBrowserService created ===="

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lmobi/beyondpod/services/player/PlayerUtils;->lockPlayerService()V

    .line 84
    new-instance v0, Lmobi/beyondpod/services/auto/PackageValidator;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/auto/PackageValidator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->_packageValidator:Lmobi/beyondpod/services/auto/PackageValidator;

    .line 85
    invoke-static {}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getInstance()Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getMediaSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 520
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    .line 521
    invoke-static {}, Lmobi/beyondpod/services/player/PlayerUtils;->unlockPlayerService()V

    .line 522
    sget-object v0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "--- MediaBrowserService destroyed! ---"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getInstance()Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->enablePublishOfCurrentPlaylist(Z)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 2

    .line 112
    sget-object p3, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaBrowserService onGetRoot from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onAutoConnected(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->maxListSize()I

    move-result p3

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    .line 117
    sget-object p1, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OnGetRoot: Android Auto integration is disabled! ListSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Lmobi/beyondpod/services/auto/MediaIdHelper;->maxListSize()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 122
    :cond_0
    iget-object p3, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->_packageValidator:Lmobi/beyondpod/services/auto/PackageValidator;

    invoke-virtual {p3, p0, p1, p2}, Lmobi/beyondpod/services/auto/PackageValidator;->isCallerAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 126
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGAutoVerifyCallers()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 128
    sget-object p2, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnGetRoot: request from untrusted package "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 134
    :cond_1
    sget-object p2, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granted access from untrusted package "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_2
    invoke-static {}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getInstance()Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->enablePublishOfCurrentPlaylist(Z)V

    .line 140
    new-instance p1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string p2, "__ROOT__"

    invoke-direct {p1, p2, v0}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/media/MediaBrowserService$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 146
    sget-object v0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaBrowserService LoadChildren:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    .line 148
    new-instance v0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;

    invoke-direct {v0, p0, p1, p2}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;-><init>(Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    invoke-direct {p0, v0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->executeWhenRepositoryIsAvailable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 91
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 95
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "service"

    .line 96
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x2

    .line 97
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 98
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_pause:I

    goto :goto_0

    :cond_0
    sget v2, Lmobi/beyondpod/R$drawable;->ic_notification_play:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 102
    sget-object v1, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting foreground service (BeyondPodMediaBrowserService) and passing notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x65

    .line 103
    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->startForeground(ILandroid/app/Notification;)V

    .line 106
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
