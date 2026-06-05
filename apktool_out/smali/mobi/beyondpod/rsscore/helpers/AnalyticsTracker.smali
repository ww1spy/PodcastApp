.class public Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;
.super Ljava/lang/Object;
.source "AnalyticsTracker.java"


# static fields
.field private static final CATEGORY_ANDROID_AUTO:Ljava/lang/String; = "Android AUTO"

.field private static final CATEGORY_ANDROID_WEAR:Ljava/lang/String; = "Android WEAR"

.field private static final CATEGORY_APPLICATION_STARTS:Ljava/lang/String; = "Application Starts"

.field private static final CATEGORY_COMMAND:Ljava/lang/String; = "Commands Executed"

.field private static final CATEGORY_MEDIA_PLAYBACK:Ljava/lang/String; = "Media Playback"

.field private static final CATEGORY_PLAYER_CONTROLS:Ljava/lang/String; = "Player Controls"

.field private static final CATEGORY_REPOSITORY:Ljava/lang/String; = "Repository"

.field private static final CATEGORY_SHARE_PODCAST:Ljava/lang/String; = "Share Podcast"

.field private static final CATEGORY_TASK_SCHEDULER:Ljava/lang/String; = "Scheduled tasks"

.field private static final CATEGORY_UI_CONFIGS:Ljava/lang/String; = "User Interface Config"

.field private static final CATEGORY_UPDATE_DOWNLOAD:Ljava/lang/String; = "Update and Downloads"

.field private static final CATEGORY_WIDGET_COMMAND:Ljava/lang/String; = "Widget Commands Executed"

.field private static final LABEL_VALUE:Ljava/lang/String; = "value"

.field private static final PARAM_CARD_TYPE_ALL_PUBLISHED:Ljava/lang/String; = "Card size All Published"

.field private static final PARAM_CARD_TYPE_MY_EPISODES:Ljava/lang/String; = "Card size My Episodes"

.field private static final PARAM_CATEGORIES_LOADED:Ljava/lang/String; = "Categories Loaded"

.field private static final PARAM_FEEDS_LOADED:Ljava/lang/String; = "Feeds Loaded"

.field private static final PARAM_LICENSE_TYPE:Ljava/lang/String; = "License type"

.field private static final PARAM_SMART_PLAY_LOADED:Ljava/lang/String; = "SmartPlays Loaded"

.field private static final PARAM_THEME_TYPE:Ljava/lang/String; = "Theme type"

.field private static final PARAM_TRACKS_LOADED:Ljava/lang/String; = "tracks Loaded"

.field private static final PARAM_UPDATE_TYPE:Ljava/lang/String; = "event type"

.field private static final TAG:Ljava/lang/String; = "AnalyticsTracker"

.field public static final VIEW_ADD_FEED_CATEGORIES:I = 0xd

.field public static final VIEW_ADD_FEED_INTERESTS:I = 0xf

.field public static final VIEW_ADD_FEED_INTERNATIONAL:I = 0xe

.field public static final VIEW_ADD_FEED_PUBLISHERS:I = 0xc

.field public static final VIEW_ADD_FEED_RECOMMENDED:I = 0xb

.field public static final VIEW_ADD_FEED_SEARCH:I = 0x10

.field public static final VIEW_ADD_FEED_TRENDING:I = 0xa

.field public static final VIEW_MASTER_MY_EPISODES_ALL_PUBLISHED:I = 0x3

.field public static final VIEW_MASTER_MY_EPISODES_CATEGORY:I = 0x1

.field public static final VIEW_MASTER_MY_EPISODES_FEED:I = 0x0

.field public static final VIEW_MASTER_MY_EPISODES_VIRTUAL_FEED:I = 0x4

.field public static final VIEW_MASTER_NAVIGATOR:I = 0x5

.field public static final VIEW_MASTER_PLAYER_CAR_MODE:I = 0x8

.field public static final VIEW_MASTER_PLAYER_FULL_SCREEN:I = 0x7

.field public static final VIEW_MASTER_PLAYER_PLAYLIST_PAGER:I = 0x9

.field public static final VIEW_MASTER_PLAYLIST:I = 0x6

.field public static final VIEW_MASTER_WHAT_TO_PLAY:I = 0x2

.field private static _PlaybackSpeedFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#x"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatch()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 232
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    return-void
.end method

.method private static getAppTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    .line 84
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getAnalyticsTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    return-object v0
.end method

.method private static getCardSizeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "Full"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "Medium"

    return-object p0

    :cond_1
    const-string p0, "Small"

    return-object p0
.end method

.method public static onApplicationStartedLocked()V
    .locals 4

    const-string v0, "Application Starts"

    const-string v1, "License type"

    const-string v2, "Trial"

    const/4 v3, 0x0

    .line 238
    invoke-static {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onApplicationStartedUnlocked(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Application Starts"

    const-string v1, "License type"

    const/4 v2, 0x0

    .line 243
    invoke-static {v0, v1, p0, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onAudioPlaybackStarted(ZF)V
    .locals 6

    const-string v0, "Media Playback"

    const-string v1, "Audio Playback"

    if-eqz p0, :cond_0

    const-string v2, "Streaming"

    goto :goto_0

    :cond_0
    const-string v2, "downloaded"

    :goto_0
    const/4 v3, 0x0

    .line 332
    invoke-static {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    if-nez p0, :cond_1

    const-string p0, "Media Playback"

    const-string v0, "Playback Speed"

    .line 335
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    float-to-double v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, v3}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    return-void
.end method

.method public static onAutoConnected(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Android AUTO"

    const-string v1, "Auto Connected"

    .line 274
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "Unknown"

    :cond_0
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onBPScheduledTaskStarted(Ljava/lang/String;)V
    .locals 2

    const-string p0, "Scheduled tasks"

    const-string v0, "Scheduled Task"

    const/4 v1, 0x0

    .line 326
    invoke-static {p0, v0, v1, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onBatchDownloadStarted(I)V
    .locals 5

    const-string v0, "Update and Downloads"

    const-string v1, "Episode Download"

    const-string v2, "Num Episodes"

    int-to-long v3, p0

    .line 305
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onBatchUpdateStarted(I)V
    .locals 5

    const-string v0, "Update and Downloads"

    const-string v1, "feed Update"

    const-string v2, "Num Feeds"

    int-to-long v3, p0

    .line 300
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onCaptureUIConfigs()V
    .locals 4

    const-string v0, "User Interface Config"

    const-string v1, "Theme type"

    .line 248
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->activeTheme()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "Light theme"

    goto :goto_0

    :cond_0
    const-string v2, "Dark Theme"

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "User Interface Config"

    const-string v1, "Card size All Published"

    .line 249
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->getCardSizeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "User Interface Config"

    const-string v1, "Card size My Episodes"

    .line 250
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->episodeCardSize()I

    move-result v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->getCardSizeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onCategoriesLoaded(I)V
    .locals 5

    const-string v0, "Repository"

    const-string v1, "Categories Loaded"

    const-string v2, "value"

    int-to-long v3, p0

    .line 387
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onChangeSync(I)V
    .locals 5

    const-string v0, "Update and Downloads"

    const-string v1, "Change Tracking Sync"

    const-string v2, "Change Count"

    int-to-long v3, p0

    .line 315
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onCharmSleepSelected(Z)V
    .locals 5

    const-string v0, "Player Controls"

    const-string v1, "Charm Sleep"

    const-string v2, "Long Press"

    if-eqz p0, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 350
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onCharmSpeedSelected(Z)V
    .locals 5

    const-string v0, "Player Controls"

    const-string v1, "Charm Speed"

    const-string v2, "Long Press"

    if-eqz p0, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 360
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onChromecastPlaybackStarted()V
    .locals 3

    const-string v0, "Media Playback"

    const-string v1, "Chromecast Playback"

    const/4 v2, 0x0

    .line 345
    invoke-static {v0, v1, v2, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Commands Executed"

    const/4 v1, 0x0

    .line 371
    invoke-static {v0, p0, p1, v1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onEpisodeShared()V
    .locals 3

    const-string v0, "Share Podcast"

    const-string v1, "Episode Shared"

    const/4 v2, 0x0

    .line 269
    invoke-static {v0, v1, v2, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 181
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->getAppTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 186
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 187
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    :cond_1
    if-eqz p3, :cond_2

    .line 193
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 197
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 201
    sget-object p1, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tracker send error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onFeedShared()V
    .locals 3

    const-string v0, "Share Podcast"

    const-string v1, "feed Shared"

    const/4 v2, 0x0

    .line 265
    invoke-static {v0, v1, v2, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onGReaderSync(I)V
    .locals 5

    const-string v0, "Update and Downloads"

    const-string v1, "Feedly Sync"

    const-string v2, "Item Count"

    int-to-long v3, p0

    .line 310
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onRepositoryFeedsLoaded(I)V
    .locals 5

    const-string v0, "Repository"

    const-string v1, "Feeds Loaded"

    const-string v2, "value"

    int-to-long v3, p0

    .line 392
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onRepositoryTracksLoaded(I)V
    .locals 5

    const-string v0, "Repository"

    const-string v1, "tracks Loaded"

    const-string v2, "value"

    int-to-long v3, p0

    .line 377
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onSkipToEnd()V
    .locals 3

    const-string v0, "Player Controls"

    const-string v1, "Skip to End"

    const/4 v2, 0x0

    .line 355
    invoke-static {v0, v1, v2, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onSmartPlaylistLoaded(I)V
    .locals 5

    const-string v0, "Repository"

    const-string v1, "SmartPlays Loaded"

    const-string v2, "value"

    int-to-long v3, p0

    .line 382
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onSystemScheduledTaskStarted(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Scheduled tasks"

    const-string v1, "System Broadcast"

    const/4 v2, 0x0

    .line 321
    invoke-static {v0, v1, p0, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private static onTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 209
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->getAppTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    .line 214
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 215
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    if-eqz p3, :cond_1

    .line 218
    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    :cond_1
    if-eqz p4, :cond_2

    .line 221
    invoke-virtual {v1, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 223
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public static onVideoPlaybackStarted(Z)V
    .locals 3

    const-string v0, "Media Playback"

    const-string v1, "Video Playback"

    if-eqz p0, :cond_0

    const-string p0, "Streaming"

    goto :goto_0

    :cond_0
    const-string p0, "downloaded"

    :goto_0
    const/4 v2, 0x0

    .line 340
    invoke-static {v0, v1, p0, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onViewDisplayed(I)V
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "Add feed - Search"

    .line 169
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "Add feed - Interests"

    .line 165
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p0, "Add feed - International"

    .line 161
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p0, "Add feed - Categories"

    .line 157
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p0, "Add feed - Publishers"

    .line 153
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p0, "Add feed - Recommended"

    .line 149
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p0, "Add feed - Trending"

    .line 145
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p0, "Master - Player - Playlist Pager"

    .line 141
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string p0, "Master - Player - Car Mode"

    .line 137
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string p0, "Master - Player - Full Screen"

    .line 133
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    const-string p0, "Master - Playlist"

    .line 129
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    const-string p0, "Master - Navigator"

    .line 125
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    const-string p0, "Master - feed Virtual - My Episodes"

    .line 121
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_d
    const-string p0, "Master - feed - All Published"

    .line 105
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_e
    const-string p0, "Master - What to Play"

    .line 117
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_f
    const-string p0, "Master - Category - My Episodes"

    .line 113
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_10
    const-string p0, "Master - feed - My Episodes"

    .line 109
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static onViewDisplayed(Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->getAppTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 95
    new-instance p0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public static onWearConnected(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Android WEAR"

    const-string v1, "Wear Connected"

    .line 279
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "Unknown"

    :cond_0
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onWearPlayEpisode()V
    .locals 3

    const-string v0, "Android WEAR"

    const-string v1, "Wear Play Episode"

    const/4 v2, 0x0

    .line 284
    invoke-static {v0, v1, v2, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onWearPlayFromVoice()V
    .locals 3

    const-string v0, "Android WEAR"

    const-string v1, "Wear Play from Voice"

    const/4 v2, 0x0

    .line 294
    invoke-static {v0, v1, v2, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onWearPlaySmartPlay()V
    .locals 3

    const-string v0, "Android WEAR"

    const-string v1, "Wear Start SmartPlay"

    const/4 v2, 0x0

    .line 289
    invoke-static {v0, v1, v2, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static onWidgetCommand(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Widget Commands Executed"

    const-string v1, "Widget Command"

    const/4 v2, 0x0

    .line 366
    invoke-static {v0, v1, p0, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
