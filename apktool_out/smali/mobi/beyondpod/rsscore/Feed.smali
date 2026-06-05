.class public Lmobi/beyondpod/rsscore/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;
    }
.end annotation


# static fields
.field private static final FEED_ALREADY_EXIST:I = -0x3

.field private static final FEED_INVALID_URL:I = -0x2

.field private static final FEED_NULL:I = -0x1

.field private static final FEED_OK:I = 0x0

.field private static final FEED_S_WAS_ADDED_IN_CATEGORY:Ljava/lang/String;

.field public static MNT_SDCARD_MOUNT:Ljava/lang/String; = "/mnt/sdcard/"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field public static OLD_SDCARD_MOUNT:Ljava/lang/String; = "/sdcard/"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Feed"

.field private static final THE_URL_OF_THIS_FEED_S_DOES_NOT_APPEAR_TO_BE_VALID:Ljava/lang/String;

.field private static final THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;


# instance fields
.field private _MNT_PATH_EXIST:Ljava/lang/Boolean;

.field private _PreferredEnclosureIndex:I

.field public changeTrackingEnabled:Z

.field public downloadFailed:Z

.field public isTransient:Z

.field private m_AllowAutoTrackDeletions:I

.field private m_AudioSettings:Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

.field private m_Category:Lmobi/beyondpod/rsscore/categories/FeedCategories;

.field private m_FeedID:Ljava/util/UUID;

.field private m_FeedImageHasChanged:Z

.field private m_FeedImageUrl:Ljava/lang/String;

.field private m_FeedPlayer:I

.field private m_FeedType:I

.field private m_FeedUri:Landroid/net/Uri;

.field private m_FeedUrl:Ljava/lang/String;

.field private final m_Feeds:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lmobi/beyondpod/rsscore/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private m_ForceUniqueNames:Z

.field private m_HasNewContent:Z

.field private m_IncludeInOneStepDownload:I

.field private m_ItemFilter:I

.field private m_ItemFingerprintAlgorithm:I

.field private m_ItemSortOrder:I

.field private m_KeepAtMostPodcasts:I

.field private m_LastItemID:Ljava/lang/String;

.field private m_LastModifiedDate:Ljava/util/Date;

.field private m_LastServerModifiedDate:Ljava/util/Date;

.field private m_LeftTruncateLongTrackNames:Z

.field private m_MaxNumPodcastsToDownload:I

.field private m_MaxPodcastAge:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

.field private m_Modified:Z

.field private m_Name:Ljava/lang/String;

.field private m_NumUnreadItems:I

.field private final m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

.field private m_Path:Ljava/lang/String;

.field private m_RememberPlayedPosition:Z

.field private m_StorageRowID:Ljava/lang/Long;

.field private m_TrackSortOrder:I

.field private final m_Tracks:Lmobi/beyondpod/rsscore/ConcurrentTrackList;

.field private m_UpdateSize:J

.field private m_UpdatedPortion:J

.field private m_UserName:Ljava/lang/String;

.field private m_getMaxNumGReaderItemsToGet:I

.field public numDownloadedEnclosures:I

.field public numEnclosuresAvailableForDownload:I

.field public transientEpisodeUrl:Ljava/lang/String;

.field public updateFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget v0, Lmobi/beyondpod/R$string;->feed_s_was_added_in_category:I

    .line 54
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Feed;->FEED_S_WAS_ADDED_IN_CATEGORY:Ljava/lang/String;

    .line 55
    sget v0, Lmobi/beyondpod/R$string;->this_feed_already_exists_in_category:I

    .line 56
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Feed;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    .line 57
    sget v0, Lmobi/beyondpod/R$string;->the_url_of_this_feed_s_does_not_appear_to_be_valid:I

    .line 58
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Feed;->THE_URL_OF_THIS_FEED_S_DOES_NOT_APPEAR_TO_BE_VALID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 162
    invoke-direct {p0, p2}, Lmobi/beyondpod/rsscore/Feed;-><init>(Lmobi/beyondpod/rsscore/Feed;)V

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 177
    invoke-direct {p0, p2}, Lmobi/beyondpod/rsscore/Feed;-><init>(Lmobi/beyondpod/rsscore/Feed;)V

    .line 178
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 168
    invoke-direct {p0, p2}, Lmobi/beyondpod/rsscore/Feed;-><init>(Lmobi/beyondpod/rsscore/Feed;)V

    .line 169
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedID:Ljava/util/UUID;

    .line 170
    iput-object p3, p0, Lmobi/beyondpod/rsscore/Feed;->m_Name:Ljava/lang/String;

    .line 171
    iput-object p4, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedUrl:Ljava/lang/String;

    .line 172
    iput p5, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedType:I

    return-void
.end method

.method private constructor <init>(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 4

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Feeds:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    new-instance v0, Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Tracks:Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    const/4 v0, 0x2

    .line 62
    iput v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_AllowAutoTrackDeletions:I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_RememberPlayedPosition:Z

    .line 64
    new-instance v1, Lmobi/beyondpod/rsscore/categories/FeedCategories;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/rsscore/Feed;->m_Category:Lmobi/beyondpod/rsscore/categories/FeedCategories;

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedID:Ljava/util/UUID;

    const/4 v2, 0x0

    .line 66
    iput v2, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedType:I

    .line 70
    iput-boolean v2, p0, Lmobi/beyondpod/rsscore/Feed;->m_ForceUniqueNames:Z

    .line 71
    iput-boolean v2, p0, Lmobi/beyondpod/rsscore/Feed;->m_LeftTruncateLongTrackNames:Z

    .line 72
    iput-boolean v2, p0, Lmobi/beyondpod/rsscore/Feed;->m_HasNewContent:Z

    .line 73
    iput v2, p0, Lmobi/beyondpod/rsscore/Feed;->m_NumUnreadItems:I

    .line 74
    iput v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_IncludeInOneStepDownload:I

    .line 76
    iput-object v1, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastModifiedDate:Ljava/util/Date;

    .line 77
    iput-object v1, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastServerModifiedDate:Ljava/util/Date;

    .line 78
    iput-object v1, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastItemID:Ljava/lang/String;

    .line 81
    iput v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemFingerprintAlgorithm:I

    .line 82
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Modified:Z

    .line 83
    iput-boolean v2, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedImageHasChanged:Z

    const/4 v3, -0x1

    .line 87
    iput v3, p0, Lmobi/beyondpod/rsscore/Feed;->m_TrackSortOrder:I

    .line 89
    iput v2, p0, Lmobi/beyondpod/rsscore/Feed;->_PreferredEnclosureIndex:I

    .line 90
    iput v3, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemSortOrder:I

    .line 91
    iput v3, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedPlayer:I

    .line 95
    iput v2, p0, Lmobi/beyondpod/rsscore/Feed;->m_getMaxNumGReaderItemsToGet:I

    .line 97
    new-instance v3, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    invoke-direct {v3}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;-><init>()V

    iput-object v3, p0, Lmobi/beyondpod/rsscore/Feed;->m_AudioSettings:Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    .line 99
    iput-boolean v2, p0, Lmobi/beyondpod/rsscore/Feed;->downloadFailed:Z

    .line 100
    iput-boolean v2, p0, Lmobi/beyondpod/rsscore/Feed;->updateFailed:Z

    .line 101
    iput v2, p0, Lmobi/beyondpod/rsscore/Feed;->numDownloadedEnclosures:I

    .line 102
    iput v2, p0, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    .line 103
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->changeTrackingEnabled:Z

    .line 104
    iput-boolean v2, p0, Lmobi/beyondpod/rsscore/Feed;->isTransient:Z

    .line 994
    iput v2, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemFilter:I

    .line 1176
    iput-object v1, p0, Lmobi/beyondpod/rsscore/Feed;->_MNT_PATH_EXIST:Ljava/lang/Boolean;

    .line 183
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method

.method public static addSubscriptionInCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;Z)V
    .locals 3

    .line 1303
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 1304
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    .line 1306
    invoke-static {v0, p2}, Lmobi/beyondpod/rsscore/Feed;->addSubscriptionsInCategory(Lmobi/beyondpod/rsscore/FeedList;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object p2

    .line 1308
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1310
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 1312
    invoke-virtual {p2, v1}, Lmobi/beyondpod/rsscore/FeedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Feed;

    .line 1313
    sget-object p3, Lmobi/beyondpod/rsscore/Feed;->FEED_S_WAS_ADDED_IN_CATEGORY:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1315
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    .line 1316
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 1315
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1313
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1316
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1321
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Feed;->checkIfFeedCanBeAdded(Lmobi/beyondpod/rsscore/Feed;)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "NULL feed"

    .line 1324
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1328
    :pswitch_1
    sget-object p2, Lmobi/beyondpod/rsscore/Feed;->THE_URL_OF_THIS_FEED_S_DOES_NOT_APPEAR_TO_BE_VALID:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    .line 1329
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1328
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1330
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1334
    :pswitch_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1336
    sget-object p2, Lmobi/beyondpod/rsscore/Feed;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    .line 1337
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1336
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1338
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static addSubscriptionsInCategory(Lmobi/beyondpod/rsscore/FeedList;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;
    .locals 6

    .line 1346
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 1348
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 1350
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Feed;->checkIfFeedCanBeAdded(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1353
    :cond_0
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmobi/beyondpod/rsscore/Feed;->createAndAddFeedWithDefaults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    .line 1355
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 1357
    invoke-virtual {v2, v4}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    .line 1358
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumGReaderItemsToGet()I

    move-result v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumGReaderItemsToGet(I)V

    .line 1361
    :cond_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 1363
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getForceUniqueTrackNames()Z

    move-result v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setForceUniqueTrackNames(Z)V

    .line 1365
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1366
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setFeedImageUrl(Ljava/lang/String;)V

    .line 1368
    :cond_2
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getTrackSortOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    .line 1370
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getAllowAutoTrackDeletions()I

    move-result v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setAllowAutoTrackDeletions(I)V

    .line 1374
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 1380
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1382
    :cond_4
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1384
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1387
    :cond_5
    :goto_1
    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1389
    invoke-static {v4}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    .line 1390
    sget-object v4, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v1, v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v3

    .line 1394
    :goto_2
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setPrimary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 1396
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1399
    :cond_7
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 1400
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->backupRepositoriesAsync()V

    return-object v0
.end method

.method private static checkIfFeedCanBeAdded(Lmobi/beyondpod/rsscore/Feed;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1429
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isUrlValid(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, -0x2

    return p0

    .line 1432
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, -0x3

    return p0

    :cond_2
    return v1
.end method

.method public static createAndAddFeedWithDefaults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;
    .locals 3

    .line 1219
    new-instance v0, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V

    .line 1221
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setFeedUrl(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 1223
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setForceUniqueTrackNames(Z)V

    .line 1224
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultPodcastDownloadAction()I

    move-result p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setPodcastDownloadAction(I)V

    .line 1225
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumberPodcastsToDownload(I)V

    .line 1226
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setKeepAtMostPodcasts(I)V

    .line 1227
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setMaximumPodcastAge(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    const/4 p0, -0x1

    .line 1228
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setItemFingerprintAlgorithm(I)V

    .line 1230
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1231
    invoke-virtual {v0, p2}, Lmobi/beyondpod/rsscore/Feed;->setFeedImageUrl(Ljava/lang/String;)V

    .line 1234
    :cond_0
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    .line 1235
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x2

    .line 1237
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    .line 1238
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    .line 1241
    :cond_2
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->ensureFeedPathIsUnique()V

    .line 1244
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1245
    sget-object p1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p1, p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p1, p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1246
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1, p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setPrimary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 1248
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    sget-object p0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/4 p2, 0x6

    invoke-direct {p1, p2, v0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-object v0
.end method

.method public static createTransientFeed(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;
    .locals 3

    .line 1407
    new-instance v0, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V

    const/4 v1, 0x1

    .line 1409
    iput-boolean v1, v0, Lmobi/beyondpod/rsscore/Feed;->isTransient:Z

    .line 1410
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setFeedUrl(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setForceUniqueTrackNames(Z)V

    const/4 p0, 0x2

    .line 1414
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setPodcastDownloadAction(I)V

    const/4 p0, 0x0

    .line 1415
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumberPodcastsToDownload(I)V

    .line 1416
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setKeepAtMostPodcasts(I)V

    .line 1417
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setMaximumPodcastAge(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    const/4 p0, 0x3

    .line 1418
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    .line 1419
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    return-object v0
.end method

.method public static makeValidFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1198
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "[^a-zA-Z0-9 - ]"

    const-string v1, ""

    .line 1199
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1202
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x1e

    if-le p1, v1, :cond_1

    const/4 p1, 0x0

    .line 1203
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1206
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    .line 1207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Feed_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1211
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->directoryExists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isDownloadFolderInUse(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private markModified()V
    .locals 1

    const/4 v0, 0x1

    .line 1050
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Modified:Z

    .line 1051
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->publishFeedChangedEvent()V

    return-void
.end method

.method private patchGeneratedFeedPath()Z
    .locals 4

    .line 1136
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->makeValidFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 1150
    sget-object v1, Lmobi/beyondpod/rsscore/Feed;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to patch feed download path for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "! reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private publishFeedChangedEvent()V
    .locals 0

    .line 1061
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public static subscribeToFeedAndPromptForCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Z)V
    .locals 2

    .line 1280
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    sget-object p2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {p0, p1, p2, p3}, Lmobi/beyondpod/rsscore/Feed;->addSubscriptionInCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;Z)V

    return-void

    .line 1286
    :cond_0
    new-instance v0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    new-instance v1, Lmobi/beyondpod/rsscore/Feed$1;

    invoke-direct {v1, p0, p1, p3}, Lmobi/beyondpod/rsscore/Feed$1;-><init>(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Z)V

    invoke-direct {v0, p0, v1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;)V

    .line 1298
    invoke-virtual {v0, p2}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->createDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public allowsEnclosures()Z
    .locals 1

    .line 569
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canDeleteTracks()Z
    .locals 3

    .line 341
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getAllowAutoTrackDeletions()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 350
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->canDeleteTracks()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public canNavigateUp()Z
    .locals 1

    .line 915
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearTracksAndSubFeeds()V
    .locals 1

    .line 1071
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->removeFromTrackDictionary(Lmobi/beyondpod/rsscore/TrackList;)V

    .line 1072
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public credentials()Lmobi/beyondpod/rsscore/helpers/NetworkCredential;
    .locals 3

    .line 990
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    .line 991
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/NetworkCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public downloadPathExists()Z
    .locals 1

    .line 331
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ensureFeedHasDownloadPath()Z
    .locals 5

    .line 1093
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1096
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->downloadPathExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1104
    :cond_0
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/Feed;->makeValidFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1109
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1111
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1113
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/Feed;->makeValidFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    sget-object v2, Lmobi/beyondpod/rsscore/Feed;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found feed with an invalid download path, but was able to patch it to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    :cond_1
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->createDirectory(Ljava/lang/String;)Z

    .line 1119
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->ensureTrackPathMatchesParent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public ensureFeedPathIsUnique()V
    .locals 5

    .line 1259
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1263
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->makeValidFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 1266
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1272
    :cond_2
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->createDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1273
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1029
    :cond_0
    instance-of v1, p1, Lmobi/beyondpod/rsscore/Feed;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lmobi/beyondpod/rsscore/Feed;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    .line 1033
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1034
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1036
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object p1

    if-ne v2, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0
.end method

.method public getAllowAutoTrackDeletions()I
    .locals 1

    .line 429
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getAllowAutoTrackDeletions()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_AllowAutoTrackDeletions:I

    .line 433
    :cond_0
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_AllowAutoTrackDeletions:I

    return v0
.end method

.method public getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;
    .locals 1

    .line 788
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_AudioSettings:Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    return-object v0
.end method

.method public getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;
    .locals 2

    .line 698
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Category:Lmobi/beyondpod/rsscore/categories/FeedCategories;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getIsUnassigned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 701
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    return-object v0

    .line 704
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Category:Lmobi/beyondpod/rsscore/categories/FeedCategories;

    return-object v0
.end method

.method public getFeedImageUrl()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedPath()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedPlayer()I
    .locals 1

    .line 863
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedPlayer:I

    return v0
.end method

.method public getFeedUri()Landroid/net/Uri;
    .locals 1

    .line 388
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedUrl:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeCreateUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedUri:Landroid/net/Uri;

    .line 391
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getForceFeedItemSort()I
    .locals 1

    .line 739
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemSortOrder:I

    return v0
.end method

.method public getForceUniqueTrackNames()Z
    .locals 1

    .line 463
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ForceUniqueNames:Z

    return v0
.end method

.method public getItemFilter()I
    .locals 1

    .line 998
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemFilter:I

    return v0
.end method

.method public getItemFingerprintAlgorithm()I
    .locals 1

    .line 798
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemFingerprintAlgorithm:I

    return v0
.end method

.method public getKeepAtMostPodcasts()I
    .locals 1

    .line 219
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_KeepAtMostPodcasts:I

    return v0
.end method

.method public getLastItemID()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastItemID:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 511
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLastServerModifiedDate()Ljava/util/Date;
    .locals 1

    .line 551
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastServerModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLeftTruncateLongTrackNames()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_LeftTruncateLongTrackNames:Z

    return v0
.end method

.method public getLocalOrInheritedTrackSortOrder()I
    .locals 3

    move-object v0, p0

    .line 827
    :cond_0
    iget v1, v0, Lmobi/beyondpod/rsscore/Feed;->m_TrackSortOrder:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 828
    iget v0, v0, Lmobi/beyondpod/rsscore/Feed;->m_TrackSortOrder:I

    return v0

    .line 829
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    .line 831
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v0

    return v0
.end method

.method public getMaxNumGReaderItemsToGet()I
    .locals 1

    .line 777
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_getMaxNumGReaderItemsToGet:I

    return v0
.end method

.method public getMaxNumberPodcastToDownload()I
    .locals 1

    .line 763
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_MaxNumPodcastsToDownload:I

    return v0
.end method

.method public getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;
    .locals 1

    .line 202
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_MaxPodcastAge:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_MaxPodcastAge:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    goto :goto_0

    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 308
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 309
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0

    .line 314
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 977
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->getFeedPrivateData(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPodcastDownloadAction()I
    .locals 1

    .line 721
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_IncludeInOneStepDownload:I

    return v0
.end method

.method public getPreferredEnclosureIndex()I
    .locals 1

    .line 593
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->_PreferredEnclosureIndex:I

    return v0
.end method

.method public getRawFeedPath()Ljava/lang/String;
    .locals 1

    .line 1014
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldRememberPlayedPosition()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_RememberPlayedPosition:Z

    return v0
.end method

.method public getTrackSortOrder()I
    .locals 2

    .line 816
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_TrackSortOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 817
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v0

    return v0

    .line 819
    :cond_0
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_TrackSortOrder:I

    return v0
.end method

.method public getType()I
    .locals 2

    .line 610
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->allowsEnclosures()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 619
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    .line 612
    :cond_3
    :goto_0
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedType:I

    return v0
.end method

.method public getUpdateSize()J
    .locals 2

    .line 923
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_UpdateSize:J

    return-wide v0
.end method

.method public getUpdatedPortion()J
    .locals 2

    .line 936
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_UpdatedPortion:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 960
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_UserName:Ljava/lang/String;

    return-object v0
.end method

.method public hasFeedImageChanged()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedImageHasChanged:Z

    return v0
.end method

.method public hasNewContent()Z
    .locals 1

    .line 648
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_HasNewContent:Z

    return v0
.end method

.method public hasPodcasts()Z
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->allowsEnclosures()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnreadItems()Z
    .locals 1

    .line 665
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_NumUnreadItems:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUri()Z
    .locals 1

    .line 585
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .line 577
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1042
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()Ljava/util/UUID;
    .locals 1

    .line 233
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedID:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedID:Ljava/util/UUID;

    .line 236
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    .line 238
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedID:Ljava/util/UUID;

    return-object v0
.end method

.method public initRowID(Ljava/lang/Long;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_StorageRowID:Ljava/lang/Long;

    return-void
.end method

.method public isGReaderFeed()Z
    .locals 2

    .line 640
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Modified:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getIsModified()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSubFeed()Z
    .locals 1

    .line 909
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_1

    .line 910
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getGoUpPlaceholder()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mayHaveUnreadItems()Z
    .locals 2

    .line 671
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUri()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 675
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUnreadItems()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getLastServerModifiedDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public numUnreadItems()I
    .locals 1

    .line 689
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_NumUnreadItems:I

    return v0
.end method

.method public parentFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 280
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public patchFeedPathForCurrentRoot(Z)V
    .locals 3

    .line 1160
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1162
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->patchRootPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1163
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->directoryExists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1165
    :cond_0
    sget-object p1, Lmobi/beyondpod/rsscore/Feed;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Patching feed path from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public patchFeedPathForMntRoot()V
    .locals 3

    .line 1180
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->_MNT_PATH_EXIST:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1181
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Feed;->MNT_SDCARD_MOUNT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->_MNT_PATH_EXIST:Ljava/lang/Boolean;

    .line 1183
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->_MNT_PATH_EXIST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    sget-object v1, Lmobi/beyondpod/rsscore/Feed;->OLD_SDCARD_MOUNT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1188
    sget-object v0, Lmobi/beyondpod/rsscore/Feed;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Patched old sdcard mount for feed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmobi/beyondpod/rsscore/Feed;->MNT_SDCARD_MOUNT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    sget-object v2, Lmobi/beyondpod/rsscore/Feed;->OLD_SDCARD_MOUNT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public playbackVolumeBoost()F
    .locals 1

    .line 892
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->playbackVolumeBoost()F

    move-result v0

    return v0

    .line 896
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 899
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->getVolumeBoost()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public preferredPlaybackSpeed()F
    .locals 2

    .line 877
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->preferredPlaybackSpeed()F

    move-result v0

    return v0

    .line 881
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPlayer()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    .line 883
    :cond_2
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->useAudioPluginForConfiguredFeedsOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 884
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultPlaybackSpeed()F

    move-result v0

    :goto_1
    return v0
.end method

.method public rowID()Ljava/lang/Long;
    .locals 1

    .line 188
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_StorageRowID:Ljava/lang/Long;

    return-object v0
.end method

.method public setAllowAutoTrackDeletions(I)V
    .locals 0

    .line 438
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_AllowAutoTrackDeletions:I

    .line 439
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    return-void
.end method

.method public setAudioSettings(Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_AudioSettings:Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    return-void
.end method

.method public setCategories(Lmobi/beyondpod/rsscore/categories/FeedCategories;)V
    .locals 1

    .line 709
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Category:Lmobi/beyondpod/rsscore/categories/FeedCategories;

    if-eq v0, p1, :cond_0

    .line 711
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_Category:Lmobi/beyondpod/rsscore/categories/FeedCategories;

    .line 712
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setFeedImageUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedImageHasChanged:Z

    .line 406
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedImageUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    .line 410
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedImageUrl:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedImageHasChanged:Z

    .line 413
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedImageUrl:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setFeedPath(Ljava/lang/String;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_Path:Ljava/lang/String;

    .line 299
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setFeedPlayer(I)V
    .locals 1

    .line 868
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedPlayer:I

    if-eq v0, p1, :cond_0

    .line 870
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedPlayer:I

    .line 871
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setFeedUrl(Ljava/lang/String;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    .line 377
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 378
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public setForceFeedItemSort(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 751
    :cond_1
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemSortOrder:I

    if-eq v0, p1, :cond_2

    .line 753
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemSortOrder:I

    .line 754
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_2
    return-void
.end method

.method public setForceUniqueTrackNames(Z)V
    .locals 0

    .line 468
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_ForceUniqueNames:Z

    .line 469
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    return-void
.end method

.method public setHasNewContent(Z)V
    .locals 1

    .line 653
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_HasNewContent:Z

    if-eq v0, p1, :cond_0

    .line 655
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_HasNewContent:Z

    .line 656
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setIsModified(Z)V
    .locals 1

    .line 499
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_Modified:Z

    .line 500
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setIsModified(Z)V

    .line 501
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->setIsModified(Z)V

    return-void
.end method

.method public setItemFilter(I)V
    .locals 0

    .line 1003
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemFilter:I

    return-void
.end method

.method public setItemFingerprintAlgorithm(I)V
    .locals 1

    .line 803
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemFingerprintAlgorithm:I

    if-eq p1, v0, :cond_0

    .line 805
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_ItemFingerprintAlgorithm:I

    .line 806
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setKeepAtMostPodcasts(I)V
    .locals 1

    .line 224
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_KeepAtMostPodcasts:I

    if-eq p1, v0, :cond_0

    .line 226
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_KeepAtMostPodcasts:I

    .line 227
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setLastItemID(Ljava/lang/String;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastItemID:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    .line 539
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastItemID:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 1

    .line 516
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastModifiedDate:Ljava/util/Date;

    if-eq v0, p1, :cond_0

    .line 518
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    .line 519
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastModifiedDate:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method public setLastServerModifiedDate(Ljava/util/Date;)V
    .locals 1

    .line 556
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastServerModifiedDate:Ljava/util/Date;

    if-eq v0, p1, :cond_0

    .line 558
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    .line 559
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_LastServerModifiedDate:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method public setLeftTruncateLongTrackNames(Z)V
    .locals 0

    .line 483
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_LeftTruncateLongTrackNames:Z

    .line 484
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    return-void
.end method

.method public setLocalOrInheritedTrackSortOrder(I)V
    .locals 2

    move-object v0, p0

    .line 837
    :goto_0
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    goto :goto_0

    .line 842
    :cond_0
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    return-void
.end method

.method public setMaxNumGReaderItemsToGet(I)V
    .locals 0

    .line 782
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_getMaxNumGReaderItemsToGet:I

    .line 783
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    return-void
.end method

.method public setMaxNumberPodcastsToDownload(I)V
    .locals 1

    .line 768
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_MaxNumPodcastsToDownload:I

    if-eq p1, v0, :cond_0

    .line 770
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_MaxNumPodcastsToDownload:I

    .line 771
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setMaximumPodcastAge(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_MaxPodcastAge:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_MaxPodcastAge:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    if-eq p1, v0, :cond_1

    .line 209
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_MaxPodcastAge:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    .line 210
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Name:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_Name:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setNumUnreadItems(I)V
    .locals 1

    .line 680
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_NumUnreadItems:I

    if-eq v0, p1, :cond_0

    .line 682
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_NumUnreadItems:I

    .line 683
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .line 982
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 985
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/Configuration;->storeFeedPrivateData(Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method public setPodcastDownloadAction(I)V
    .locals 1

    .line 726
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_IncludeInOneStepDownload:I

    if-eq v0, p1, :cond_0

    .line 728
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_IncludeInOneStepDownload:I

    .line 729
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setPreferredEnclosureIndex(I)V
    .locals 1

    .line 598
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->_PreferredEnclosureIndex:I

    if-eq v0, p1, :cond_0

    .line 600
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    .line 601
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->_PreferredEnclosureIndex:I

    :cond_0
    return-void
.end method

.method public setShouldRememberPlayedPosition(Z)V
    .locals 0

    .line 453
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_RememberPlayedPosition:Z

    .line 454
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    return-void
.end method

.method public setTrackSortOrder(I)V
    .locals 1

    .line 847
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_TrackSortOrder:I

    if-eq v0, p1, :cond_0

    .line 852
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_TrackSortOrder:I

    .line 854
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 631
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedType:I

    if-eq v0, p1, :cond_0

    .line 633
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    .line 634
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_FeedType:I

    :cond_0
    return-void
.end method

.method public setUpdateSize(J)V
    .locals 0

    .line 928
    iput-wide p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_UpdateSize:J

    return-void
.end method

.method public setUpdatedPortion(J)V
    .locals 0

    .line 941
    iput-wide p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_UpdatedPortion:J

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1

    .line 965
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_UserName:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 968
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed;->m_UserName:Ljava/lang/String;

    .line 969
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    return-void
.end method

.method public shouldRememberPlayedPosition()Z
    .locals 1

    .line 358
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->shouldRememberPlayedPosition()Z

    move-result v0

    return v0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getShouldRememberPlayedPosition()Z

    move-result v0

    return v0
.end method

.method public subFeeds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Feed;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Feeds:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1020
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topLevelParentID()Ljava/util/UUID;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->topLevelParentID()Ljava/util/UUID;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public touch()V
    .locals 0

    .line 1056
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->markModified()V

    return-void
.end method

.method public tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;
    .locals 1

    .line 251
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed;->m_Tracks:Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    return-object v0
.end method

.method public tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;
    .locals 3

    .line 261
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 263
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->appendTo(Ljava/util/List;)V

    goto :goto_1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 270
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 272
    :cond_1
    new-instance v1, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getLocalOrInheritedTrackSortOrder()I

    move-result v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_1
    return-object v0
.end method

.method public updateNameIfDefault(Ljava/lang/String;)V
    .locals 2

    .line 1082
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Feed;->patchGeneratedFeedPath()Z

    :cond_1
    return-void
.end method

.method public updatePercent()I
    .locals 5

    .line 949
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdatedPortion()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdateSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdateSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdatedPortion()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 950
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdatedPortion()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdateSize()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
