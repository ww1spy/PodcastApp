.class public Lmobi/beyondpod/ui/commands/CommandManager;
.super Lmobi/beyondpod/ui/commands/CommandManagerBase;
.source "CommandManager.java"


# static fields
.field private static final BEYOND_POD_FEED_SEARCH:Ljava/lang/String;

.field private static final PER_CATEGORY:Ljava/lang/String;

.field private static final PICK_SCHEDULING_METHOD:Ljava/lang/String;

.field private static final SELECT_UPDATE_SCHEDULE:Ljava/lang/String;

.field private static final SINGLE_SCHEDULE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CommandManager"

.field private static final THERE_IS_NOTHING_TO_PLAY:Ljava/lang/String;

.field private static final UNABLE_TO_START_EXTERNAL_PLAYER:Ljava/lang/String;

.field private static final UNABLE_TO_START_VIDEO_PLAYER:Ljava/lang/String;

.field private static final UPDATE_AND_DOWNLOAD_LOG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100309

    .line 122
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->PER_CATEGORY:Ljava/lang/String;

    const v0, 0x7f10030a

    .line 124
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->SINGLE_SCHEDULE:Ljava/lang/String;

    const v0, 0x7f10030b

    .line 126
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->SELECT_UPDATE_SCHEDULE:Ljava/lang/String;

    const v0, 0x7f100308

    .line 127
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->PICK_SCHEDULING_METHOD:Ljava/lang/String;

    const v0, 0x7f100115

    .line 129
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->BEYOND_POD_FEED_SEARCH:Ljava/lang/String;

    const v0, 0x7f10011a

    .line 131
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->UPDATE_AND_DOWNLOAD_LOG:Ljava/lang/String;

    const v0, 0x7f100116

    .line 133
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->THERE_IS_NOTHING_TO_PLAY:Ljava/lang/String;

    const v0, 0x7f100118

    .line 135
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->UNABLE_TO_START_EXTERNAL_PLAYER:Ljava/lang/String;

    const v0, 0x7f100119

    .line 137
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->UNABLE_TO_START_VIDEO_PLAYER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->UNABLE_TO_START_EXTERNAL_PLAYER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V
    .locals 0

    .line 120
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->configureUpdateScheduleFor(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Ljava/io/File;)V
    .locals 0

    .line 120
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->openLogFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/ArrayList;Z)V
    .locals 0

    .line 120
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->downloadEnclosuresManuallyInternal(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private static askForReplaceAppend(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;",
            "Lmobi/beyondpod/rsscore/Track;",
            "Z)V"
        }
    .end annotation

    .line 324
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0021

    .line 325
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x12c

    .line 326
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    const v2, 0x7f0901f5

    .line 328
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/CheckBox;

    const v2, 0x7f0900c5

    .line 329
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x800003

    .line 330
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const v2, 0x7f090262

    .line 332
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/RadioGroup;

    const v2, 0x7f090251

    .line 334
    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 336
    new-instance v2, Lmobi/beyondpod/ui/commands/CommandManager$1;

    invoke-direct {v2, v5}, Lmobi/beyondpod/ui/commands/CommandManager$1;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 352
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100421

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lmobi/beyondpod/ui/commands/CommandManager$2;

    move-object v3, v2

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lmobi/beyondpod/ui/commands/CommandManager$2;-><init>(Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V

    const p0, 0x7f100092

    .line 353
    invoke-virtual {v0, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f10008a

    .line 380
    invoke-virtual {p0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static cmdAddNewCategory(Landroid/content/Context;)V
    .locals 2

    .line 670
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdAddRemoveToPlaylist(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 513
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 514
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    .line 518
    invoke-virtual {v1, p1}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdRemoveFromPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V

    return-void

    .line 524
    :cond_1
    invoke-virtual {v1, p1}, Lmobi/beyondpod/services/player/PlayList;->canAddToPlaylist(Lmobi/beyondpod/rsscore/Track;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 526
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdNotifyStreamingNotAllowed(Landroid/content/Context;)V

    return-void

    .line 530
    :cond_2
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddToPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V

    return-void
.end method

.method public static cmdAddToPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 2

    const-string v0, "cmdAddToPlaylist"

    const-string v1, ""

    .line 535
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/services/player/PlayList;->addTracks(Ljava/util/List;)V

    return-void
.end method

.method public static cmdClearCaches(Landroid/content/Context;)V
    .locals 0

    .line 702
    invoke-static {p0}, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;->showDialog(Landroid/content/Context;)V

    return-void
.end method

.method public static cmdDeleteCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 2

    const-string v0, "cmdDeleteCategory"

    const/4 v1, 0x0

    .line 696
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->showDialog(Landroid/content/Context;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void
.end method

.method public static cmdDeleteFeed(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    const-string v0, "cmdDeleteFeed"

    const/4 v1, 0x0

    .line 690
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->showDialog(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public static cmdDeletePodcasts(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 2

    const-string v0, "CmdDeleteEpisodes"

    const/4 v1, 0x0

    .line 684
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->showDialog(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    return-void
.end method

.method public static cmdDisconnectAggregatorDialog()V
    .locals 3

    .line 778
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 779
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 780
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdDownloadAllInPlaylistManually(Landroid/content/Context;)V
    .locals 15

    .line 1279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 1283
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 1286
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1287
    new-instance v4, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v9

    .line 1288
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v11

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v14

    move-object v5, v4

    invoke-direct/range {v5 .. v14}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/lang/String;)V

    .line 1290
    invoke-static {v4}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloadPending(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1293
    :cond_2
    new-instance v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-direct {v3, v2, v4}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    .line 1294
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1297
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1298
    invoke-static {p0, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadEnclosuresManually(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public static cmdDownloadEnclosure(Landroid/content/Context;Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V
    .locals 5

    .line 1525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    .line 1530
    iget-object v1, p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    iput v3, v1, Lmobi/beyondpod/rsscore/Feed;->numDownloadedEnclosures:I

    .line 1531
    iget-object p1, p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    iput v2, p1, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    .line 1532
    invoke-static {v3}, Lmobi/beyondpod/rsscore/Configuration;->setUnableToEstablishWiFiConnectionInThisSession(Z)V

    .line 1534
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isCellularConnectionAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1535
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionCellular()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 1536
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->downloadEnclosuresWhenChargingOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1537
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDevicePlugged()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 1538
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->downloadEnclosuresOnWiFiOnly()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1539
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionWiFi()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-nez v1, :cond_3

    if-nez v4, :cond_3

    if-eqz p1, :cond_8

    :cond_3
    if-eqz v4, :cond_4

    const p1, 0x7f10041a

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    const p1, 0x7f100419

    goto :goto_3

    :cond_5
    const p1, 0x7f100418

    .line 1551
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f10017b

    .line 1552
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1553
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f1003a6

    new-instance v1, Lmobi/beyondpod/ui/commands/CommandManager$11;

    invoke-direct {v1, v0}, Lmobi/beyondpod/ui/commands/CommandManager$11;-><init>(Ljava/util/ArrayList;)V

    .line 1554
    invoke-virtual {p0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f1003a5

    const/4 v0, 0x0

    .line 1562
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1563
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 1569
    :cond_6
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->checkAndNotifyIfInDownloadRestrictedMode()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1572
    :cond_7
    iget-object p0, p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    iget p1, p0, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    add-int/2addr p1, v2

    iput p1, p0, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    .line 1575
    :cond_8
    invoke-static {v0, v3, v3}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->downloadEnclosures(Ljava/util/List;ZZ)V

    return-void
.end method

.method public static cmdDownloadEnclosure(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Z)V
    .locals 8

    .line 1462
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 1466
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->playableState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1471
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowDownloadQueue()V

    return-void

    .line 1476
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloadPending(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 1479
    invoke-static {p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->removeFromQueue(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    goto :goto_0

    .line 1481
    :cond_1
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowDownloadQueue()V

    :goto_0
    return-void

    .line 1489
    :cond_2
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->ensureFeedHasDownloadPath()Z

    move-result p3

    if-nez p3, :cond_3

    return-void

    .line 1492
    :cond_3
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object p3

    .line 1493
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    move-wide v3, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1492
    :goto_1
    invoke-static {p3, v3, v4}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->checkIfSpaceIsAvailable(Ljava/lang/String;J)Z

    move-result p3

    if-nez p3, :cond_7

    .line 1495
    invoke-static {p2}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->getFreeSpaceAtFeedDownloadPath(Lmobi/beyondpod/rsscore/Feed;)J

    move-result-wide v3

    .line 1497
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1001a5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1499
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    .line 1500
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 p1, 0x2

    .line 1501
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1502
    :cond_5
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object p2

    :goto_2
    aput-object p2, v5, p1

    .line 1497
    invoke-virtual {p3, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    cmp-long p2, v3, v1

    if-gez p2, :cond_6

    .line 1507
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1505
    :cond_6
    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1511
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1516
    :cond_7
    new-instance p3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    invoke-direct {p3, p2, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    .line 1519
    invoke-static {p0, p3}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadEnclosure(Landroid/content/Context;Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V

    :cond_8
    return-void
.end method

.method public static cmdDownloadEnclosuresManually(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;)V"
        }
    .end annotation

    .line 1217
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->checkAndNotifyIfInDownloadRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1223
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 1225
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isCellularConnectionAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1226
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionCellular()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1227
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->downloadEnclosuresWhenChargingOnly()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1228
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDevicePlugged()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 1229
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->downloadEnclosuresOnWiFiOnly()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1230
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionWiFi()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-eqz v0, :cond_8

    :cond_5
    if-eqz v4, :cond_6

    const v0, 0x7f10041a

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    const v0, 0x7f100419

    goto :goto_3

    :cond_7
    const v0, 0x7f100418

    .line 1242
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f10017b

    .line 1243
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1244
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1003a6

    new-instance v2, Lmobi/beyondpod/ui/commands/CommandManager$8;

    invoke-direct {v2, p1}, Lmobi/beyondpod/ui/commands/CommandManager$8;-><init>(Ljava/util/ArrayList;)V

    .line 1245
    invoke-virtual {p0, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f1003a5

    const/4 v0, 0x0

    .line 1253
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1254
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 1260
    :cond_8
    invoke-static {p1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->downloadEnclosuresManuallyInternal(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static cmdDownloadFeedItemsManually(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;)V"
        }
    .end annotation

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v1, :cond_0

    .line 1134
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1137
    :cond_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    .line 1139
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 1142
    invoke-static {v1, v3}, Lmobi/beyondpod/ui/commands/CommandManager;->findOrCreateStreamableTrack(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)Lmobi/beyondpod/rsscore/Track;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1147
    :cond_2
    invoke-virtual {v1, v4}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setRead(Z)V

    .line 1150
    :cond_3
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1151
    invoke-static {v3, v4}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetPlayedState(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 1153
    :cond_4
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    goto :goto_0

    .line 1156
    :cond_5
    invoke-static {v2}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloadPending(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 1159
    :cond_6
    new-instance v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    .line 1160
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1163
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 1164
    invoke-static {p0, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadEnclosuresManually(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_8
    return-void
.end method

.method public static cmdDownloadTrackManually(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 1170
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1171
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1172
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1179
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloadPending(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->removeFromQueue(Ljava/lang/String;)V

    return-void

    .line 1186
    :cond_1
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 1187
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 1188
    invoke-static {p0, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadTracksManually(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    return-void

    .line 1174
    :cond_2
    :goto_0
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowDownloadQueue()V

    return-void
.end method

.method public static cmdDownloadTracksManually(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 14

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    .line 1197
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1200
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1201
    new-instance v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v8

    .line 1202
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v10

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v13

    move-object v4, v3

    invoke-direct/range {v4 .. v13}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/lang/String;)V

    .line 1204
    new-instance v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    .line 1205
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1208
    invoke-static {p0, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadEnclosuresManually(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static cmdEditCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 2

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "categoryValue"

    .line 664
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdEditFeed(Lmobi/beyondpod/rsscore/Feed;I)V
    .locals 3

    .line 655
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "FocusControl"

    .line 657
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdEditSmartPlayList(I)V
    .locals 3

    .line 980
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    .line 981
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 982
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 983
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdExit()V
    .locals 3

    .line 793
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEvent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    .line 796
    sget-boolean v0, Lmobi/beyondpod/services/player/MediaPlaybackService;->ServiceIsRunning:Z

    if-eqz v0, :cond_1

    .line 799
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStopPlayback()V

    .line 801
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 802
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "stopService"

    .line 803
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 808
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 813
    :cond_1
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/commands/CommandManager$4;

    invoke-direct {v1}, Lmobi/beyondpod/ui/commands/CommandManager$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static cmdLoadSmartPlayList(ILandroid/content/Context;)V
    .locals 1

    .line 964
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 967
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 971
    :cond_1
    invoke-static {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->setLastUsedSmartPlay(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    .line 972
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    .line 973
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->generatePlaylist()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lmobi/beyondpod/services/player/PlayList;->loadTracks(Ljava/util/Collection;Z)V

    .line 974
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result p0

    if-lez p0, :cond_2

    .line 975
    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/PlayList;->setCurrentTrack(I)Lmobi/beyondpod/rsscore/Track;

    :cond_2
    return-void
.end method

.method public static cmdLockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 1

    const-string p0, "CmdLockTrack"

    const-string v0, ""

    .line 1092
    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    .line 1096
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1098
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setLocked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static cmdNotifyStreamingNotAllowed(Landroid/content/Context;)V
    .locals 2

    .line 1122
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowEpisodeStreaming()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f1002c9

    .line 1123
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const v0, 0x7f1002c8

    .line 1125
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static cmdOpenAddFeedDialog()V
    .locals 3

    .line 759
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 760
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdOpenEpisodeNotes(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1073
    new-instance p1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 1075
    :cond_1
    invoke-virtual {p1, p0}, Lmobi/beyondpod/rsscore/TrackList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 1076
    invoke-virtual {p1, v1, p0}, Lmobi/beyondpod/rsscore/TrackList;->add(ILjava/lang/Object;)V

    .line 1078
    :cond_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1080
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1081
    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1083
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CurrentEpisodeItemID"

    .line 1084
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "EpisodeIds"

    .line 1085
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    invoke-static {p3, p2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->openContentPagerInternal(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdOpenExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 547
    new-instance v0, Lmobi/beyondpod/ui/commands/CommandManager$3;

    invoke-direct {v0, p1}, Lmobi/beyondpod/ui/commands/CommandManager$3;-><init>(Lmobi/beyondpod/rsscore/Track;)V

    invoke-static {p0, v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->warnAboutPlaybackInExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V

    return-void
.end method

.method public static cmdOpenFeedPreview(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1405
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/Feed;->createTransientFeed(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    .line 1407
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1408
    iput-object p2, p0, Lmobi/beyondpod/rsscore/Feed;->transientEpisodeUrl:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x5

    .line 1411
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    .line 1413
    :cond_2
    sget-object p1, Lmobi/beyondpod/rsscore/Configuration;->TempFeedHolder:Ljava/util/HashMap;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 1416
    invoke-static {p0}, Lmobi/beyondpod/ui/core/FeedImageCache;->deleteImageCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 1418
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p2

    const-class p3, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1419
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "feed://feed/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1420
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdOpenFeedSearch(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cmdOpenFeedSearch"

    const-string v1, ""

    .line 742
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Query"

    .line 745
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "title"

    .line 746
    sget-object v1, Lmobi/beyondpod/ui/commands/CommandManager;->BEYOND_POD_FEED_SEARCH:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdOpenGReaderLogin(Landroid/content/Context;)V
    .locals 2

    .line 765
    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-class v1, Lmobi/beyondpod/ui/dialogs/GoogleReaderLoginDialog;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "LoginOnly"

    const/4 v1, 0x1

    .line 766
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 767
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 768
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdOpenGuidedTour(ILandroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 785
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TourType"

    .line 786
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 787
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdOpenImportFeeds(I)V
    .locals 3

    .line 752
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "#TYPE#"

    .line 753
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdOpenItemContentDialog(Landroid/support/v4/app/FragmentActivity;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Landroid/view/View;)V
    .locals 3

    .line 1427
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1428
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->shortTaglessDescription()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 p2, 0x0

    .line 1430
    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-static {p0, p2, v0, v1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->doOpenOriginalSource(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/CharSequence;)V

    .line 1432
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->markAsReadOnOpen()I

    move-result p0

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p0, p2, :cond_1

    .line 1433
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->markAsReadOnOpen()I

    move-result p0

    if-ne p0, v0, :cond_3

    .line 1434
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p0

    if-nez p0, :cond_3

    .line 1436
    :cond_1
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setRead(Z)V

    .line 1437
    sget-object p0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    goto :goto_0

    .line 1443
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CurrentRSSItemID"

    .line 1444
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    invoke-static {p0, p2, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->openContentPagerInternal(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static cmdOpenOPMLExportDialog(Landroid/content/Context;)V
    .locals 0

    .line 773
    invoke-static {p0}, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->showDialog(Landroid/content/Context;)V

    return-void
.end method

.method public static cmdOpenWelcomePage(Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .locals 3

    .line 724
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/HtmlViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "title"

    .line 726
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p0, "HasBottomToolbar"

    const/4 p1, 0x1

    .line 727
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdPlayAllInCategory(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "cmdPlayAllInCategory"

    const-string v1, ""

    .line 194
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 196
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 195
    invoke-static {v0, v3, v1, v4, v2}, Lmobi/beyondpod/services/player/smartplay/CategoryPlaylistTemplate;->generatePlaylist(Lmobi/beyondpod/rsscore/categories/FeedCategory;IIILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 199
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    invoke-static {p0, v0, v1, v2, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->playTracksInternal(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;ZZ)Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public static cmdPlayFeedEpisodes(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 166
    :cond_0
    new-instance v1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 168
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 171
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lmobi/beyondpod/services/player/PlayList;->canAddToPlaylist(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v3}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    :cond_2
    invoke-virtual {v1, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_8

    const/16 p1, 0x64

    if-ne p2, p1, :cond_4

    .line 177
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-static {v1, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    goto :goto_1

    .line 179
    :cond_4
    new-instance p1, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {p1, p2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->autoPlaylistEnabled()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 182
    invoke-static {p2, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEmptyPlaylist(ZZ)V

    goto :goto_2

    .line 183
    :cond_5
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 184
    invoke-static {v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddToPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V

    .line 186
    :cond_6
    :goto_2
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    invoke-static {p0, v1, p1, p2, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->playTracksInternal(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;ZZ)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move p2, v0

    :goto_3
    return p2

    :cond_8
    return v0
.end method

.method public static cmdPlayMovie(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 385
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_1

    .line 387
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayMovieInternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :goto_1
    return-void
.end method

.method public static cmdPlayMovieInternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 396
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPauseAudioPlayback()V

    .line 400
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance p0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 403
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddToPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V

    .line 406
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result p0

    .line 407
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPosition(I)Z

    return-void

    .line 411
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/views/MovieView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 414
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 420
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmobi/beyondpod/ui/commands/CommandManager;->UNABLE_TO_START_VIDEO_PLAYER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 421
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static cmdPlayPauseTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lmobi/beyondpod/rsscore/Track;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)Z"
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdResumePlayback()V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 209
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdPauseAudioPlayback()V

    :goto_0
    return v1

    .line 212
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/services/player/PlayList;->allowStreaming(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdNotifyStreamingNotAllowed(Landroid/content/Context;)V

    return v1

    .line 218
    :cond_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->autoPlaylistEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_3

    .line 221
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 223
    :cond_3
    new-instance p2, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p2}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 224
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_4
    invoke-static {p0, p2, p1, v2, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->playTracksInternal(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;ZZ)Z

    move-result p0

    return p0

    .line 233
    :cond_5
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Z

    move-result p0

    return p0
.end method

.method public static cmdPlayPlaylist(Landroid/content/Context;Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;Z)Z"
        }
    .end annotation

    .line 999
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1001
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    sget-object p1, Lmobi/beyondpod/ui/commands/CommandManager;->THERE_IS_NOTHING_TO_PLAY:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 1005
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Track;

    invoke-static {p0, p1, v0, v1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->playTracksInternal(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;ZZ)Z

    move-result p0

    return p0
.end method

.method public static cmdPlaySmartPlayList(ILandroid/content/Context;)Z
    .locals 3

    const-string v0, "cmdPlaySmartPlayList"

    const-string v1, ""

    .line 948
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 953
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 957
    :cond_1
    invoke-static {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->setLastUsedSmartPlay(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    .line 959
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->generatePlaylist()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPlaylist(Landroid/content/Context;Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public static cmdPlayTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Z
    .locals 3

    .line 242
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 243
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/services/player/PlayList;->addTracks(Ljava/util/List;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    invoke-static {p0, v0, p1, v1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->playTracksInternal(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;ZZ)Z

    move-result p0

    return p0
.end method

.method public static cmdRemoveFromPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 2

    const-string v0, "cmdRemoveFromPlaylist"

    const-string v1, ""

    .line 541
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/services/player/PlayList;->removeTracks(Ljava/util/List;)V

    return-void
.end method

.method public static cmdSendMediaCommandToVideoPlayer(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 429
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/views/MovieView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "mobi.beyondpod.services.musicservicecommand"

    .line 430
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "command"

    const-string v1, "command"

    .line 431
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 432
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 433
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 437
    sget-object p1, Lmobi/beyondpod/ui/commands/CommandManager;->TAG:Ljava/lang/String;

    const-string v0, "failed to send Media Command to Video Player"

    invoke-static {p1, v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static cmdSetPlayedState(Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 643
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->clearPlayed()V

    .line 644
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsUnRead(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->markPlayed()V

    .line 649
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V

    :goto_0
    return-void
.end method

.method public static cmdSetUpdateSchedule(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "cmdSetUpdateSchedule"

    const-string v1, ""

    .line 831
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->checkAndNotifyIfInScheduleRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    if-eqz p0, :cond_2

    .line 839
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->configureUpdateScheduleFor(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V

    return-void

    .line 846
    :cond_2
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->activeTaskCount()I

    move-result p2

    if-nez p2, :cond_4

    .line 849
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 851
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->PICK_SCHEDULING_METHOD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->SELECT_UPDATE_SCHEDULE:Ljava/lang/String;

    .line 852
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->SINGLE_SCHEDULE:Ljava/lang/String;

    new-instance v1, Lmobi/beyondpod/ui/commands/CommandManager$6;

    invoke-direct {v1, p1}, Lmobi/beyondpod/ui/commands/CommandManager$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->PER_CATEGORY:Ljava/lang/String;

    new-instance v1, Lmobi/beyondpod/ui/commands/CommandManager$5;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager$5;-><init>(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V

    .line 859
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 877
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 882
    :cond_3
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->configureUpdateScheduleFor(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_4
    const/4 p2, 0x0

    .line 889
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->activeTaskCount()I

    move-result v0

    if-lez v0, :cond_a

    if-eqz p0, :cond_5

    .line 894
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->configureUpdateScheduleFor(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V

    return-void

    .line 899
    :cond_5
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->activeTasks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 901
    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 902
    instance-of v1, v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    if-eqz v1, :cond_6

    .line 904
    check-cast v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-static {v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_7

    .line 909
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_7
    move-object p2, v0

    goto :goto_1

    :cond_8
    if-nez p2, :cond_9

    .line 915
    sget-object p2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    :cond_9
    invoke-static {p2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->configureUpdateScheduleFor(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V

    :cond_a
    return-void
.end method

.method public static cmdShowAdvancedSettings()V
    .locals 3

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/settings/SettingsView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "advanced"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdShowDeveloperSettings()V
    .locals 3

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/settings/SettingsView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "developer"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdShowDownloadQueue()V
    .locals 3

    .line 1010
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1011
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdShowGlobalSettings()V
    .locals 3

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/settings/SettingsView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdShowUpdateLog(Landroid/content/Context;)V
    .locals 7

    .line 1027
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getUpdateLogs()Ljava/util/ArrayList;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1032
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1034
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->openLogFile(Ljava/io/File;)V

    goto :goto_1

    .line 1038
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1040
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update Log for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const v6, 0x80a11

    invoke-static {p0, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1046
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p0, Lmobi/beyondpod/ui/commands/CommandManager$7;

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/commands/CommandManager$7;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Select Update Log"

    .line 1054
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1056
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void
.end method

.method public static cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V
    .locals 3

    .line 733
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/HtmlViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 734
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "title"

    .line 735
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p0, "IsFeedContentLink"

    .line 736
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdStopAllUpdates()V
    .locals 1

    .line 676
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->terminateAll()V

    goto :goto_0

    .line 678
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->terminateAllDownloads()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdTogglePlayedState(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 636
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetPlayedState(Lmobi/beyondpod/rsscore/Track;Z)V

    return-void
.end method

.method public static cmdUnlockBeyondPod(Landroid/content/Context;)V
    .locals 2

    .line 707
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFirstDownloadedUnlockKey()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CmdOpenPurchaseKeyDialog"

    const-string v1, ""

    .line 710
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {p0}, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;->showDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p0, "CmdInstallUnlockKey"

    const-string v1, ""

    .line 715
    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static cmdUnlockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 5

    const-string v0, "CmdUnLockTrack"

    const-string v1, ""

    .line 1105
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 1110
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->canDeleteTracks()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    goto :goto_0

    .line 1113
    :cond_0
    invoke-virtual {v2, v0}, Lmobi/beyondpod/rsscore/Track;->setLocked(Z)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const p1, 0x7f10025f

    .line 1117
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public static cmdUpdateCurrentFeedOrCategory(Landroid/content/Context;)Z
    .locals 2

    .line 1303
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateFeedOrCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result p0

    return p0
.end method

.method public static cmdUpdateFeedOrCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z
    .locals 3

    .line 1308
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowDownloadQueue()V

    const/4 p0, 0x0

    return p0

    .line 1314
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 1318
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1320
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->refreshVirtualFeed(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V

    return v1

    .line 1324
    :cond_1
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1328
    :cond_2
    invoke-static {p2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Feed;

    .line 1330
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1331
    invoke-virtual {v0, p2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1335
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1337
    new-instance p1, Lmobi/beyondpod/ui/commands/CommandManager$9;

    invoke-direct {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager$9;-><init>(Lmobi/beyondpod/rsscore/FeedList;)V

    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->warnAboutStartUpdateAndDownloadOnMobile(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V

    :cond_5
    return v1
.end method

.method public static cmdUpdateSmartPlayList(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cmdUpdateSmartPlayList"

    const-string v1, ""

    .line 988
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobi.beyondpod.scheduling.SCHEDULED_TASK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bpscheduler:task/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildAdHockSmartPlayUpdateTaskID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 991
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "task_id"

    .line 993
    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->buildAdHockSmartPlayUpdateTaskID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdViewFileContent(Ljava/lang/String;Z)V
    .locals 3

    .line 934
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/FileViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 935
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "ScrollToEnd"

    .line 936
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 937
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 941
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 942
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private static configureUpdateScheduleFor(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 924
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "categoryValue"

    .line 925
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static downloadEnclosuresManuallyInternal(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1266
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setUnableToEstablishWiFiConnectionInThisSession(Z)V

    .line 1268
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 1270
    iget-object v3, v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    iput v0, v3, Lmobi/beyondpod/rsscore/Feed;->numDownloadedEnclosures:I

    .line 1271
    iget-object v2, v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    iget v3, v2, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    goto :goto_0

    .line 1274
    :cond_0
    invoke-static {p0, v0, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->downloadEnclosures(Ljava/util/List;ZZ)V

    return-void
.end method

.method private static findOrCreateStreamableTrack(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)Lmobi/beyondpod/rsscore/Track;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 482
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 487
    :cond_0
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    .line 491
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowEpisodeStreaming()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    return-object v1

    .line 494
    :cond_1
    iget-object p1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->findFeedByIdInTempOrRepository(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 497
    invoke-static {p1, v0, v1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->createStreamableTrackFromEnclosure(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 501
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 502
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->clearItemReadStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_2
    return-object v2
.end method

.method public static hasUpdatableFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z
    .locals 1

    .line 1353
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Feed;

    .line 1355
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static openContentPagerInternal(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1454
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1456
    :goto_0
    sget v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->ACTIVITY_REQUEST_ContentViewPager:I

    invoke-static {p0, p2, v0, p1}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static openLogFile(Ljava/io/File;)V
    .locals 2

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1063
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/BeyondPodStorageRootPath/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    sget-object v0, Lmobi/beyondpod/ui/commands/CommandManager;->UPDATE_AND_DOWNLOAD_LOG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1062
    invoke-static {p0, v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private static playTracksInternal(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;ZZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;",
            "Lmobi/beyondpod/rsscore/Track;",
            "ZZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_c

    .line 257
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 260
    :cond_1
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 261
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v1

    if-eq v1, v2, :cond_6

    .line 263
    :cond_3
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 264
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v1

    if-eqz v1, :cond_6

    .line 265
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v1

    if-ne v1, v3, :cond_4

    goto :goto_1

    .line 309
    :cond_4
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 311
    invoke-static {p0, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayMovie(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 314
    :cond_5
    invoke-static {p0, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :goto_0
    return v0

    .line 267
    :cond_6
    :goto_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result v1

    if-ltz v1, :cond_7

    if-eqz p3, :cond_7

    .line 273
    invoke-static {v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPosition(I)Z

    move-result p0

    return p0

    .line 276
    :cond_7
    sget-object v1, Lmobi/beyondpod/ui/commands/CommandManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manually modified: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isManuallyModified()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", Allow Append: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isManuallyModified()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    if-nez p3, :cond_8

    goto :goto_3

    .line 286
    :cond_8
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->autoPlaylistEnabled()Z

    move-result p3

    if-nez p3, :cond_9

    .line 289
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Lmobi/beyondpod/services/player/PlayList;->addTrack(Lmobi/beyondpod/rsscore/Track;)V

    .line 290
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result p0

    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPosition(I)Z

    move-result p0

    return p0

    :cond_9
    const/16 p3, 0xa

    .line 294
    invoke-static {p3}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 297
    invoke-static {p0, p1, p2, p4}, Lmobi/beyondpod/ui/commands/CommandManager;->askForReplaceAppend(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V

    goto :goto_2

    .line 302
    :cond_a
    invoke-static {p1, p2, p4}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLoadPlaylistAndPlayTrack(Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V

    :goto_2
    return v0

    .line 281
    :cond_b
    :goto_3
    invoke-static {p1, p2, p4}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLoadPlaylistAndPlayTrack(Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V

    return v2

    :cond_c
    :goto_4
    return v0
.end method

.method public static prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 443
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 452
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    const p1, 0x7f1002d2

    .line 455
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-object v0

    .line 459
    :cond_2
    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->findOrCreateStreamableTrack(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 463
    invoke-virtual {p1, v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setRead(Z)V

    :cond_3
    if-nez v1, :cond_5

    if-eqz p0, :cond_4

    .line 469
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdNotifyStreamingNotAllowed(Landroid/content/Context;)V

    :cond_4
    return-object v0

    :cond_5
    if-eqz p3, :cond_6

    .line 473
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 474
    invoke-static {v1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetPlayedState(Lmobi/beyondpod/rsscore/Track;Z)V

    :cond_6
    return-object v1

    :cond_7
    :goto_0
    return-object v0
.end method

.method private static refreshVirtualFeed(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 5

    .line 1364
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    goto :goto_0

    .line 1369
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 1370
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x7f10021e

    .line 1371
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1372
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v2, 0x7f100228

    .line 1373
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 1375
    new-instance v3, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;

    new-instance v4, Lmobi/beyondpod/ui/commands/CommandManager$10;

    invoke-direct {v4, v0, v2}, Lmobi/beyondpod/ui/commands/CommandManager$10;-><init>(Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;-><init>(Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;)V

    .line 1397
    new-array p0, p0, [Lmobi/beyondpod/rsscore/Feed;

    aput-object p1, p0, v1

    invoke-virtual {v3, p0}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1016
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->master()Lmobi/beyondpod/ui/views/MasterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->master()Lmobi/beyondpod/ui/views/MasterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/views/MasterView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    .line 1020
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1021
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/BeyondPodApplication;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
