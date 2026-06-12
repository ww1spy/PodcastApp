.class public Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;
.super Ljava/lang/Object;
.source "DownloadEngineNotificationManager.java"


# static fields
.field private static final CONNECTING:Ljava/lang/String;

.field private static final DOWNLOADED:Ljava/lang/String;

.field private static final DOWNLOADING:Ljava/lang/String;

.field private static final FEED2:Ljava/lang/String;

.field private static final FEEDS:Ljava/lang/String;

.field private static final FEEDS2:Ljava/lang/String;

.field private static final FEEDS_FAILED:Ljava/lang/String;

.field private static final FEED_UPDATE_COMPLETED:Ljava/lang/String;

.field private static final FEED_UPDATE_FAILED:Ljava/lang/String;

.field private static final FOUND:Ljava/lang/String;

.field private static final LEFT_TO_DOWNLOAD:Ljava/lang/String;

.field private static final LEFT_TO_UPDATE:Ljava/lang/String;

.field private static final LOOKING_FOR_NEW_PODCASTS_ACROSS_S_FEEDS:Ljava/lang/String;

.field private static final MORE:Ljava/lang/String;

.field private static final NEW:Ljava/lang/String;

.field private static final NEW_PODCASTS:Ljava/lang/String;

.field private static final NO_NETWORK_CONNECTION:Ljava/lang/String;

.field private static final NO_NEW_PODCASTS:Ljava/lang/String;

.field private static final NO_NEW_POSTS:Ljava/lang/String;

.field private static final OF:Ljava/lang/String;

.field private static final PODCAST:Ljava/lang/String;

.field private static final PODCASTS:Ljava/lang/String;

.field private static final PODCASTS_FAILED:Ljava/lang/String;

.field private static final RETRYING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DownloadEngineNotificationManager"

.field private static final THERE_WERE_ERRORS_DURING_THE_LAST_UPDATE:Ljava/lang/String;

.field private static final THE_PHONE_IS_IN_AIRPLANE_MODE:Ljava/lang/String;

.field private static final UNABLE_TO_ESTABLISH_NETWORK_CONNECTION:Ljava/lang/String;

.field private static final UPDATED:Ljava/lang/String;

.field private static final UPDATING:Ljava/lang/String;

.field private static _EnclosureBatchUpdateListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

.field private static _RssFeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

.field private static _UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

.field private static _WiFiTurnedOnAtStart:Z

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_podcasts:I

    .line 52
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->PODCASTS:Ljava/lang/String;

    .line 53
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_podcast:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->PODCAST:Ljava/lang/String;

    .line 54
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_feeds:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEEDS2:Ljava/lang/String;

    .line 55
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_left_to_download:I

    .line 56
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->LEFT_TO_DOWNLOAD:Ljava/lang/String;

    .line 57
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_left_to_update:I

    .line 58
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->LEFT_TO_UPDATE:Ljava/lang/String;

    .line 59
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification_the_phone_is_in_airplane_mode:I

    .line 60
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->THE_PHONE_IS_IN_AIRPLANE_MODE:Ljava/lang/String;

    .line 61
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification_unable_to_establish_network_connection:I

    .line 62
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->UNABLE_TO_ESTABLISH_NETWORK_CONNECTION:Ljava/lang/String;

    .line 63
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification__feed_update_failed:I

    .line 64
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEED_UPDATE_FAILED:Ljava/lang/String;

    .line 65
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification_no_network_connection:I

    .line 66
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NO_NETWORK_CONNECTION:Ljava/lang/String;

    .line 67
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification__feed_update_completed:I

    .line 68
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEED_UPDATE_COMPLETED:Ljava/lang/String;

    .line 69
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification_no_new_podcasts:I

    .line 70
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NO_NEW_PODCASTS:Ljava/lang/String;

    .line 71
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification__podcasts_failed:I

    .line 72
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->PODCASTS_FAILED:Ljava/lang/String;

    .line 73
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification_feeds_failed:I

    .line 74
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEEDS_FAILED:Ljava/lang/String;

    .line 75
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification_no_new_posts:I

    .line 76
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NO_NEW_POSTS:Ljava/lang/String;

    .line 77
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification_updated:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->UPDATED:Ljava/lang/String;

    .line 78
    sget v0, Lmobi/beyondpod/R$string;->update_engine_notification_there_were_errors_during_the_last_update:I

    .line 79
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->THERE_WERE_ERRORS_DURING_THE_LAST_UPDATE:Ljava/lang/String;

    .line 80
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_looking_for_new_podcasts_across:I

    .line 81
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->LOOKING_FOR_NEW_PODCASTS_ACROSS_S_FEEDS:Ljava/lang/String;

    .line 82
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_new_podcasts:I

    .line 83
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NEW_PODCASTS:Ljava/lang/String;

    .line 84
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_found:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FOUND:Ljava/lang/String;

    .line 85
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_downloaded:I

    .line 86
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->DOWNLOADED:Ljava/lang/String;

    .line 87
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_new:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NEW:Ljava/lang/String;

    .line 88
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_downloading:I

    .line 89
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->DOWNLOADING:Ljava/lang/String;

    .line 90
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_retrying:I

    .line 91
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->RETRYING:Ljava/lang/String;

    .line 92
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_of:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->OF:Ljava/lang/String;

    .line 93
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_updating:I

    .line 94
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->UPDATING:Ljava/lang/String;

    .line 95
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_connecting:I

    .line 96
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->CONNECTING:Ljava/lang/String;

    .line 97
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_feed:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEED2:Ljava/lang/String;

    .line 98
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_feeds:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEEDS:Ljava/lang/String;

    .line 99
    sget v0, Lmobi/beyondpod/R$string;->download_engine_notification_more:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->MORE:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 104
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->sFormatter:Ljava/util/Formatter;

    .line 108
    new-instance v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$1;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->_RssFeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 176
    new-instance v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$2;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$2;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->_EnclosureBatchUpdateListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 284
    new-instance v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$3;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager$3;-><init>()V

    sput-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->_UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    .line 424
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->_EnclosureBatchUpdateListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->addEnclosureBatchDownloadListener(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;)V

    .line 425
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->_UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->addUpdateAndDownloadListener(Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;)V

    .line 426
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->_RssFeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->addFeedBatchUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->MORE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEEDS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->PODCASTS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->PODCAST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->LEFT_TO_DOWNLOAD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->RETRYING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->DOWNLOADING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->DOWNLOADED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()V
    .locals 0

    .line 49
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->notifyUnableToEstablishNetworkConnection()V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FOUND:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NEW_PODCASTS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->LOOKING_FOR_NEW_PODCASTS_ACROSS_S_FEEDS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEED2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEEDS2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()V
    .locals 0

    .line 49
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->turnWiFiOnIfNeeded()V

    return-void
.end method

.method static synthetic access$2300()V
    .locals 0

    .line 49
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->turnWiFiOffIfNeeded()V

    return-void
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->THERE_WERE_ERRORS_DURING_THE_LAST_UPDATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NO_NEW_PODCASTS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NEW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->UPDATED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NO_NEW_POSTS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEEDS_FAILED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->LEFT_TO_UPDATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->PODCASTS_FAILED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEED_UPDATE_COMPLETED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->CONNECTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->setNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/StringBuilder;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->UPDATING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Formatter;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->sFormatter:Ljava/util/Formatter;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->OF:Ljava/lang/String;

    return-object v0
.end method

.method public static clearNotification()V
    .locals 3

    .line 431
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->clearNotification(Landroid/content/Context;I)V

    return-void
.end method

.method private static notifyUnableToEstablishNetworkConnection()V
    .locals 5

    .line 398
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->clearStatusNotificationAtTheEndOfUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->clearNotification()V

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    .line 401
    sget-object v1, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->NO_NETWORK_CONNECTION:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 402
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->FEED_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->UNABLE_TO_ESTABLISH_NETWORK_CONNECTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/BeyondPodApplication;->isInAirplaneMode()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->THE_PHONE_IS_IN_AIRPLANE_MODE:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 401
    invoke-static {v0, v1, v2, v3, v4}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->setNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 405
    :goto_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->stopDownloadServiceHolder()V

    return-void
.end method

.method private static setNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 436
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 439
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    sget-object v2, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_TYPE_EXTRA:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_TICKER_EXTRA:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_LINE1_EXTRA:Ljava/lang/String;

    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_LINE2_EXTRA:Ljava/lang/String;

    invoke-virtual {v1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_PROGRESS:Ljava/lang/String;

    invoke-virtual {v1, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 446
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private static turnWiFiOffIfNeeded()V
    .locals 2

    .line 410
    sget-boolean v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->_WiFiTurnedOnAtStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->toggleWiFi(ZLjava/lang/String;)Z

    .line 413
    :cond_0
    sput-boolean v1, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->_WiFiTurnedOnAtStart:Z

    return-void
.end method

.method private static turnWiFiOnIfNeeded()V
    .locals 2

    .line 418
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->turnWiFiDuringUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 419
    sget-object v1, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->toggleWiFi(ZLjava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->_WiFiTurnedOnAtStart:Z

    :cond_0
    return-void
.end method
