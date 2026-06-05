.class public Lmobi/beyondpod/rsscore/helpers/CoreHelper;
.super Ljava/lang/Object;
.source "CoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;,
        Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;,
        Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;,
        Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;,
        Lmobi/beyondpod/rsscore/helpers/CoreHelper$UnableToEstablishNetworkConnectionException;,
        Lmobi/beyondpod/rsscore/helpers/CoreHelper$InsuficientStorageSpaceException;
    }
.end annotation


# static fields
.field public static final ALLOW_DELATIONS_Allow:I = 0x0

.field public static final ALLOW_DELATIONS_DoNotAllow:I = 0x1

.field public static final ALLOW_DELATIONS_UseParentSetting:I = 0x2

.field public static final ALLOW_STREAMING_ALWAYS:I = 0x0

.field public static final ALLOW_STREAMING_NONE:I = 0x2

.field public static final ALLOW_STREAMING_WIFI_ONLY:I = 0x1

.field public static final APP_STORE_AMAZON:I = 0x2

.field public static final APP_STORE_ANDROID_MARKET:I = 0x1

.field public static final APP_STORE_UNKNOWN:I = 0x0

.field public static final CDS_ALLOW_REMOTE_FEED_ADD_ALWAYS:I = 0x1

.field public static final CDS_ALLOW_REMOTE_FEED_ADD_NEVER:I = 0x0

.field public static final CDS_ALLOW_REMOTE_FEED_ADD_PUSH_ONLY:I = 0x2

.field public static final DOWNLOAD_STATUS_Connecting:I = 0x1

.field public static final DOWNLOAD_STATUS_Downloaded:I = 0x3

.field public static final DOWNLOAD_STATUS_Downloading:I = 0x2

.field public static final DOWNLOAD_STATUS_Error:I = 0x5

.field public static final DOWNLOAD_STATUS_PreparingForDownload:I = 0x6

.field public static final DOWNLOAD_STATUS_Stopped:I = 0x4

.field public static final DOWNLOAD_STATUS_Unknown:I = 0x0

.field public static final EPISODE_FILTER_Audio_Only:I = 0x1

.field public static final EPISODE_FILTER_Downloaded_Only:I = 0x3

.field public static final EPISODE_FILTER_Locked:I = 0x5

.field public static final EPISODE_FILTER_None:I = 0x0

.field public static final EPISODE_FILTER_Not_Played:I = 0x6

.field public static final EPISODE_FILTER_Unfinished:I = 0x4

.field public static final EPISODE_FILTER_Video_Only:I = 0x2

.field public static final FEED_TYPE_AudioBook:I = 0x6

.field public static final FEED_TYPE_GReaderFeed:I = 0x5

.field public static final FEED_TYPE_LocalFolder:I = 0x1

.field public static final FEED_TYPE_OPMLFeed:I = 0x4

.field public static final FEED_TYPE_RSSFeed:I = 0x2

.field public static final FEED_TYPE_RSSFeedWithPodcasts:I = 0x3

.field public static final FEED_TYPE_Unknown:I = 0x0

.field private static final GB:F = 1.0737418E9f

.field public static final HEADSET_REMOTE_ACTION_NEXT_TRACK:I = 0x1

.field public static final HEADSET_REMOTE_ACTION_PREV_TRACK:I = 0x2

.field public static final HEADSET_REMOTE_ACTION_SKIP_BACK:I = 0x4

.field public static final HEADSET_REMOTE_ACTION_SKIP_FORWARD:I = 0x3

.field public static final HEADSET_REMOTE_ACTION_SKIP_TO_END:I = 0x5

.field public static final ITEM_FILTER_Downloaded_Only:I = 0x3

.field public static final ITEM_FILTER_Local_Only:I = 0x2

.field public static final ITEM_FILTER_None:I = 0x0

.field public static final ITEM_FILTER_Unread_Only:I = 0x1

.field public static final ITEM_ID_ALGORITHM_FP_TITLE_LINK_PUB_DATE:I = 0x1

.field public static final ITEM_ID_ALGORITHM_ITEM_GUID:I = 0x2

.field public static final ITEM_ID_ALGORITHM_TITLE:I = 0x4

.field public static final ITEM_ID_ALGORITHM_TITLE_LINK:I = 0x3

.field public static final ITEM_ID_ALGORITHM_UNKNOWN:I = -0x1

.field public static final MARK_AS_READ_ON_OPEN_AllFeeds:I = 0x2

.field public static final MARK_AS_READ_ON_OPEN_NonPodcastFeeds:I = 0x1

.field public static final MARK_AS_READ_ON_OPEN_None:I = 0x0

.field private static final MB:F = 1048576.0f

.field public static final MEDIA_END_ACTION_DeleteAndDoNothing:I = 0x3

.field public static final MEDIA_END_ACTION_DeleteAndPlayNext:I = 0x1

.field public static final MEDIA_END_ACTION_DoNothing:I = 0x2

.field public static final MEDIA_END_ACTION_PlayNext:I = 0x0

.field public static final MillisecondsInDay:I = 0x5265c00

.field public static final ORIENTATION_AUTO:I = 0x0

.field public static final ORIENTATION_LOCKED_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_LOCKED_PORTRAIT:I = 0x1

.field public static final ORIENTATION_STICKY_PLAYER:I = 0x3

.field public static final PLAYER_INTEGRATION_UseDefault:I = -0x1

.field public static final PLAYER_INTEGRATION_UseExternal:I = 0x3

.field public static final PLAYER_INTEGRATION_UseExternalAudioPlayer:I = 0x2

.field public static final PLAYER_INTEGRATION_UseExternalVideoPlayer:I = 0x1

.field public static final PLAYER_INTEGRATION_UseInternalPlayer:I = 0x0

.field public static final PLAYER_PLAYBACK_SCREEN_POWER_STATE_AlwaysBright:I = 0x4

.field public static final PLAYER_PLAYBACK_SCREEN_POWER_STATE_AlwaysDim:I = 0x3

.field public static final PLAYER_PLAYBACK_SCREEN_POWER_STATE_AlwaysOff:I = 0x0

.field public static final PLAYER_PLAYBACK_SCREEN_POWER_STATE_BrightIfCharging:I = 0x2

.field public static final PLAYER_PLAYBACK_SCREEN_POWER_STATE_DimIfCharging:I = 0x1

.field public static final PLAY_STATE_Error:I = 0x7

.field public static final PLAY_STATE_Error_Cant_Cast:I = 0x9

.field public static final PLAY_STATE_Error_Streaming_Disabled:I = 0x8

.field public static final PLAY_STATE_Paused:I = 0x0

.field public static final PLAY_STATE_Playing:I = 0x1

.field public static final PLAY_STATE_Prepared:I = 0x4

.field public static final PLAY_STATE_Preparing:I = 0x3

.field public static final PLAY_STATE_Seeking:I = 0x6

.field public static final PLAY_STATE_Stop:I = 0x2

.field public static final PLAY_STATE_Unknown:I = -0x1

.field public static final PODCAST_DOWNLOAD_ACTION_CreateStreamableTrack:I = 0x2

.field public static final PODCAST_DOWNLOAD_ACTION_CreateStreamableTrack_InOrder:I = 0x5

.field public static final PODCAST_DOWNLOAD_ACTION_DoNotDownload:I = 0x0

.field public static final PODCAST_DOWNLOAD_ACTION_DownloadPodcast:I = 0x1

.field public static final PODCAST_DOWNLOAD_ACTION_DownloadPodcasts_In_Order:I = 0x4

.field public static final PODCAST_DOWNLOAD_ACTION_IgnoreTracks:I = 0x3

.field public static final PODCAST_NAMING_SCHEME_POST_FILE_NAME:I = 0x2

.field public static final PODCAST_NAMING_SCHEME_POST_ID3_TAG_NAME:I = 0x1

.field public static final PODCAST_NAMING_SCHEME_POST_TITLE:I = 0x0

.field public static final REPOSITORY_LOAD_KIND_Backup:I = 0x2

.field public static final REPOSITORY_LOAD_KIND_LongTermBackup:I = 0x3

.field public static final REPOSITORY_LOAD_KIND_Normal:I = 0x1

.field public static final REPOSITORY_LOAD_KIND_RecoveryFailed:I = 0x0

.field public static final REPOSITORY_LOAD_KIND_Unknown:I = -0x1

.field public static final REPOSITORY_STATE_Loaded:I = 0x2

.field public static final REPOSITORY_STATE_Loading:I = 0x0

.field public static final REPOSITORY_STATE_Saving:I = 0x3

.field public static final REPOSITORY_STATE_ScanningForPodcasts:I = 0x1

.field public static final REPOSITORY_STATE_Uninitialized:I = -0x1

.field public static final SCREEN_POWER_STATE_DURING_WIFI_UPDATES_ALWAYS_OFF:I = 0x2

.field public static final SCREEN_POWER_STATE_DURING_WIFI_UPDATES_ALWAYS_ON:I = 0x1

.field public static final SCREEN_POWER_STATE_DURING_WIFI_UPDATES_AUTOMATIC:I = 0x0

.field public static final SORT_ORDER_ByDateAsc:I = 0x2

.field public static final SORT_ORDER_ByDateDesc:I = 0x3

.field public static final SORT_ORDER_ByFileNameAsc:I = 0x8

.field public static final SORT_ORDER_ByFileNameDesc:I = 0x9

.field public static final SORT_ORDER_ByFileSizeDesc:I = 0xa

.field public static final SORT_ORDER_ByMediaTypeAsc:I = 0x7

.field public static final SORT_ORDER_ByNameAsc:I = 0x0

.field public static final SORT_ORDER_ByNameDesc:I = 0x1

.field public static final SORT_ORDER_ByPlayedPortionAsc:I = 0x6

.field public static final SORT_ORDER_ByTotalTimeAsc:I = 0x4

.field public static final SORT_ORDER_ByTotalTimeDesc:I = 0x5

.field public static final SORT_ORDER_Random:I = 0x64

.field public static final SORT_ORDER_Unknown:I = -0x1

.field public static final STARTUP_VIEW_CATEGORIES:I = 0x3

.field public static final STARTUP_VIEW_FEEDS:I = 0x0

.field public static final STARTUP_VIEW_PLAYER:I = 0x2

.field public static final STARTUP_VIEW_PODCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CoreHelper"

.field public static final TRACK_CONTENT_TYPE_Audio:I = 0x1

.field public static final TRACK_CONTENT_TYPE_Image:I = 0x3

.field public static final TRACK_CONTENT_TYPE_Unavailalble:I = -0x1

.field public static final TRACK_CONTENT_TYPE_Unknown:I = 0x0

.field public static final TRACK_CONTENT_TYPE_Unspecified:I = -0x2

.field public static final TRACK_CONTENT_TYPE_Video:I = 0x2

.field public static final TRACK_PLAYABLE_STATE_CurrentlyDownloading:I = 0x5

.field public static final TRACK_PLAYABLE_STATE_LocalTrackExistsAndFullyDownloaded:I = 0x0

.field public static final TRACK_PLAYABLE_STATE_LocalTrackExistsAndFullyDownloadedAndPlaying:I = 0x6

.field public static final TRACK_PLAYABLE_STATE_LocalTrackExistsAndPartiallyDownloaded:I = 0x1

.field public static final TRACK_PLAYABLE_STATE_NoTrackExists_InHistory:I = 0x3

.field public static final TRACK_PLAYABLE_STATE_NoTrackExists_NotInHistory:I = 0x4

.field public static final TRACK_PLAYABLE_STATE_StreamableTrackExists:I = 0x2

.field public static final TRACK_PLAYABLE_STATE_StreamableTrackExistsAndPlaying:I = 0x7

.field public static final UI_MODE_DEFAULT:I = 0x0

.field public static final UI_MODE_NO_TOUCH:I = 0x2

.field public static final UI_MODE_TOUCHSCREEN:I = 0x1

.field public static VIBRATE_LONG:I = 0x5a

.field public static VIBRATE_SHORT:I = 0x1e

.field public static final VOLUME_NAVIGATION_OFF:I = 0x1

.field public static final VOLUME_NAVIGATION_OFF_IF_PLAYING:I = 0x0

.field public static final VOLUME_NAVIGATION_ON:I = 0x2

.field public static final WIDGET_BG_COLOR_DARK:I = 0x1

.field public static final WIDGET_BG_COLOR_LIGHT:I = 0x2

.field public static final WIDGET_BG_COLOR_NONE:I = 0x3

.field private static _CGBuild:Ljava/lang/Boolean; = null

.field private static _HtmlPadding:I = 0x3e8

.field static _LastTraceTime:J

.field private static _RedirectFollowerThread:Ljava/lang/Thread;

.field private static _SaveStatisticsRunnable:Ljava/lang/Runnable;

.field private static _TraceBroadcastHandler:Landroid/os/Handler;

.field private static final _empty:[Ljava/lang/String;

.field private static final _html:[Ljava/lang/String;

.field private static _htmlTags:Ljava/util/regex/Pattern;

.field private static _nl:Ljava/util/regex/Pattern;

.field private static optionalStorageMounts:[Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 291
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sFormatter:Ljava/util/Formatter;

    .line 292
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_RedirectFollowerThread:Ljava/lang/Thread;

    const/4 v0, 0x5

    .line 295
    new-array v0, v0, [Ljava/lang/Long;

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sTimeArgs:[Ljava/lang/Object;

    const-string v0, "<b>"

    const-string v1, "</b>"

    const-string v2, "<i>"

    const-string v3, "</i>"

    const-string v4, "\n"

    .line 303
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_html:[Ljava/lang/String;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    .line 304
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_empty:[Ljava/lang/String;

    const-string v0, "<style.*/style>|<[^>]*>|&#[0-9]*;|\\s{3,}"

    const/16 v1, 0x20

    .line 306
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_htmlTags:Ljava/util/regex/Pattern;

    const-string v0, "\r\n|[\r\n]"

    .line 307
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_nl:Ljava/util/regex/Pattern;

    .line 1146
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$5;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$5;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_SaveStatisticsRunnable:Ljava/lang/Runnable;

    const-string v1, "/emmc"

    const-string v2, "/mnt/sdcard/external_sd"

    const-string v3, "/mnt/external_sd"

    const-string v4, "/sdcard/sd"

    const-string v5, "/mnt/sdcard/bpemmctest"

    const-string v6, "/mnt/sdcard/_ExternalSD"

    const-string v7, "/mnt/sdcard-ext"

    const-string v8, "/mnt/Removable/MicroSD"

    const-string v9, "/Removable/MicroSD"

    const-string v10, "/mnt/external1"

    const-string v11, "/mnt/extSdCard"

    const-string v12, "/storage/sdcard1"

    const-string v13, "/storage/external_SD"

    .line 1682
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->optionalStorageMounts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 98
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->dumpUpdateStatisticsInternal()V

    return-void
.end method

.method public static analyzeStatisticsAndNotify()V
    .locals 5

    .line 1079
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->hasAnySDCardCorruptionFalures()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1081
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unable to write to SD Card!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void

    .line 1087
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->hasAnyReaderLoginFailures()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid or expired Feedly login! (You can modify your Feedly login in: Add feed > Import Feeds > Import from Feedly)"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    .line 1090
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void

    .line 1097
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->hasAnyFailedDownloads()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_2

    .line 1099
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Download failed!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void

    .line 1105
    :cond_2
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->getPodcastDownloadSkippedDeviceIsNotPluggedIn()Lmobi/beyondpod/downloadengine/ProcessStatistics;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1108
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    iget-object v0, v0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->lastException:Ljava/lang/Exception;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void

    .line 1114
    :cond_3
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->getPodcastDownloadSkippedWiFiNotDetected()Lmobi/beyondpod/downloadengine/ProcessStatistics;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1117
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    iget-object v0, v0, Lmobi/beyondpod/downloadengine/ProcessStatistics;->lastException:Ljava/lang/Exception;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void

    .line 1124
    :cond_4
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->hasAnySDCardCorruptionFalures()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1126
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v2, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unable to write to SD Card!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void

    .line 1132
    :cond_5
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->hasAnyFailedDownloads()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1134
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Download failed!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    :cond_6
    return-void
.end method

.method public static apiLevel()I
    .locals 1

    .line 1643
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static autodetectExternalStorageDirectoryInternal()Ljava/io/File;
    .locals 5

    .line 1724
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPrimaryStorageMount()Ljava/io/File;

    move-result-object v0

    .line 1725
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getOptionalStorageMount()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1739
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/Configuration;->constructBeyondPodRootIn(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1740
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v3, v2

    .line 1751
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/Configuration;->constructBeyondPodRootIn(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1752
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v4

    :catch_1
    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    if-eqz v3, :cond_2

    return-object v1

    .line 1773
    :cond_2
    :try_start_2
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPreMPrimaryStorageMount()Ljava/io/File;

    move-result-object v2

    .line 1774
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/Configuration;->constructBeyondPodRootIn(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1775
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_3

    return-object v2

    .line 1784
    :catch_2
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    .line 1785
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "shared"

    .line 1786
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "unmounted"

    .line 1787
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    return-object v0
.end method

.method private static backUpExistingUpdateLog()V
    .locals 7

    .line 2126
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getUpdateLogs()Ljava/util/ArrayList;

    move-result-object v0

    .line 2127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2132
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x9

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2135
    sget-object v2, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted old update log backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2140
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->feedUpdateLogFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2141
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 2143
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2146
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".htm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".htm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2148
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The existing update log was backed up as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static cleanHtmlTags(Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;
    .locals 5

    .line 1531
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1535
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sget v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_HtmlPadding:I

    add-int/2addr v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1537
    sget v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_HtmlPadding:I

    add-int/2addr v1, p1

    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1539
    :cond_2
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_htmlTags:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1540
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_nl:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->htmlDecode(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1543
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    const/16 v3, 0x20

    if-ge v2, v1, :cond_3

    .line 1546
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr p1, v2

    .line 1551
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    if-le p1, v2, :cond_4

    add-int/lit8 v1, p1, -0x1

    .line 1552
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v3, :cond_4

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1557
    :cond_4
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 1559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p2, "\u2026"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    return-object p0
.end method

.method public static cleanTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1510
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_html:[Ljava/lang/String;

    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_empty:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static copyAssetToFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    .line 932
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 933
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 935
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 936
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x1000

    .line 937
    new-array v1, v1, [B

    .line 941
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 950
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 951
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const/4 p0, 0x1

    return p0

    .line 947
    :cond_0
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 956
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to copy asset resource to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static copyResToFile(ILjava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    .line 896
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 900
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 901
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x1000

    .line 903
    new-array v1, v1, [B

    .line 908
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 917
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 918
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const/4 p0, 0x1

    return p0

    .line 914
    :cond_0
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 923
    :catch_0
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to copy raw resource to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static createFileNameFromUrl(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 696
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeDecodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "&"

    .line 700
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 703
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "redirect.mp3"

    .line 704
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move p1, v4

    .line 708
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move p1, v4

    :cond_1
    if-ltz v2, :cond_2

    move p1, v4

    :cond_2
    if-ltz v1, :cond_3

    move p1, v4

    :cond_3
    const/4 v2, 0x2

    if-eqz p1, :cond_7

    .line 724
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 726
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 727
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 729
    invoke-static {p4}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result p0

    .line 730
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileExtensionForType(I)Ljava/lang/String;

    move-result-object p0

    .line 734
    :cond_4
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "mpga"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p0, "mp3"

    :cond_6
    const-string p1, "%s%s.%s"

    const/4 p4, 0x3

    .line 738
    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->makeValidPodcastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v4

    aput-object p0, p4, v2

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 741
    :cond_7
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->makeValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-gez v1, :cond_8

    return-object p0

    :cond_8
    const-string p1, "="

    .line 747
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_9

    .line 748
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v2

    if-ge p1, p2, :cond_9

    add-int/2addr p1, v4

    .line 749
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p0
.end method

.method public static dumpEnvironment()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "MissingPermission"
        }
    .end annotation

    .line 1936
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPrimaryStorageMount()Ljava/io/File;

    move-result-object v0

    .line 1937
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getOptionalStorageMount()Ljava/io/File;

    move-result-object v1

    .line 1938
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->findAndroidReportedExternalStorage()Ljava/io/File;

    move-result-object v2

    .line 1940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BeyondPod Version: "

    .line 1942
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->getShortLicenseKind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DEVICE: "

    .line 1944
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") with Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DEVICE STORAGE\n\n"

    .line 1946
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u2022 Primary Storage: "

    .line 1948
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    const-string v4, " (read Only)"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v4, "\u2022 Optional Storage: "

    .line 1951
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string v4, " (read Only)"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v2, :cond_4

    const-string v4, "\u2022 Application root on external SD: "

    .line 1954
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isFolderReallyWritable(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    goto :goto_2

    :cond_3
    const-string v2, " (read Only)"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, "\u2022 Cached SD Card Root: "

    .line 1957
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->preferLastSDCardRoot()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "use cached root, "

    goto :goto_3

    :cond_5
    const-string v2, "autodetect root, "

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->keepMetadataForMissingEpisodes()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "keep"

    goto :goto_4

    :cond_6
    const-string v2, "delete"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " missing episodes)\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2022 External SD State: "

    .line 1959
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->constructBeyondPodRootIn(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "\u2022 BP location on SD: "

    .line 1962
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", exists: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    .line 1966
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->constructBeyondPodRootIn(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "\u2022 BP location on Optional: "

    .line 1967
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exists: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "\u2022 BP will use: "

    .line 1970
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->freeSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "\u2022 Free space: "

    .line 1973
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->versionSupportsPermissions()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1977
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->hasExternalStoragePermission()Z

    move-result v0

    const-string v1, "\u2022 Has SD Card read/write Permission: "

    .line 1978
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_8

    const-string v0, "\u2022 Download folder requires permission: "

    .line 1982
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->needsStoragePermissionForPath(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v0, "\nBATTERY INFO\n\n"

    .line 1987
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 status: "

    .line 1989
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lmobi/beyondpod/BeyondPodApplication;->batteryStatus:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 Level: "

    .line 1990
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lmobi/beyondpod/BeyondPodApplication;->batteryLevel:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 Plugged In: "

    .line 1991
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lmobi/beyondpod/BeyondPodApplication;->batteryPlugged:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 Is Charging? "

    .line 1992
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDeviceCharging()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 Is Plugged In? "

    .line 1993
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDevicePlugged()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    const-string v0, "\u2022 Is Dozing? "

    .line 1996
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDeviceIdle()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 Is Whitelisted? "

    .line 1997
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isWhiteListed()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "\n\nFEEDLY INFO\n\n"

    .line 2001
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 Logged In: "

    .line 2003
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Yes"

    goto :goto_5

    :cond_a
    const-string v0, "No"

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthAccessTokenExpiration()Ljava/util/Date;

    move-result-object v0

    .line 2006
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v2, v4, v6

    if-lez v2, :cond_b

    const-string v2, "\u2022 Log In Expires: "

    .line 2007
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "\u2022 Has User: "

    .line 2010
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "Yes"

    goto :goto_6

    :cond_c
    const-string v0, "No"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 Can Re-Log in: "

    .line 2011
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Yes"

    goto :goto_7

    :cond_d
    const-string v0, "No"

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nAPPLICATION INFO\n\n"

    .line 2014
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 Playback Speed Enabled: "

    .line 2016
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableAudioPlugins()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Yes"

    goto :goto_8

    :cond_e
    const-string v0, "No"

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2022 CDS Enabled: "

    .line 2017
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Yes"

    goto :goto_9

    :cond_f
    const-string v0, "No"

    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v2, "connectivity"

    .line 2021
    invoke-virtual {v0, v2}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    const-string v0, "\u2022  failed to retrieve device ConnectivityManager!"

    .line 2025
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 2030
    :cond_10
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v2

    const/4 v4, 0x0

    if-lt v2, v1, :cond_12

    .line 2033
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2034
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v5, v2

    move v6, v4

    :goto_a
    if-ge v6, v5, :cond_11

    aget-object v7, v2, v6

    .line 2035
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 2038
    :cond_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/NetworkInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkInfo;

    goto :goto_b

    .line 2042
    :cond_12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_b
    const-string v1, "\nNETWORK CONNECTIONS ("

    .line 2045
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")\n\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    array-length v1, v0

    if-nez v1, :cond_13

    const-string v0, "\u2022  There are no network connections!"

    .line 2049
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 2052
    :cond_13
    array-length v1, v0

    :goto_c
    if-ge v4, v1, :cond_14

    aget-object v2, v0, v4

    const-string v5, "\u2022  type: "

    .line 2053
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Available: "

    .line 2054
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Connected: "

    .line 2055
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", State: "

    .line 2056
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Roaming: "

    .line 2057
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2062
    :cond_14
    :goto_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to determine SD card location! reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpUpdateStatistics()V
    .locals 4

    .line 1142
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_SaveStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1143
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_SaveStatisticsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static dumpUpdateStatisticsInternal()V
    .locals 16

    const/4 v0, 0x0

    .line 1161
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1162
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->backUpExistingUpdateLog()V

    .line 1164
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->feedUpdateLogFilePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0x3e80

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "<html><head><meta content=\'text/html; charset=utf-8\' http-equiv=\'content-type\'><style type=\'text/css\'>.bpAction {color: Gray;text-decoration: none; margin-top:20px;margin-bottom:6px;margin-left:4px;margin-right:4px;-webkit-border-radius: 5px;border: 1px solid #C0C0C0; padding-top: 3px; padding-bottom: 3px; padding-left: 5px; padding-right: 5px;}</style></head><body bgcolor=\'AliceBlue\'>"

    .line 1165
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1167
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    iget-boolean v0, v0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->isUnattended:Z

    .line 1168
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v2

    iget-object v2, v2, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->downloadTime:Ljava/util/Date;

    if-nez v2, :cond_1

    .line 1171
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    iget-object v2, v0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->downloadTime:Ljava/util/Date;

    .line 1172
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    iget-boolean v0, v0, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->isUnattended:Z

    .line 1175
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM d h:mm a"

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v5, "<p style=\'color: Gray; font-size: 80%%;\' align=\'right\'>Last Updated: %s, took: %s min.<br/><i>%s</i><p>"

    const/4 v6, 0x3

    .line 1177
    new-array v7, v6, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1179
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, "Unknown!"

    :goto_0
    aput-object v3, v7, v4

    if-eqz v2, :cond_3

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 1180
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 1181
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v12, v8, v10

    invoke-direct {v3, v12, v13}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMinutes()D

    move-result-wide v2

    .line 1180
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v2, "0"

    :goto_1
    const/4 v3, 0x1

    aput-object v2, v7, v3

    if-eqz v0, :cond_4

    const-string v0, "Scheduled Update"

    goto :goto_2

    :cond_4
    const-string v0, "Manual Update"

    :goto_2
    const/4 v2, 0x2

    aput-object v0, v7, v2

    .line 1178
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->lastException:Ljava/lang/Exception;

    if-eqz v0, :cond_5

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<div style=\'margin-top:15px;color:Firebrick; font-weight: bold;\'>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v5

    iget-object v5, v5, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->lastException:Ljava/lang/Exception;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</div>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1192
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<div style=\'margin-top:15px;color:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getContentViewColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; font-weight: bold;\'>downloaded Feeds</div>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<hr style=\'color: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getContentViewColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; height: 0px;\' /><ul>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1196
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->getSuccessfulDownloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    const-string v7, "<li>%s</li>"

    .line 1198
    new-array v8, v3, [Ljava/lang/Object;

    iget-object v5, v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 1202
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "</ul><div style=\'margin-top:15px;color:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getContentViewColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; font-weight: bold;\'>downloaded Episodes</div>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<hr style=\'color: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getContentViewColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; height: 0px;\' /><ul>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1206
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->getSuccessfulDownloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    const-string v7, "<li>%s (%s in %s)</li>"

    .line 1208
    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v9}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v9, v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadedSize:Ljava/lang/Long;

    .line 1209
    invoke-static {v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    iget-wide v9, v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;->downloadTime:J

    iget-wide v11, v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;->timeToFirstByte:J

    add-long v13, v9, v11

    invoke-static {v13, v14}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getTimeDurationAsString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    .line 1208
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v0, "</ul>"

    .line 1212
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1215
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->getFailedDownloads()Ljava/util/List;

    move-result-object v0

    .line 1216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    const-string v5, "<div style=\'margin-top:15px;color:Firebrick; font-weight: bold;\'>failed Feeds</div>"

    .line 1218
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v5, "<hr style=\'color:Firebrick; height: 0px;\'/><ul style=\'color:Firebrick;\'>"

    .line 1219
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    const-string v6, "<li><b>%s</b><br/><i>reason to fail: %s</i></li>"

    .line 1223
    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 1224
    invoke-virtual {v5}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 1223
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const-string v0, "</ul>"

    .line 1227
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1231
    :cond_9
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->getFailedDownloads()Ljava/util/List;

    move-result-object v0

    .line 1232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    const-string v5, "<div style=\'margin-top:15px;color:Firebrick;font-weight: bold;\'>failed Episodes</div>"

    .line 1234
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v5, "<hr style=\'color:Firebrick; height: 0px;\'/><ul style=\'color:Firebrick;\'>"

    .line 1235
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;

    const-string v6, "<li><b>%s</b><br/><i>reason to fail: %s</i></li>"

    .line 1239
    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v5, Lmobi/beyondpod/downloadengine/DownloadStatistics;->ownerTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 1240
    invoke-virtual {v5}, Lmobi/beyondpod/downloadengine/DownloadStatistics;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 1239
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const-string v0, "</ul>"

    .line 1243
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_b
    const-string v0, "<br/><br/>"

    .line 1247
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<div id=\'detailsPnl\' style=\'margin-top: 5px; margin-left: 5px; margin-bottom: 5px;\'>"

    .line 1249
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<h3> feed Update Details</h3>"

    .line 1251
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1254
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<h3> feed Processing Details</h3>"

    .line 1256
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1259
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<h3>feed Download Details</h3>"

    .line 1261
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1267
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFormattedDeviceConnections()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1269
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFormattedEnvironmentInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "</body>"

    .line 1271
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1273
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->clearStatistics()V

    .line 1274
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/DownloadStatisticsList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadStatisticsList;->clearStatistics()V

    .line 1275
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->statistics()Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/ProcessStatistics$ProcessedFeedList;->clearStatistics()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_c

    .line 1285
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-object v0, v1

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v15, v1

    move-object v1, v0

    move-object v0, v15

    goto :goto_9

    .line 1279
    :catch_1
    :goto_7
    :try_start_3
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to save Update statistics."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_c

    .line 1285
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_c
    :goto_8
    return-void

    :goto_9
    if-eqz v1, :cond_d

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1288
    :catch_3
    :cond_d
    throw v0
.end method

.method public static externalStorageDirectory()Ljava/io/File;
    .locals 4

    .line 1688
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->preferLastSDCardRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1691
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1693
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG: Previously defined user path does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getOptionalStorageFullDataPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1701
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG: Found external storage path at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "DEBUG: Preferring external storage."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1706
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    const-string v1, "DEBUG: Did not detect external storage. Falling through to autodetect."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->autodetectExternalStorageDirectoryInternal()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1711
    :cond_1
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG: Preferring user-defined storage path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1716
    :cond_2
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    const-string v1, "DEBUG: No last storage preference. Falling through to autodetect."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->autodetectExternalStorageDirectoryInternal()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static externalStorageState()Ljava/lang/String;
    .locals 1

    .line 1670
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isExternalStorageLocatedOnSDCard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->preferLastSDCardRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mounted"

    return-object v0

    .line 1671
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1595
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 1599
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, " -> "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static findExternalSDCard()Ljava/io/File;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1858
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->optionalStorageMounts:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1860
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1866
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->findAndroidReportedExternalStorage()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getOptionalStorageRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static findIndexInNumArray(Landroid/content/Context;ILjava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "ITT;)I"
        }
    .end annotation

    .line 2239
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 2242
    :goto_0
    array-length v0, p0

    if-eq p1, v0, :cond_1

    .line 2244
    aget-object v0, p0, p1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static findIndexValueInNumArray(Landroid/content/Context;II)I
    .locals 0

    .line 2256
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method public static findSDRoot(Ljava/io/File;)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1921
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Android/data"

    .line 1923
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 1925
    new-instance p0, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    return-object p0
.end method

.method public static followRedirects(Ljava/lang/String;Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;)V
    .locals 1

    .line 1451
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_RedirectFollowerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1455
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$RedirectFollowerRunnable;-><init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/helpers/CoreHelper$FollowRedirectResult;)V

    .line 1457
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_RedirectFollowerThread:Ljava/lang/Thread;

    .line 1458
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_RedirectFollowerThread:Ljava/lang/Thread;

    const-string p1, "RedirectFollower Thread"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1459
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_RedirectFollowerThread:Ljava/lang/Thread;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1460
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_RedirectFollowerThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static forceBackgroundTile(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 2196
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 2201
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 2202
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_2
    return-void
.end method

.method public static formatSecondsAsMinutes(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-string p0, ""

    return-object p0

    .line 361
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v2, 0x3c

    .line 362
    div-long v4, p0, v2

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 363
    rem-long/2addr p0, v2

    const-wide/16 v2, 0x1e

    cmp-long v4, p0, v2

    if-ltz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 367
    :cond_1
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sFormatter:Ljava/util/Formatter;

    const-string p1, "%d min"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p0, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimeAsString(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-static {p0, p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimeAsString(JZ)Ljava/lang/String;
    .locals 6

    .line 324
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 327
    :try_start_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sTimeArgs:[Ljava/lang/Object;

    const-wide/16 v2, 0xe10

    .line 328
    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x3c

    .line 329
    div-long v4, p0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x2

    .line 330
    div-long v4, p0, v2

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 331
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    .line 332
    rem-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    long-to-double p0, p0

    const-wide v1, 0x40ac200000000000L    # 3600.0

    div-double v1, p0, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    if-eqz p2, :cond_0

    const-string p0, "%1$d:%3$02d:%5$02d"

    goto :goto_0

    :cond_0
    const-string p0, "%1$d:%3$02dh"

    goto :goto_0

    :cond_1
    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    div-double/2addr p0, v1

    cmpl-double p2, p0, v3

    if-lez p2, :cond_2

    const-string p0, "%2$d:%5$02d"

    goto :goto_0

    :cond_2
    const-string p0, "%4$ds"

    .line 346
    :goto_0
    sget-object p1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {p1, p0, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static generateRandomNumber(JJLjava/util/Random;)J
    .locals 4

    if-nez p4, :cond_0

    .line 2267
    new-instance p4, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p4, v0, v1}, Ljava/util/Random;-><init>(J)V

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    .line 2272
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Start cannot exceed End."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-long v0, p2, p0

    const-wide/16 p2, 0x1

    add-long v2, v0, p2

    long-to-double p2, v2

    .line 2276
    invoke-virtual {p4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr p2, v0

    double-to-long p2, p2

    add-long v0, p2, p0

    return-wide v0
.end method

.method public static getApproximateTimeDurationAsString(JZ)Ljava/lang/String;
    .locals 8

    .line 1329
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    .line 1330
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMinutes()D

    move-result-wide p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_1

    if-eqz p2, :cond_0

    const-string p0, "1m"

    goto :goto_0

    :cond_0
    const-string p0, "1 min"

    :goto_0
    return-object p0

    .line 1334
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalHours()D

    move-result-wide p0

    cmpg-double v3, p0, v1

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-gez v3, :cond_4

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMinutes()J

    move-result-wide v2

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move p0, p1

    :cond_2
    int-to-long p0, p0

    add-long v4, v2, p0

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    const-string p0, "m"

    goto :goto_1

    :cond_3
    const-string p0, " min"

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    const-string p2, "%d:%02d"

    goto :goto_2

    :cond_5
    const-string p2, "%d h %d min"

    .line 1339
    :goto_2
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalHours()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMinutes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, p1

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBrowserCacheSizeOnDisk()Ljava/lang/Long;
    .locals 2

    .line 1410
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1415
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLocale()Ljava/util/Locale;
    .locals 1

    .line 2285
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1025
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1030
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "!!!!! failed to retrieve device ConnectivityManager"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1034
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1037
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1038
    new-instance v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;-><init>(Landroid/net/NetworkInfo;Z)V

    return-object v1

    .line 1042
    :cond_2
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "*** ConnectivityManager reported that the device has no active Network Connections"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :goto_1
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;-><init>(Landroid/net/NetworkInfo;Z)V

    return-object v0
.end method

.method public static getDownloadSpeedAsString(JJ)Ljava/lang/String;
    .locals 1

    long-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    long-to-float p0, p0

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float p3, p2, p1

    if-eqz p3, :cond_0

    div-float p1, p0, p2

    .line 1360
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "%.2f KB/Sec"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExternalPlayersFor(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2084
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2086
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2087
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    .line 2089
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 2090
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2092
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2094
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2095
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p0, :cond_3

    .line 830
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p0, v0

    const/high16 v0, 0x4e800000

    cmpl-float v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 833
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%.2f GB"

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x49800000    # 1048576.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    .line 837
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%.0f MB"

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x44800000    # 1024.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_2

    .line 841
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%.0f KB"

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 845
    :cond_2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%.0f Bytes"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getFirstDownloadedUnlockKey()Ljava/io/File;
    .locals 2

    .line 1623
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1624
    new-instance v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper$6;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1634
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1635
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFormattedDeviceConnections()Ljava/lang/String;
    .locals 5

    .line 1295
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    const-string v1, "<div><h3>device Network Connections: <b>%s</b></h3>Background data %s</div>"

    const/4 v2, 0x2

    .line 1296
    new-array v2, v2, [Ljava/lang/Object;

    .line 1297
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->extraInfo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isBackgroundDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Allowed"

    goto :goto_0

    :cond_0
    const-string v0, "Not Allowed"

    :goto_0
    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 1296
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFormattedEnvironmentInfo()Ljava/lang/String;
    .locals 4

    const-string v0, "<div><h3>Environment Info</h3><pre>%s</pre></div>"

    const/4 v1, 0x1

    .line 1302
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->dumpEnvironment()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOptionalStorageFullDataPath()Ljava/io/File;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1870
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findExternalSDCard()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1875
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 1876
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobi.beyondpod"

    .line 1877
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "files"

    .line 1878
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1879
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getOptionalStorageMount()Ljava/io/File;
    .locals 2

    .line 1827
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->customSDCardLocation()Ljava/lang/String;

    move-result-object v0

    .line 1828
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1830
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 1837
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findExternalSDCard()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getOptionalStorageRoot(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1845
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1846
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 1847
    array-length v2, v0

    if-le v2, v1, :cond_1

    .line 1848
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    aget-object v0, v0, v1

    invoke-static {v3, v0}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    return-object p0
.end method

.method public static getPreMPrimaryStorageMount()Ljava/io/File;
    .locals 2

    .line 1802
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1804
    new-instance v0, Ljava/io/File;

    const-string v1, "SECONDARY_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getPrimaryStorageMount()Ljava/io/File;
    .locals 2

    .line 1812
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->versionSupportsPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1813
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPreMPrimaryStorageMount()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1816
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 1821
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPreMPrimaryStorageMount()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetSDKVersion()I
    .locals 1

    .line 2289
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    .line 2290
    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public static getTimeDurationAsString(J)Ljava/lang/String;
    .locals 4

    .line 1307
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    .line 1308
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalSeconds()D

    move-result-wide p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_0

    .line 1309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMilliseconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " mSec."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1312
    :cond_0
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMinutes()D

    move-result-wide p0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_1

    .line 1313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " sec."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1316
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalHours()D

    move-result-wide p0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_2

    .line 1317
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMinutes()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " min. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " sec."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1320
    :cond_2
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getDays()J

    move-result-wide p0

    const-wide/16 v1, 0x1

    cmp-long v3, p0, v1

    if-gez v3, :cond_3

    .line 1321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getHours()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "hr. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMinutes()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " min. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " sec."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1324
    :cond_3
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUpdateLogs()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2156
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->feedUpdateLogFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2162
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2163
    new-instance v2, Lmobi/beyondpod/rsscore/helpers/CoreHelper$7;

    invoke-direct {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$7;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 2173
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2174
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$8;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$8;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static getUserInternalStorageDirectory()Ljava/io/File;
    .locals 1

    .line 1678
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static htmlDecode(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1505
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/EntityArrays;->encoded()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/EntityArrays;->decoded()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static isAlreadyConnectedOrWiFiShouldBeTurnedOnDuringUpdate()Z
    .locals 1

    .line 1072
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectedToNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isWiFiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->turnWiFiDuringUpdate()Z

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

.method public static isBackgroundDataAllowed()Z
    .locals 1

    .line 1067
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isBackgroundDataAllowed()Z

    move-result v0

    return v0
.end method

.method public static isCGBuild()Z
    .locals 2

    .line 2213
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_CGBuild:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2214
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_CGBuild:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2221
    :cond_0
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getInternalPlayerSupportedFileExtensions()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cyanogenmod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2220
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_CGBuild:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_CGBuild:Ljava/lang/Boolean;

    .line 2228
    :goto_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_CGBuild:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isDebugBuild()Z
    .locals 2

    .line 2208
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDeviceCharging()Z
    .locals 2

    .line 1370
    sget v0, Lmobi/beyondpod/BeyondPodApplication;->batteryStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget v0, Lmobi/beyondpod/BeyondPodApplication;->batteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

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

.method public static isDeviceIdle()Z
    .locals 2

    .line 1384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1386
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDevicePlugged()Z
    .locals 4

    .line 1376
    sget v0, Lmobi/beyondpod/BeyondPodApplication;->batteryPlugged:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget v0, Lmobi/beyondpod/BeyondPodApplication;->batteryPlugged:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 1378
    sget v0, Lmobi/beyondpod/BeyondPodApplication;->batteryPlugged:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static isExternalStorageLocatedOnSDCard()Z
    .locals 2

    .line 1884
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1885
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFolderReallyWritable(Ljava/io/File;)Z
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "probe"

    const-string v1, "tmp"

    .line 1903
    invoke-static {v0, v1, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 1904
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFolderReallyWritable(Ljava/lang/String;)Z
    .locals 1

    .line 1890
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1894
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isFolderReallyWritable(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static isOreoCompatible()Z
    .locals 2

    .line 2294
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getTargetSDKVersion()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPartnerPlayerInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 2105
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getInternalPlayerSupportedFileExtensions()Ljava/lang/String;

    move-result-object p0

    const-string p1, "partner_player"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isPartnerSony()Z
    .locals 2

    const-string v0, "Sony Tablet S"

    .line 2233
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Sony Tablet P"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2234
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

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

.method public static isPodcastOrFeedUrl(Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1578
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 1583
    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pcast,itpc,rss,feed,http,https"

    .line 1586
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isRunningOnARC()Z
    .locals 2

    const-string v0, "chromium"

    .line 2281
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUrlValid(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 1426
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/HttpClientFactory;->createClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v1

    .line 1427
    invoke-interface {v1, p0}, Lmobi/beyondpod/downloadengine/IHttpClient;->httpGet(Ljava/lang/String;)V

    .line 1428
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->execute()V

    .line 1430
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->getStatusCode()I

    move-result p0

    const/16 v2, 0xc8

    if-eq p0, v2, :cond_2

    const/16 v2, 0x12d

    if-eq p0, v2, :cond_2

    const/16 v2, 0x12e

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1434
    :cond_2
    :goto_0
    invoke-interface {v1}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return p1
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 2

    .line 409
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 415
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 417
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1

    :catch_0
    return v1
.end method

.method public static isWhiteListed()Z
    .locals 2

    .line 1397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1399
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 1401
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isWiFiConnected()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1053
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1058
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static keepDeviceAwake()V
    .locals 0

    .line 822
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->keepDeviceAwake()V

    return-void
.end method

.method public static loadResToString(I)Ljava/lang/String;
    .locals 4

    .line 863
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const/16 v0, 0x1000

    .line 865
    new-array v0, v0, [B

    .line 866
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 871
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 880
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 881
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 883
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    .line 877
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 887
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    const-string v1, "ResourceUtils failed to load resource to string"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadResourceString(I)Ljava/lang/String;
    .locals 1

    .line 2187
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 572
    invoke-static {p0, p1, p2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logExceptionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static logExceptionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    .line 577
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 578
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " [ "

    .line 580
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " ] "

    .line 582
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 586
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->gatherAnalyticsData()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 595
    :try_start_0
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 596
    invoke-static {p2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    sget-object p1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    const-string p2, "failed to log exception with Crashlytics!"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logUnhandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 567
    invoke-static {p0, p1, p2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logExceptionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static makeValidFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<"

    const-string v1, ""

    .line 785
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    const-string v1, ""

    .line 786
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\"

    const-string v1, ""

    .line 787
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const-string v1, ""

    .line 788
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v1, ""

    .line 789
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "*"

    const-string v1, ""

    .line 790
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "?"

    const-string v1, ""

    .line 791
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, ""

    .line 792
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "|"

    const-string v1, ""

    .line 793
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeValidPodcastName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Podcast"

    .line 802
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "[^a-zA-Z0-9 - ]"

    const-string v1, ""

    .line 803
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 807
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x1e

    if-le p0, v1, :cond_1

    const/4 p0, 0x0

    .line 809
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 813
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    const-string v0, "Podcast"

    :cond_2
    return-object v0
.end method

.method public static nap(I)V
    .locals 2

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    .line 2074
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static powerBatteryStrength()I
    .locals 1

    .line 1365
    sget v0, Lmobi/beyondpod/BeyondPodApplication;->batteryLevel:I

    return v0
.end method

.method private static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1518
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1519
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static safeCreateURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    const/16 v0, 0x64

    :goto_0
    const/4 v1, 0x0

    .line 390
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 399
    :catch_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create URI from"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception v2

    .line 394
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 395
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v0, -0x1

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static safeCreateUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 374
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 378
    :catch_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create URI from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static safeDecodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 761
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 765
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to URL decode url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "! reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static safeEncodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 774
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 778
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to URL encode url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "! reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static setTraceBroadcastContext(Landroid/os/Handler;)V
    .locals 0

    .line 314
    sput-object p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_TraceBroadcastHandler:Landroid/os/Handler;

    return-void
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 2114
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static touchFile(Ljava/io/File;)V
    .locals 2

    .line 854
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_0
    return-void
.end method

.method public static truncateLogFile(Ljava/io/File;)V
    .locals 5

    .line 517
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 523
    invoke-virtual {p0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 526
    new-instance p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$2;

    invoke-direct {p0, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 536
    array-length v0, p0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    return-void

    .line 539
    :cond_0
    array-length v0, p0

    new-instance v2, Lmobi/beyondpod/rsscore/helpers/CoreHelper$3;

    invoke-direct {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$3;-><init>()V

    invoke-static {p0, v3, v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 555
    :goto_0
    array-length v0, p0

    sub-int/2addr v0, v1

    if-eq v3, v0, :cond_1

    .line 556
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 561
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->TAG:Ljava/lang/String;

    const-string v1, "failed to truncate the log file!"

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static truncateLogFileIfNecessary()V
    .locals 6

    .line 499
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->logFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/32 v2, 0xc800

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 501
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->truncateLogFile(Ljava/io/File;)V

    .line 505
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->syncLogFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 507
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->truncateLogFile(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public static vibrate(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1610
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 1611
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1612
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-long v1, p0

    const/16 p0, 0xa

    .line 1613
    invoke-static {v1, v2, p0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_0
    int-to-long v1, p0

    .line 1616
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static whoCalledMe()Ljava/lang/String;
    .locals 6

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    .line 484
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 486
    aget-object v3, v1, v2

    .line 487
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 488
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    .line 490
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " <= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 453
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static writeLogEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 443
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_0
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 433
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 670
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/rsscore/helpers/CoreHelper$4;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 625
    invoke-static {p0, p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 618
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 619
    invoke-static {p0, p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInternal(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static writeTraceEntryInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 632
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 633
    sget-wide v2, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_LastTraceTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 635
    sget-wide v2, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_LastTraceTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_LastTraceTime:J

    sub-long v5, v0, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms. since last trace)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    long-to-float v2, v4

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    const-string v4, "  (%.2f s. since last trace)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {p1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-string p2, "BeyondPod"

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p2, "BeyondPod"

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_1
    sput-wide v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_LastTraceTime:J

    .line 655
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_TraceBroadcastHandler:Landroid/os/Handler;

    if-eqz p0, :cond_3

    .line 657
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->_TraceBroadcastHandler:Landroid/os/Handler;

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 658
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 659
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "BeyondPod"

    .line 664
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public static writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 611
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 612
    invoke-static {p0, p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInternal(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
