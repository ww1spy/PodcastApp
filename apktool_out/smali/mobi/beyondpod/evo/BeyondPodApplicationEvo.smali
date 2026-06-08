.class public Lmobi/beyondpod/evo/BeyondPodApplicationEvo;
.super Lmobi/beyondpod/BeyondPodApplication;
.source "BeyondPodApplicationEvo.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static _MasterActivity:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static _MediaAppWidgetProvider:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

.field private static _MediaAppWidgetProviderLockScreen:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

.field private static _MediaAppWidgetProviderXLarge:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;


# instance fields
.field _UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lmobi/beyondpod/BeyondPodApplication;-><init>()V

    return-void
.end method

.method private setSyncNotificationInternal(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->masterViewClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    .line 232
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x1080088

    .line 234
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 235
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v5, "progress"

    .line 236
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v5, 0x7f06002a

    .line 237
    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    .line 238
    invoke-static {v1, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 240
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 242
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object p3

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->updateNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public appKind()Ljava/lang/String;
    .locals 2

    .line 324
    invoke-virtual {p0}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clearChangeSyncNotification()V
    .locals 3

    .line 216
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const/16 v2, 0xb3

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->clearNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public clearReaderSyncNotification()V
    .locals 3

    .line 209
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const/16 v2, 0xab

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->clearNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public configureDefaults()V
    .locals 4

    .line 330
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->configureDefaults()V

    const/4 v0, 0x1

    .line 331
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setShowContentListPostImages(Z)V

    .line 332
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setEnableBrowserPlugins(Z)V

    .line 333
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setAllowVideosInPlaylist(Z)V

    .line 335
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setSetAsPlayedOnMarkRead(Z)V

    const/4 v1, 0x0

    .line 336
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setItemFilter(I)V

    .line 337
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setShowPlayerPausedNotication(Z)V

    .line 339
    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->contentThemes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setContentTheme(Ljava/lang/String;)V

    .line 340
    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->contentFontSizes:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setDefaultDocFontSize(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setAllowPullToRefresh(Z)V

    .line 345
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setAttachDownloadedPodcastsWhenSharing(Z)V

    .line 346
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setUseExternalBrowser(Z)V

    :cond_0
    return-void
.end method

.method public configureDefaultsForVersionUpgrade(II)V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x9c49

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    if-lt p2, v1, :cond_0

    .line 379
    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->contentThemes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setContentTheme(Ljava/lang/String;)V

    .line 380
    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->contentFontSizes:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setDefaultDocFontSize(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->resetDefaultPrefs()V

    .line 385
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setFeedSelectedAction(I)V

    :cond_0
    const v1, 0x9c4d

    if-ge p1, v1, :cond_1

    if-lt p2, v1, :cond_1

    .line 389
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setHideReadFeeds(Z)V

    :cond_1
    const v0, 0x9c61

    if-ge p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 394
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setShowPlayerPausedNotication(Z)V

    :cond_2
    const v0, 0x9c58

    if-gt p1, v0, :cond_3

    const p1, 0x9c59

    if-lt p2, p1, :cond_3

    .line 400
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setGatherAnalyticsData(Z)V

    :cond_3
    return-void
.end method

.method public executeCommandPlaySmartPlayList(ILandroid/content/Context;)V
    .locals 0

    .line 312
    invoke-static {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p1

    if-nez p1, :cond_0

    .line 315
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->primarySmartPlay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 318
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlaySmartPlayList(ILandroid/content/Context;)Z

    :cond_1
    return-void
.end method

.method public getDefaultNotificationForService(Landroid/app/Service;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->masterViewClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.action.VIEW_LATEST"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f080232

    .line 183
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 184
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v4, -0x2

    .line 185
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v4, "service"

    .line 186
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v4, 0x7f06002a

    .line 187
    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 188
    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, ""

    .line 190
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 195
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result p1

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    const/4 p1, -0x1

    .line 196
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 199
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public getDemoContent()[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;
    .locals 1

    .line 353
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->loadSeedFeedImages()[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;

    move-result-object v0

    return-object v0
.end method

.method public getExternalLicenseKey()Ljava/lang/String;
    .locals 1

    .line 413
    invoke-static {}, Lmobi/beyondpod/rsscore/ExternalLicenseFactory;->getLicenseKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialize()V
    .locals 0

    .line 72
    invoke-super {p0}, Lmobi/beyondpod/BeyondPodApplication;->initialize()V

    return-void
.end method

.method public initializeWidgets()V
    .locals 1

    .line 286
    new-instance v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;-><init>()V

    sput-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MediaAppWidgetProvider:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    .line 287
    sget-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MediaAppWidgetProvider:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->initialize()V

    .line 289
    new-instance v0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderXLarge;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderXLarge;-><init>()V

    sput-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MediaAppWidgetProviderXLarge:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    .line 290
    sget-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MediaAppWidgetProviderXLarge:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->initialize()V

    .line 292
    new-instance v0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;-><init>()V

    sput-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MediaAppWidgetProviderLockScreen:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    .line 293
    sget-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MediaAppWidgetProviderLockScreen:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->initialize()V

    return-void
.end method

.method public isLockScreenWidgetInstalled()Z
    .locals 1

    .line 407
    sget-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MediaAppWidgetProviderLockScreen:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MediaAppWidgetProviderLockScreen:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->hasInstances()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public masterActivity()Landroid/app/Activity;
    .locals 1

    .line 82
    sget-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MasterActivity:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MasterActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public masterViewClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 102
    const-class v0, Lmobi/beyondpod/ui/views/MasterView;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const-string v0, "BPDiag"
    const-string v1, "EVO-0:method-entered"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    # DIAG: Toast before super.onCreate() (before BeyondPodApplication.initialize() runs)
    const-string v0, "BP: pre-super"
    const/4 v1, 0x1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "BPDiag"
    const-string v1, "EVO-1:about-to-call-super"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :try_start_super
    invoke-super {p0}, Lmobi/beyondpod/BeyondPodApplication;->onCreate()V
    :try_end_super
    .catch Ljava/lang/Throwable; {:try_start_super .. :try_end_super} :catch_super

    # DIAG: Toast after super.onCreate() - if this appears, initialize() completed OK
    const-string v0, "BP: post-super"
    const/4 v1, 0x1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_after_super

    :catch_super
    move-exception v0

    # Build error string: class name + message
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v1

    # Prefix it
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "CRASH in BPA.onCreate: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

    # Show long Toast with the exception
    const/4 v3, 0x1
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :goto_after_super

    # Crashlytics removed — service is defunct
    # Calligraphy removed — uses restricted reflection APIs blocked on targetSdk >= 28

    return-void
.end method

.method public playFromQuery(Ljava/lang/String;)Z
    .locals 0

    .line 419
    invoke-static {p1}, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->cmdPlayFromVoiceSearch(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public refreshWidgets()V
    .locals 1

    .line 299
    new-instance v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;-><init>()V

    .line 300
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->refreshViews()V

    .line 302
    new-instance v0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderXLarge;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderXLarge;-><init>()V

    .line 303
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderXLarge;->refreshViews()V

    .line 305
    new-instance v0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;-><init>()V

    .line 306
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;->refreshViews()V

    return-void
.end method

.method public sendCommandToVideoPlayer(Landroid/content/Intent;)Z
    .locals 1

    .line 365
    invoke-virtual {p0}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->isMovieViewActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 368
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSendMediaCommandToVideoPlayer(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setChangeSyncNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb3

    .line 223
    invoke-direct {p0, v0, p1, p2}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->setSyncNotificationInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMasterActivity(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_1

    .line 92
    sget-object p1, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MasterActivity:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 93
    sget-object p1, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MasterActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->clear()V

    :cond_0
    const/4 p1, 0x0

    .line 95
    sput-object p1, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MasterActivity:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_MasterActivity:Ljava/lang/ref/SoftReference;

    :goto_0
    return-void
.end method

.method public setNotification(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 12

    .line 107
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_TYPE_EXTRA:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 108
    sget-object v2, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_TICKER_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    sget-object v3, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_LINE1_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    sget-object v4, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_LINE2_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    sget-object v5, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->NOTIFICATION_PROGRESS:Ljava/lang/String;

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v5, 0x5

    const/16 v6, 0x81

    const/16 v7, 0x80

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    const v0, 0x1080081

    :goto_0
    move v6, v7

    move-object v5, v8

    goto :goto_1

    :pswitch_0
    const v0, 0x1080078

    .line 135
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lmobi/beyondpod/ui/views/HtmlViewActivity;

    invoke-direct {v5, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getFeedUpdateLogURL()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v10, "title"

    const-string v11, "Update and Download Log"

    .line 137
    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "IsFeedContentLink"

    .line 138
    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    iput-object v8, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    # Error notification: elevate priority so it appears as a heads-up
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    const v0, 0x7f0801dc

    .line 127
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->masterViewClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v5, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "mobi.beyondpod.action.VIEW_LATEST"

    .line 128
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iput-object v8, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_0
    const v0, 0x7f080235

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_1

    .line 144
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->hasWorkToDo()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->queueCount()I

    move-result v10

    if-lez v10, :cond_2

    .line 146
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-direct {v5, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    :cond_2
    iget-object v10, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v10, :cond_3

    .line 151
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v10

    invoke-virtual {v10, p1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    iput-object v10, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 152
    iget-object v10, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 155
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/high16 v10, 0x8000000

    invoke-static {p1, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 159
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f06002a

    .line 161
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "progress"

    .line 162
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    if-ne v6, v7, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v9

    .line 163
    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    if-ltz p2, :cond_6

    .line 166
    iget-object v0, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v9

    :goto_3
    invoke-virtual {v0, v1, p2, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_4

    .line 168
    :cond_6
    iget-object p2, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p2, v9, v9, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 170
    :goto_4
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object p2

    iget-object v0, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2, p1, v6, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->updateNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    if-eq v6, v7, :cond_7

    .line 173
    iput-object v8, p0, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->_UpdateNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPlayerNotification(Landroid/app/Service;Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->isMainUIWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showPlayerPausedNotication()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 253
    invoke-static {p1, p2, v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createPlayerNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Z)Landroid/app/Notification;

    move-result-object p2

    .line 254
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->startForegroundAndShowNotification(Landroid/app/Service;ILandroid/app/Notification;)V

    return-void
.end method

.method public setPlayerPauseNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->isMainUIWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showPlayerPausedNotication()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 269
    instance-of p2, p1, Landroid/app/Service;

    if-eqz p2, :cond_3

    .line 271
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object p2

    check-cast p1, Landroid/app/Service;

    invoke-virtual {p2, p1, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->stopForeground(Landroid/app/Service;I)V

    goto :goto_1

    .line 277
    :cond_2
    invoke-static {p1, p2, v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createPlayerNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Z)Landroid/app/Notification;

    move-result-object p2

    .line 278
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p2}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->updateNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setReaderSyncNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xab

    .line 204
    invoke-direct {p0, v0, p1, p2}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->setSyncNotificationInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startVideoPlayback(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 359
    invoke-virtual {p0}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayMovie(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method
