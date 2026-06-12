.class public Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;
.super Ljava/lang/Object;
.source "UpdateAndDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;
    }
.end annotation


# static fields
.field private static final CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_OVER_A_WI_FI:Ljava/lang/String;

.field private static final CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_WHEN_THE_DEVICE_IS_PLUGGED_IN:Ljava/lang/String;

.field private static final SCHEDULED_UPDATE_DID_NOT_RUN_BECAUSE_BACKGROUND_DATA_IS_DISABLED:Ljava/lang/String;

.field protected static final TAG:Ljava/lang/String; = "UpdateAndDownloadManager"

.field private static final THE_DEVICE_HAS_NO_INTERNET_CONNECTION_WI_FI_ADAPTER_IS_OFF:Ljava/lang/String;

.field private static final UNABLE_TO_ESTABLISH_INTERNET_CONECTION_THE_DEVICE_IS_IN_AIRPLANE_MODE:Ljava/lang/String;

.field private static _EnclosureBatchDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener; = null

.field private static _FeedBatchUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener; = null

.field private static _FeedProcessingRunnable:Ljava/lang/Runnable; = null

.field private static _ProcessingThread:Ljava/lang/Thread; = null

.field static _SaveUpdateQueueRunnable:Ljava/lang/Runnable; = null

.field private static final _UpdateAndDownloadListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private static m_AllowMobileDataUseForDownloads:Z = false

.field private static final m_DownloadQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private static m_IsUnattended:Z = true

.field private static m_NumStreamableEnclosures:I

.field private static m_Processing:Z

.field private static m_SkipDownloads:Z

.field private static final m_Statistics:Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget v0, Lmobi/beyondpod/R$string;->update_download_mgr_scheduled_update_did_not_run_because_background_data_is_disabled:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->SCHEDULED_UPDATE_DID_NOT_RUN_BECAUSE_BACKGROUND_DATA_IS_DISABLED:Ljava/lang/String;

    .line 69
    sget v0, Lmobi/beyondpod/R$string;->update_download_mgr_unable_to_establish_internet_conection_the_device_is_in_airplane_mode:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->UNABLE_TO_ESTABLISH_INTERNET_CONECTION_THE_DEVICE_IS_IN_AIRPLANE_MODE:Ljava/lang/String;

    .line 70
    sget v0, Lmobi/beyondpod/R$string;->update_download_mgr_the_device_has_no_internet_connection:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->THE_DEVICE_HAS_NO_INTERNET_CONNECTION_WI_FI_ADAPTER_IS_OFF:Ljava/lang/String;

    .line 71
    sget v0, Lmobi/beyondpod/R$string;->update_download_mgr_currently_podcasts_can_be_downloaded_automatically_only_when_the_device_is_plugged_in:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_WHEN_THE_DEVICE_IS_PLUGGED_IN:Ljava/lang/String;

    .line 72
    sget v0, Lmobi/beyondpod/R$string;->update_download_mgr_currently_podcasts_can_be_downloaded_automatically_only_over_a_wifi_connection:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_OVER_A_WI_FI:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    .line 117
    new-instance v0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_Statistics:Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    .line 124
    new-instance v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$1;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_FeedBatchUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 175
    new-instance v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$2;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$2;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_EnclosureBatchDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 241
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_ProcessingThread:Ljava/lang/Thread;

    .line 245
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_FeedBatchUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->addFeedBatchUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;)V

    .line 246
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_EnclosureBatchDownloadListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->addEnclosureBatchDownloadListener(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;)V

    .line 300
    new-instance v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_FeedProcessingRunnable:Ljava/lang/Runnable;

    .line 851
    new-instance v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$4;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$4;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_SaveUpdateQueueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 66
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->onCancel()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 66
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->onUpdateCompleted()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_OVER_A_WI_FI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_WHEN_THE_DEVICE_IS_PLUGGED_IN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 66
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->onDownloadCompleted()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 66
    sget-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_Processing:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 66
    sput-boolean p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_Processing:Z

    return p0
.end method

.method static synthetic access$402(I)I
    .locals 0

    .line 66
    sput p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_NumStreamableEnclosures:I

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .line 66
    sget v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_NumStreamableEnclosures:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_NumStreamableEnclosures:I

    return v0
.end method

.method static synthetic access$500()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;
    .locals 1

    .line 66
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_Statistics:Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .line 66
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .line 66
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 66
    sget-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_SkipDownloads:Z

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 66
    sget-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_AllowMobileDataUseForDownloads:Z

    return v0
.end method

.method public static addUpdateAndDownloadListener(Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;)V
    .locals 2

    .line 96
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    monitor-exit v0

    return-void

    .line 101
    :cond_0
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static allowMobileDataUseForDownloads()Z
    .locals 1

    .line 782
    sget-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_AllowMobileDataUseForDownloads:Z

    return v0
.end method

.method public static deleteOldTracksForFeed(Lmobi/beyondpod/rsscore/Feed;Z)V
    .locals 0

    .line 1061
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getOldTracksForFeed(Lmobi/beyondpod/rsscore/Feed;Z)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p0

    .line 1062
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    .line 1064
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackAsync(Lmobi/beyondpod/rsscore/Track;)V

    .line 1065
    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static downloadEnclosures(Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 765
    sput v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_NumStreamableEnclosures:I

    .line 766
    sput-boolean p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_IsUnattended:Z

    .line 769
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_AllowMobileDataUseForDownloads:Z

    if-nez p1, :cond_1

    .line 770
    :cond_0
    sput-boolean p2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_AllowMobileDataUseForDownloads:Z

    .line 772
    :cond_1
    sget-boolean p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_IsUnattended:Z

    invoke-static {p0, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->downloadEnclosures(Ljava/util/List;Z)V

    return-void
.end method

.method private static downloadQueueHasUrl(Ljava/lang/String;)Z
    .locals 3

    .line 750
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    monitor-enter v0

    .line 752
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 754
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    .line 755
    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 758
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 759
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static hasWorkToDo()Z
    .locals 1

    .line 984
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->queueCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnattended()Z
    .locals 1

    .line 777
    sget-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_IsUnattended:Z

    return v0
.end method

.method public static isWorking()Z
    .locals 1

    .line 812
    sget-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_Processing:Z

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->isUpdating()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

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

.method public static loadUpdateQueueFromFile()Lmobi/beyondpod/rsscore/FeedList;
    .locals 5

    .line 916
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 918
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->feedUpdateQueueFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 923
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 925
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 933
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-object v4, v2

    .line 943
    :goto_1
    :try_start_3
    invoke-static {v4}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 946
    invoke-virtual {v0, v4}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    :catch_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    .line 961
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_3
    move-exception v1

    .line 953
    :goto_2
    :try_start_5
    sget-object v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load feed Update Queue. reason: "

    invoke-static {v3, v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    .line 961
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    .line 965
    sget-object v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load feed Update Queue. reason: "

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_3
    if-eqz v3, :cond_1

    .line 961
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    .line 965
    sget-object v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load feed Update Queue. reason: "

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 966
    :cond_1
    :goto_4
    throw v0

    .line 972
    :cond_2
    :goto_5
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " saved items from the saved update queue file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static numStreamableEnclosures()I
    .locals 1

    .line 807
    sget v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_NumStreamableEnclosures:I

    return v0
.end method

.method private static onCancel()V
    .locals 1

    .line 251
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->saveUpdateQueueToFile()V

    .line 253
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->onUpdateAndDownloadFinished()V

    return-void
.end method

.method private static onDownloadCompleted()V
    .locals 1

    .line 258
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->saveUpdateQueueToFile()V

    .line 260
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->onUpdateAndDownloadFinished()V

    return-void
.end method

.method private static onUpdateAndDownloadFinished()V
    .locals 3

    .line 266
    sget-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_IsUnattended:Z

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->analyzeStatisticsAndNotify()V

    :cond_0
    const/4 v0, 0x0

    .line 269
    sput-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_AllowMobileDataUseForDownloads:Z

    .line 270
    sput-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_SkipDownloads:Z

    .line 273
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->syncSmartPlayIfNeeded()V

    .line 276
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->dumpUpdateStatistics()V

    .line 278
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 280
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    .line 281
    invoke-interface {v2}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;->updateAndDownloadBatchCompleted()V

    goto :goto_0

    .line 282
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static onUpdateCompleted()V
    .locals 3

    .line 287
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isRuntimeShuttingDown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_FeedProcessingRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_ProcessingThread:Ljava/lang/Thread;

    .line 290
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_ProcessingThread:Ljava/lang/Thread;

    const-string v1, "Update and Download Processing Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 291
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_ProcessingThread:Ljava/lang/Thread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 292
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_ProcessingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 295
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start feed processing thread."

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static queueCount()I
    .locals 1

    .line 787
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static removeUpdateAndDownloadListener(Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;)V
    .locals 2

    .line 107
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    monitor-exit v0

    return-void

    .line 112
    :cond_0
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resumeUpdateAndDownloads()Z
    .locals 4

    .line 817
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 819
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "Resuming downloads found non empty download queue! Resume aborted!"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 824
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->loadDownloadQueueFromFile()Ljava/util/List;

    move-result-object v0

    .line 825
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 827
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "Resuming enclosure Downloads..."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-static {v0, v3}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->downloadEnclosures(Ljava/util/List;Z)V

    return v3

    .line 833
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->loadUpdateQueueFromFile()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    .line 834
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 836
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "Resuming feed Updates...!"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {v0, v3}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startUpdateDownload(Lmobi/beyondpod/rsscore/FeedList;Z)V

    return v3

    .line 841
    :cond_2
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "No pending feed updates or enclosure downloads. Exiting..."

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static saveUpdateQueueToFile()V
    .locals 4

    .line 847
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_SaveUpdateQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 848
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_SaveUpdateQueueRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static saveUpdateQueueToFileInternal()V
    .locals 6

    .line 863
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->feedUpdateQueueFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 868
    :try_start_0
    sget-object v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 870
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 872
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "Queue is empty. Deleted the feed Update Queue file"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 876
    :cond_0
    sget-object v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " items to the feed Update Queue..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 879
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 882
    :try_start_1
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 884
    :try_start_2
    sget-object v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/Feed;

    .line 886
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 888
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 890
    :try_start_3
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 891
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 903
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 888
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 895
    :goto_1
    :try_start_7
    sget-object v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to save feed Update Queue"

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_2

    .line 903
    :try_start_8
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 907
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to save feed Update Queue"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    .line 903
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 907
    sget-object v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to save feed Update Queue"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 908
    :cond_3
    :goto_4
    throw v0
.end method

.method public static startNewFeedAddedUpdate(Lmobi/beyondpod/rsscore/FeedList;)V
    .locals 1

    const/4 v0, 0x0

    .line 664
    invoke-static {p0, v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startUpdateDownload(Lmobi/beyondpod/rsscore/FeedList;Z)V

    return-void
.end method

.method public static startQuickUpdate(Lmobi/beyondpod/rsscore/FeedList;)V
    .locals 1

    const/4 v0, 0x1

    .line 669
    sput-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_SkipDownloads:Z

    const/4 v0, 0x0

    .line 670
    invoke-static {p0, v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startUpdateDownload(Lmobi/beyondpod/rsscore/FeedList;Z)V

    return-void
.end method

.method public static startUpdateDownload(Lmobi/beyondpod/rsscore/FeedList;Z)V
    .locals 2

    .line 675
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    const/4 v0, 0x0

    .line 677
    sput-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_AllowMobileDataUseForDownloads:Z

    .line 678
    sput-boolean p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_IsUnattended:Z

    if-eqz p1, :cond_0

    .line 680
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isBackgroundDataAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 682
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isAlreadyConnectedOrWiFiShouldBeTurnedOnDuringUpdate()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_1

    goto/16 :goto_4

    .line 709
    :cond_1
    sget-object p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 711
    sget-object p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    monitor-enter p1

    .line 713
    :try_start_0
    sget-object p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    .line 714
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;->onAnotherDownloadIsInProgress()V

    goto :goto_1

    .line 715
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 721
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Feed;

    .line 723
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->downloadQueueHasUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 725
    sget-object v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 729
    :cond_5
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->saveUpdateQueueToFile()V

    .line 731
    sget-object p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    monitor-enter p0

    .line 733
    :try_start_1
    sget-object p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    .line 734
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;->updateAndDownloadBatchStarted()V

    goto :goto_3

    .line 735
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 737
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->setLastUpdateAndDownloadManagerRunTime(Ljava/util/Date;)V

    .line 740
    sget-object p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    monitor-enter p1

    .line 742
    :try_start_2
    sget-object p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_DownloadQueue:Ljava/util/List;

    new-array v0, v0, [Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmobi/beyondpod/rsscore/Feed;

    .line 743
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 745
    invoke-static {p0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->updateFeeds([Lmobi/beyondpod/rsscore/Feed;)V

    return-void

    :catchall_1
    move-exception p0

    .line 743
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p1

    .line 735
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 684
    :cond_7
    :goto_4
    sget-object p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->THE_DEVICE_HAS_NO_INTERNET_CONNECTION_WI_FI_ADAPTER_IS_OFF:Ljava/lang/String;

    .line 686
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->isInAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 687
    sget-object p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->UNABLE_TO_ESTABLISH_INTERNET_CONECTION_THE_DEVICE_IS_IN_AIRPLANE_MODE:Ljava/lang/String;

    goto :goto_5

    :cond_8
    if-eqz p1, :cond_9

    .line 689
    sget-object p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->SCHEDULED_UPDATE_DID_NOT_RUN_BECAUSE_BACKGROUND_DATA_IS_DISABLED:Ljava/lang/String;

    .line 691
    :cond_9
    :goto_5
    sget-object p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->clear()V

    .line 694
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->downloadTime:Ljava/util/Date;

    .line 695
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object p1

    sget-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_IsUnattended:Z

    iput-boolean v0, p1, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->isUnattended:Z

    .line 696
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->clear()V

    .line 697
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->lastException:Ljava/lang/Exception;

    .line 698
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->dumpUpdateStatistics()V

    .line 700
    sget-object p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    monitor-enter p0

    .line 702
    :try_start_5
    sget-object p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->_UpdateAndDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    .line 703
    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;->onUnableToEstablishNetworkConnection()V

    goto :goto_6

    .line 704
    :cond_a
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method public static statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;
    .locals 1

    .line 802
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_Statistics:Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    return-object v0
.end method

.method private static syncSmartPlayIfNeeded()V
    .locals 8

    .line 989
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->autoSyncSmartPlay()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 995
    :cond_0
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartPlay sync - last update created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->successfulDownloadsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downloaded and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->numStreamableEnclosures()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " streamable episodes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->successfulDownloadsCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_2

    .line 1004
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->numStreamableEnclosures()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto/16 :goto_3

    .line 1007
    :cond_2
    :goto_0
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->primarySmartPlay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1009
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->generatePlaylist()Ljava/util/List;

    move-result-object v0

    .line 1011
    :cond_3
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->getUrlsOfNewEpisodes()Ljava/util/List;

    move-result-object v1

    .line 1013
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1015
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->getSuccessfulDownloads()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    .line 1017
    iget-object v5, v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;->url:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1021
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/rsscore/Track;

    .line 1023
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v6

    invoke-virtual {v6}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1025
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1027
    sget-object v4, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartPlay sync - track "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was not found in the current playlist. SmartPlay will be restarted."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_2

    .line 1035
    :cond_6
    :goto_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defferAutoSyncSmartPlay()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1037
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "SmartPlay sync - Detected pending deffered rebuild at the end of download. SmartPlay will be restarted."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setDefferAutoSyncSmartPlay(Z)V

    move v4, v3

    :cond_7
    if-eqz v4, :cond_9

    .line 1044
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1046
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "SmartPlay sync - Syncing SmartPlay..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->keepCurrentEpisodeForDefferAutoSyncSmartPlay()Z

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lmobi/beyondpod/services/player/PlayList;->rebuildSmartPlay(ZZZ)V

    goto :goto_4

    .line 1051
    :cond_8
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "SmartPlay sync - Currently Playing... Syncing will be deffered for later..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-static {v3}, Lmobi/beyondpod/rsscore/Configuration;->setDefferAutoSyncSmartPlay(Z)V

    goto :goto_4

    .line 1056
    :cond_9
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "SmartPlay sync - No need to sync SmartPlay!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    .line 991
    :cond_a
    :goto_5
    sget-object v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "SmartPlay sync - no SmartPlay or Sync is disabled!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static terminateAll()V
    .locals 1

    .line 792
    sget-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_Processing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 793
    sput-boolean v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->m_Processing:Z

    goto :goto_0

    .line 794
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->terminateAllUpdates()V

    goto :goto_0

    .line 796
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->terminateAllDownloads()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public hasUpdateQueueFile()Z
    .locals 2

    .line 978
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->feedUpdateQueueFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
