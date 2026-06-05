.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;
.super Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;
.source "RemoteControlLP.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$AlbumArtLoadedListener;,
        Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$Holder;
    }
.end annotation


# static fields
.field public static final ALBUM_ART_IMAGE_SIZE:I = 0x258

.field public static final ALBUM_ICON_IMAGE_SIZE:I = 0x80

.field private static final CUSTOM_ACTION_PLAYBACK_SPEED:Ljava/lang/String; = "mobi.beyondpod.auto.PLAYBACKSPEED"

.field private static final CUSTOM_ACTION_SEEK_BACKWARD:Ljava/lang/String; = "mobi.beyondpod.auto.SEEK_BACKWARD"

.field private static final CUSTOM_ACTION_SEEK_FORWARD:Ljava/lang/String; = "mobi.beyondpod.auto.SEEK_FORWARD"

.field private static final CUSTOM_ACTION_SKIP_TO_END:Ljava/lang/String; = "mobi.beyondpod.auto.SKIP_TO_END"

.field public static final FEED_IMAGE_SIZE:I = 0xc8

.field private static TAG:Ljava/lang/String; = "RemoteControlLP"


# instance fields
.field private _MediaButtonReceiver:Landroid/app/PendingIntent;

.field private _MediaSessionCallback:Landroid/media/session/MediaSession$Callback;

.field private _PersistentSession:Z

.field private _Session:Landroid/media/session/MediaSession;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_PersistentSession:Z

    .line 102
    new-instance v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;-><init>(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_MediaSessionCallback:Landroid/media/session/MediaSession$Callback;

    .line 78
    iput-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_MediaButtonReceiver:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;)Ljava/util/List;
    .locals 0

    .line 52
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->getQueueFromCurrentPlaylist()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;)Landroid/media/session/MediaSession;
    .locals 0

    .line 52
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->getSession()Landroid/media/session/MediaSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->editMetadata(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private editMetadata(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 368
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->totalTimeAsMinuteString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    :goto_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 376
    invoke-static {v4}, Lmobi/beyondpod/services/player/ChromecastUtils;->buildCastingToTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v4

    .line 380
    :cond_2
    new-instance v3, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v3}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v4, "android.media.metadata.ARTIST"

    .line 381
    invoke-virtual {v3, v4, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v1

    const-string v3, "android.media.metadata.TITLE"

    .line 382
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v1

    const-string v3, "android.media.metadata.DATE"

    .line 383
    invoke-virtual {v1, v3, v0}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    const-string v1, "android.media.metadata.DURATION"

    .line 384
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    if-eqz p2, :cond_3

    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 387
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    :cond_3
    if-eqz p3, :cond_4

    const-string p2, "android.media.metadata.DISPLAY_ICON"

    .line 390
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 392
    :cond_4
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "android.media.metadata.ALBUM"

    .line 393
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 395
    :cond_5
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->getSession()Landroid/media/session/MediaSession;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 396
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->notifyPlaylistChanged()V

    return-void
.end method

.method private getQueueFromCurrentPlaylist()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    .line 461
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->getTracks()Ljava/util/List;

    move-result-object v2

    .line 465
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    .line 469
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v4

    sget v5, Lmobi/beyondpod/services/auto/MediaIdHelper;->MAX_QUEUE_WINDOW:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v4, v5, :cond_0

    .line 472
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v1

    sub-int/2addr v1, v7

    move v4, v1

    move v1, v6

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v1

    sget v4, Lmobi/beyondpod/services/auto/MediaIdHelper;->MAX_QUEUE_WINDOW:I

    sub-int/2addr v1, v4

    add-int/lit8 v4, v3, -0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 479
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    sget v5, Lmobi/beyondpod/services/auto/MediaIdHelper;->MAX_QUEUE_WINDOW:I

    add-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-gt v1, v4, :cond_2

    .line 486
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/rsscore/Track;

    .line 487
    new-instance v8, Landroid/media/session/MediaSession$QueueItem;

    if-ne v1, v3, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    invoke-direct {p0, v5, v9, v1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->mediaDescriptionFromTrack(Lmobi/beyondpod/rsscore/Track;ZI)Landroid/media/MediaDescription;

    move-result-object v9

    .line 488
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    int-to-long v10, v5

    invoke-direct {v8, v9, v10, v11}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/media/MediaDescription;J)V

    .line 489
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getSession()Landroid/media/session/MediaSession;
    .locals 3

    .line 83
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_PersistentSession:Z

    .line 86
    new-instance v0, Landroid/media/session/MediaSession;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-string v2, "BeyondPod"

    invoke-direct {v0, v1, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_MediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_MediaSessionCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_QUEUE"

    const/4 v2, 0x1

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-object v1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 96
    sget-object v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->TAG:Ljava/lang/String;

    const-string v1, "BPMediaSession created..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method private loadAlbumArtFor(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$AlbumArtLoadedListener;)V
    .locals 5

    const/16 v0, 0x258

    const/4 v1, 0x0

    .line 650
    :try_start_0
    invoke-static {p1, v0, v0}, Lmobi/beyondpod/ui/core/volley/ImageUtils;->loadEpisodeImage(Lmobi/beyondpod/rsscore/Track;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 653
    :try_start_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-static {v2, v3, v3}, Lmobi/beyondpod/ui/core/FeedImageCache;->getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 661
    :catch_1
    sget-object v2, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load image for track metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-object v0, v1

    .line 657
    :catch_3
    sget-object v2, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of memory error while publishing track metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_0
    :goto_0
    invoke-interface {p2, v0, v1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$AlbumArtLoadedListener;->onAlbumArtLoaded(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private mediaDescriptionFromTrack(Lmobi/beyondpod/rsscore/Track;ZI)Landroid/media/MediaDescription;
    .locals 1

    .line 497
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 498
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object p3

    .line 499
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 500
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmobi/beyondpod/R$string;->auto_now_playing:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p2

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->buildTrackSubtitle(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p3, p2}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p2

    .line 501
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p2

    .line 502
    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->getMediaBrowserEpisodeAlbumArt(Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 503
    invoke-virtual {p1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p1

    return-object p1
.end method

.method private setCustomActions(Landroid/media/session/PlaybackState$Builder;FZ)V
    .locals 6

    .line 525
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 527
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 529
    new-instance v2, Landroid/media/session/PlaybackState$CustomAction$Builder;

    const-string v3, "mobi.beyondpod.auto.SEEK_BACKWARD"

    sget v4, Lmobi/beyondpod/R$string;->player_transport_skip_back:I

    .line 530
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/beyondpod/R$drawable;->ic_auto_player_rew:I

    invoke-direct {v2, v3, v4, v5}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 531
    invoke-virtual {v2, v1}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    move-result-object v2

    .line 532
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v2

    .line 529
    invoke-virtual {p1, v2}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    .line 534
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/services/player/impl/MediaPlayerFactory;->isSpeedAlterationPlayerInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    .line 536
    sget p3, Lmobi/beyondpod/R$drawable;->ic_auto_player_playback_speed:I

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    .line 539
    sget p3, Lmobi/beyondpod/R$drawable;->ic_auto_player_playback_speed_0:I

    goto :goto_0

    .line 540
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed1()F

    move-result v2

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    .line 541
    sget p3, Lmobi/beyondpod/R$drawable;->ic_auto_player_playback_speed_1:I

    goto :goto_0

    .line 542
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed2()F

    move-result v2

    cmpl-float p2, p2, v2

    if-nez p2, :cond_2

    .line 543
    sget p3, Lmobi/beyondpod/R$drawable;->ic_auto_player_playback_speed_2:I

    .line 545
    :cond_2
    :goto_0
    new-instance p2, Landroid/media/session/PlaybackState$CustomAction$Builder;

    const-string v2, "mobi.beyondpod.auto.PLAYBACKSPEED"

    sget v3, Lmobi/beyondpod/R$string;->player_transport_playback_speed:I

    .line 546
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3, p3}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, v1}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    move-result-object p2

    .line 547
    invoke-virtual {p2}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object p2

    .line 545
    invoke-virtual {p1, p2}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    .line 550
    :cond_3
    new-instance p2, Landroid/media/session/PlaybackState$CustomAction$Builder;

    const-string p3, "mobi.beyondpod.auto.SEEK_FORWARD"

    sget v2, Lmobi/beyondpod/R$string;->player_transport_skip_fwd:I

    .line 551
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/beyondpod/R$drawable;->ic_auto_player_forw:I

    invoke-direct {p2, p3, v2, v3}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, v1}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    move-result-object p2

    .line 552
    invoke-virtual {p2}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object p2

    .line 550
    invoke-virtual {p1, p2}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    .line 554
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result p2

    const/4 p3, 0x3

    if-ge p2, p3, :cond_4

    .line 555
    new-instance p2, Landroid/media/session/PlaybackState$CustomAction$Builder;

    const-string p3, "mobi.beyondpod.auto.SKIP_TO_END"

    sget v2, Lmobi/beyondpod/R$string;->player_transport_skip_to_end:I

    .line 556
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lmobi/beyondpod/R$drawable;->ic_auto_player_skip_to_end:I

    invoke-direct {p2, p3, v0, v2}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, v1}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    move-result-object p2

    .line 557
    invoke-virtual {p2}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object p2

    .line 555
    invoke-virtual {p1, p2}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    :cond_4
    return-void
.end method

.method private setPlaybackState(IJFZI)V
    .locals 1

    .line 508
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    const-wide/16 p2, 0xb7f

    .line 510
    invoke-virtual {p1, p2, p3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 516
    invoke-direct {p0, p1, p4, p5}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->setCustomActions(Landroid/media/session/PlaybackState$Builder;FZ)V

    int-to-long p2, p6

    .line 518
    invoke-virtual {p1, p2, p3}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    .line 520
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->getSession()Landroid/media/session/MediaSession;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method private updateSessionQueue()V
    .locals 2

    .line 407
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_EnablePlaylistPublishing:Z

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->getSession()Landroid/media/session/MediaSession;

    .line 417
    new-instance v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$2;-><init>(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 435
    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getClient()Ljava/lang/Object;
    .locals 1

    .line 453
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->getSession()Landroid/media/session/MediaSession;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 575
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->getSession()Landroid/media/session/MediaSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public notifyPlaylistChanged()V
    .locals 0

    .line 402
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->updateSessionQueue()V

    return-void
.end method

.method public publishTrackInformation(Lmobi/beyondpod/rsscore/Track;JZ)V
    .locals 9

    .line 584
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v3, v2

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    :goto_0
    move v3, v0

    goto :goto_1

    :pswitch_4
    move v3, v1

    :goto_1
    if-eqz p4, :cond_0

    .line 620
    new-instance v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$3;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$3;-><init>(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;Lmobi/beyondpod/rsscore/Track;)V

    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->loadAlbumArtFor(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$AlbumArtLoadedListener;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 631
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result p4

    if-ne p4, v1, :cond_3

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-gez p4, :cond_2

    .line 633
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    :cond_2
    move-wide v4, p2

    .line 634
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlaybackSpeed()F

    move-result v6

    .line 635
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    move-object v2, p0

    .line 632
    invoke-direct/range {v2 .. v8}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->setPlaybackState(IJFZI)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public registerRemoteControlClient(Landroid/media/AudioManager;)V
    .locals 1

    .line 441
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->getSession()Landroid/media/session/MediaSession;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 563
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_Session:Landroid/media/session/MediaSession;

    const/4 v0, 0x0

    .line 567
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->_PersistentSession:Z

    .line 569
    sget-object v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->TAG:Ljava/lang/String;

    const-string v1, "BPMediaSession was released..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method unregisterRemoteControlClient(Landroid/media/AudioManager;)V
    .locals 1

    .line 447
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->getSession()Landroid/media/session/MediaSession;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method
