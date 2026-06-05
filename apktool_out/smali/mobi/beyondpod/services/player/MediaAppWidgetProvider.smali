.class public Lmobi/beyondpod/services/player/MediaAppWidgetProvider;
.super Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;
.source "MediaAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;
    }
.end annotation


# static fields
.field private static final PLAYBACK_ERROR:Ljava/lang/String;

.field private static final PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

.field private static final PLAYLIST_IS_EMPTY:Ljava/lang/String;

.field private static final PLAYLIST_IS_EMPTY_START_SMARTPLAY:Ljava/lang/String;

.field private static final SIZE_LARGE:I = 0x5

.field private static final SIZE_MED:I = 0x3

.field private static final SIZE_MINI:I = 0x1

.field private static final SIZE_SMALL:I = 0x2

.field protected static final SIZE_XLARGE:I = 0x6

.field private static final SIZE_XMED:I = 0x4

.field private static final STARTING_STREAM_S:Ljava/lang/String;

.field static TAG:Ljava/lang/String; = "MediaAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field public static _NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

.field public static _PlayerNotification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f10042a

    .line 60
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->STARTING_STREAM_S:Ljava/lang/String;

    const v0, 0x7f100429

    .line 61
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->PLAYBACK_ERROR:Ljava/lang/String;

    const v0, 0x7f1002d7

    .line 63
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

    const v0, 0x7f1003db

    .line 65
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->PLAYLIST_IS_EMPTY:Ljava/lang/String;

    const v0, 0x7f1003dc

    .line 67
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->PLAYLIST_IS_EMPTY_START_SMARTPLAY:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->packageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobi.beyondpod.services.player.MediaAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->STARTING_STREAM_S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->PLAYBACK_ERROR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->PLAYLIST_IS_EMPTY_START_SMARTPLAY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->PLAYLIST_IS_EMPTY:Ljava/lang/String;

    return-object v0
.end method

.method public static createPlayerNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Z)Landroid/app/Notification;
    .locals 2

    .line 254
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 255
    invoke-static {p0, p1, p2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createPlayerNotificationRemoteViews(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Z)Landroid/app/Notification;

    move-result-object p0

    return-object p0

    .line 257
    :cond_0
    invoke-static {p0, p1, p2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createPlayerNotificationMediaSession(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Z)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static createPlayerNotificationMediaControls(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Z)Landroid/app/Notification;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x1

    .line 413
    invoke-static {p1, v0, p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->buildFromTrack(Lmobi/beyondpod/rsscore/Track;ZLandroid/content/Context;)Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 414
    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    if-eqz p2, :cond_0

    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    invoke-virtual {p2, v1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_0
    sput-object v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    .line 422
    new-instance p2, Landroid/content/ComponentName;

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p2, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 424
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    if-ne v3, v0, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 428
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->masterViewClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "mobi.beyondpod.services.player.MediaPlaybackService"

    .line 429
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 431
    new-instance v5, Landroid/content/Intent;

    const-string v6, "mobi.beyondpod.services.musicservicewidgetcommand.stop"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 433
    invoke-static {p0, v2, v5, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 435
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v6

    invoke-virtual {v6, p0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 436
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v6, 0x7f080231

    xor-int/lit8 v7, v3, 0x1

    .line 437
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 438
    invoke-static {p0, p1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->access$000(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    new-instance v0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 441
    invoke-static {}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getInstance()Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v6

    invoke-virtual {v6}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getMediaSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v0

    const/4 v6, 0x3

    new-array v7, v6, [I

    fill-array-data v7, :array_0

    .line 442
    invoke-virtual {v0, v7}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v0

    .line 439
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    iget-object v0, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    .line 443
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    iget-object v0, v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    .line 444
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/high16 v0, 0x8000000

    .line 446
    invoke-static {p0, v2, v4, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 447
    invoke-virtual {p1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v4, "mobi.beyondpod.services.musicservicewidgetcommand.skipback"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 452
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 453
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v5, 0x7f080072

    const v7, 0x7f1002cf

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 455
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v4, "mobi.beyondpod.services.musicservicewidgetcommand.playpause.notification"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "command"

    const-string v5, "togglepause"

    .line 459
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 461
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 462
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget v1, v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playPauseResource:I

    if-eqz v3, :cond_2

    const v3, 0x7f1002cb

    goto :goto_1

    :cond_2
    const v3, 0x7f1002cc

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 466
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.skipforward"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 472
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 473
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v3, 0x7f080073

    const v4, 0x7f1002d0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 475
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.nexttrack"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 480
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 481
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v3, 0x7f080063

    const v4, 0x7f1002ca

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 483
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 486
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result v0

    if-ge v0, v6, :cond_4

    .line 488
    new-instance v0, Landroid/content/Intent;

    .line 489
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result v1

    if-ge v1, v6, :cond_3

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.skiptoend"

    goto :goto_2

    :cond_3
    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.nexttrack"

    :goto_2
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 492
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 493
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v1, 0x7f080074

    const v2, 0x7f1002d1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object p0

    .line 495
    invoke-virtual {p1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 498
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    sput-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    .line 499
    sget-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private static createPlayerNotificationMediaSession(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Z)Landroid/app/Notification;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    .line 310
    invoke-static {p1, v0, p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->buildFromTrack(Lmobi/beyondpod/rsscore/Track;ZLandroid/content/Context;)Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 311
    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    if-eqz p2, :cond_0

    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    invoke-virtual {p2, v1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_0
    sput-object v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    .line 319
    new-instance p2, Landroid/content/ComponentName;

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p2, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    if-ne v3, v0, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 322
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->masterViewClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "mobi.beyondpod.services.player.MediaPlaybackService"

    .line 323
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 325
    new-instance v5, Landroid/content/Intent;

    const-string v6, "mobi.beyondpod.services.musicservicewidgetcommand.stop"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 327
    invoke-static {p0, v2, v5, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 329
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0c00cf

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 331
    sget-object v7, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    invoke-static {v7, v6}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViews(Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;Landroid/widget/RemoteViews;)V

    .line 332
    invoke-static {v6, p1, p0, v2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewImage(Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;Landroid/content/Context;Z)V

    .line 333
    invoke-static {p0, v6, v2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 338
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v7

    invoke-virtual {v7, p0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f080231

    xor-int/lit8 v9, v3, 0x1

    .line 339
    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 340
    invoke-static {p0, p1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->access$000(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    sget-object v9, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    iget-object v9, v9, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    .line 341
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    sget-object v9, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    iget-object v9, v9, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    .line 342
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    sget-object v9, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    iget-object v9, v9, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    .line 343
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/high16 v9, 0x8000000

    .line 344
    invoke-static {p0, v2, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 345
    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v8, "transport"

    .line 346
    invoke-virtual {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 347
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 349
    invoke-virtual {v4, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 352
    new-instance v4, Landroid/content/Intent;

    const-string v5, "mobi.beyondpod.services.musicservicewidgetcommand.playpause.notification"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "command"

    const-string v6, "togglepause"

    .line 353
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 355
    invoke-static {p0, v2, v4, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 356
    iget v1, v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playPauseResource:I

    if-eqz v3, :cond_2

    const v3, 0x7f1002cb

    goto :goto_1

    :cond_2
    const v3, 0x7f1002cc

    .line 357
    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v7, v1, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 361
    new-instance v1, Landroid/content/Intent;

    const-string v3, "mobi.beyondpod.services.musicservicewidgetcommand.skipback"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 363
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f080072

    const v4, 0x7f1002cf

    .line 364
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-string v3, "mobi.beyondpod.services.musicservicewidgetcommand.skipforward"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 369
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f080073

    const v4, 0x7f1002d0

    .line 370
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 373
    new-instance v1, Landroid/content/Intent;

    const-string v3, "mobi.beyondpod.services.musicservicewidgetcommand.nexttrack"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 375
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f080063

    const v4, 0x7f1002ca

    .line 376
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 379
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    .line 381
    new-instance v1, Landroid/content/Intent;

    .line 382
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result v4

    if-ge v4, v3, :cond_3

    const-string v3, "mobi.beyondpod.services.musicservicewidgetcommand.skiptoend"

    goto :goto_2

    :cond_3
    const-string v3, "mobi.beyondpod.services.musicservicewidgetcommand.nexttrack"

    :goto_2
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 385
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const v1, 0x7f080074

    const v3, 0x7f1002d1

    .line 386
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 390
    :cond_4
    :try_start_0
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    sput-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 396
    :catch_0
    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: Internal notification builder failed."

    invoke-static {p2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_3
    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    if-eqz p2, :cond_5

    .line 400
    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c00ce

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 402
    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    sget-object v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p2, v1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViews(Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;Landroid/widget/RemoteViews;)V

    .line 403
    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    iget-object p2, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p2, p1, p0, v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewImage(Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;Landroid/content/Context;Z)V

    .line 404
    sget-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p0, p1, v2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 407
    :cond_5
    sget-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    return-object p0
.end method

.method private static createPlayerNotificationRemoteViews(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Z)Landroid/app/Notification;
    .locals 7

    const/4 v0, 0x1

    .line 263
    invoke-static {p1, v0, p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->buildFromTrack(Lmobi/beyondpod/rsscore/Track;ZLandroid/content/Context;)Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 265
    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    if-eqz p2, :cond_0

    sget-object p2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    invoke-virtual {p2, v1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 268
    :cond_0
    sput-object v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v1

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p2

    .line 271
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/BeyondPodApplication;->masterViewClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "mobi.beyondpod.services.player.MediaPlaybackService"

    .line 272
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 275
    new-instance v3, Landroid/content/Intent;

    const-string v4, "mobi.beyondpod.services.musicservicewidgetcommand.stop"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 277
    invoke-static {p0, p2, v3, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 279
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c00cf

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 281
    sget-object v5, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    invoke-static {v5, v4}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViews(Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;Landroid/widget/RemoteViews;)V

    .line 282
    invoke-static {v4, p1, p0, p2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewImage(Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;Landroid/content/Context;Z)V

    .line 283
    invoke-static {p0, v4, p2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 285
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v5

    invoke-virtual {v5, p0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getNotificationBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f080231

    xor-int/2addr v1, v0

    .line 287
    invoke-virtual {v5, v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/high16 v6, 0x8000000

    .line 288
    invoke-static {p0, p2, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 291
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 293
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 295
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sput-object v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    .line 296
    sget-object v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c00ce

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 299
    sget-object v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_NotificationState:Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    sget-object v2, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViews(Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;Landroid/widget/RemoteViews;)V

    .line 300
    sget-object v1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, p1, p0, v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewImage(Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;Landroid/content/Context;Z)V

    .line 301
    sget-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p0, p1, p2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 303
    sget-object p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->_PlayerNotification:Landroid/app/Notification;

    return-object p0
.end method

.method private getSizeBucketForWidget(Landroid/content/Context;I)I
    .locals 3

    .line 139
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->getWidgetSize(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 143
    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x5

    if-nez p2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    const/16 v1, 0xe6

    const/16 v2, 0xa5

    if-lt p2, v1, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    if-lt p2, v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    .line 148
    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->right:I

    const/16 v1, 0x1cc

    if-le p2, v1, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->right:I

    const/16 v0, 0x168

    if-le p2, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 152
    :cond_3
    iget p2, p1, Landroid/graphics/Rect;->right:I

    const/16 v0, 0xf0

    if-le p2, v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 154
    :cond_4
    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-static {p0, p1, v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    if-nez p2, :cond_0

    .line 241
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->isConfigured()Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f0901bd

    .line 242
    invoke-static {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createOpenMainWindowPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method static wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 4

    .line 552
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 555
    new-instance v1, Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p2, "mobi.beyondpod.services.musicservicewidgetcommand.playpause"

    goto :goto_0

    :cond_0
    const-string p2, "mobi.beyondpod.services.musicservicewidgetcommand.playpause.notification"

    :goto_0
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "command"

    const-string v2, "togglepause"

    .line 556
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 558
    invoke-static {p0, p2, v1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0901bd

    .line 559
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 562
    new-instance v1, Landroid/content/Intent;

    .line 563
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    const-string v2, "mobi.beyondpod.services.musicservicewidgetcommand.skiptoend"

    goto :goto_1

    :cond_1
    const-string v2, "mobi.beyondpod.services.musicservicewidgetcommand.nexttrack"

    :goto_1
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 566
    invoke-static {p0, p2, v1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0900a3

    .line 567
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 570
    new-instance v1, Landroid/content/Intent;

    const-string v2, "mobi.beyondpod.services.musicservicewidgetcommand.skipforward"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 572
    invoke-static {p0, p2, v1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0900a6

    .line 573
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 576
    new-instance v1, Landroid/content/Intent;

    const-string v2, "mobi.beyondpod.services.musicservicewidgetcommand.skipback"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 578
    invoke-static {p0, p2, v1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0900a5

    .line 579
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 581
    new-instance v1, Landroid/content/Intent;

    const-string v2, "mobi.beyondpod.services.musicservicewidgetcommand.stop"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 583
    invoke-static {p0, p2, v1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const v0, 0x7f0900a1

    .line 584
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 586
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result p2

    const/16 v1, 0x15

    if-lt p2, v1, :cond_2

    const/4 p2, 0x4

    .line 587
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 589
    :cond_2
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 591
    invoke-static {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createOpenPlaylistEditorPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const p2, 0x7f0901ca

    .line 592
    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_3
    return-void
.end method

.method private static wireRemoteNotificationViewImage(Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;Landroid/content/Context;Z)V
    .locals 1

    const v0, 0x7f090044

    if-nez p1, :cond_0

    const p1, 0x7f08005e

    .line 536
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 539
    invoke-static {p2, p1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->access$000(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 540
    :cond_1
    invoke-static {p2, p1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->access$100(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 539
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_1
    const/4 p1, 0x0

    .line 543
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public static wireRemoteNotificationViews(Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;Landroid/widget/RemoteViews;)V
    .locals 4

    .line 504
    iget v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->progressResource:I

    const v1, 0x7f0901be

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 506
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f09028a

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 507
    :cond_1
    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 514
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    const v3, 0x7f09004a

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 518
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->artist:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 519
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 515
    :cond_3
    :goto_2
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_3
    const v0, 0x7f09015a

    .line 522
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->infoMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0901ca

    .line 523
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playlistSize:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0900a4

    .line 524
    iget v1, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->playPauseResource:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0901ce

    .line 526
    iget p0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->streamVisibility:I

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const p0, 0x7f0900a3

    .line 529
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    const v0, 0x7f080074

    goto :goto_4

    :cond_4
    const v0, 0x7f080063

    :goto_4
    invoke-virtual {p1, p0, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    return-void
.end method

.method public static wireRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;I)V
    .locals 8

    .line 184
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->widgetBackgroundColor()I

    move-result v0

    const v1, 0x7f0902b0

    const v2, 0x7f0902b1

    const/4 v3, 0x0

    const/16 v4, 0x8

    packed-switch v0, :pswitch_data_0

    .line 197
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 198
    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 187
    :pswitch_0
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 188
    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 193
    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    :goto_0
    invoke-static {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createOpenMainWindowPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 203
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->isConfigured()Z

    move-result v1

    const v2, 0x7f09028b

    const v5, 0x7f090044

    const/4 v6, 0x6

    const v7, 0x7f0900a2

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {p1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    invoke-static {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createWidgetActionPickerPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-ne p3, v6, :cond_0

    .line 210
    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 211
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 216
    invoke-static {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createWidgetActionPickerPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 223
    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 224
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_1
    const/4 v0, 0x1

    if-ne p3, v6, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v3

    .line 227
    :goto_2
    invoke-static {p2, v1, p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;->buildFromTrack(Lmobi/beyondpod/rsscore/Track;ZLandroid/content/Context;)Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;

    move-result-object v1

    .line 228
    invoke-static {v1, p1}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViews(Lmobi/beyondpod/services/player/MediaAppWidgetProvider$NotificationState;Landroid/widget/RemoteViews;)V

    if-ne p3, v6, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    .line 229
    :goto_3
    invoke-static {p1, p2, p0, v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewImage(Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;Landroid/content/Context;Z)V

    .line 230
    invoke-static {p0, p1, p2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected initWidgets(Landroid/content/Context;[I)V
    .locals 5

    .line 87
    array-length p1, p2

    if-lez p1, :cond_0

    .line 89
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    .line 91
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0029

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f090044

    .line 95
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createOpenMainWindowPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0901bd

    .line 97
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createOpenMainWindowPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 98
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected performNotificationUpdate()V
    .locals 4

    .line 169
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->isMainUIWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showPlayerPausedNotication()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    .line 174
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    const/4 v2, 0x1

    .line 173
    invoke-static {v0, v1, v2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->createPlayerNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Z)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v1

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->updateNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected performWidgetUpdate(Landroid/content/Context;[I)V
    .locals 7

    .line 106
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget v2, p2, v1

    .line 111
    invoke-direct {p0, p1, v2}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->getSizeBucketForWidget(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 115
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c002c

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 117
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c002d

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 120
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c002b

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 122
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c002f

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 124
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c002e

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 127
    :cond_5
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c0029

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 130
    :goto_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v5

    .line 131
    invoke-static {p1, v4, v5, v3}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;I)V

    .line 132
    invoke-static {p1, v4, v5}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;)V

    .line 133
    invoke-virtual {p0, p1, v2, v4}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected thisAppWidget()Landroid/content/ComponentName;
    .locals 1

    .line 249
    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-object v0
.end method
