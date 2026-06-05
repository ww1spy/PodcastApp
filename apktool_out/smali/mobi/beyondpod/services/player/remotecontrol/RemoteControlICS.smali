.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;
.super Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;
.source "RemoteControlICS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS$Holder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "RemoteControlICS"


# instance fields
.field protected _Client:Landroid/media/RemoteControlClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;-><init>()V

    .line 39
    new-instance v0, Landroid/media/RemoteControlClient;

    invoke-direct {v0, p1}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->_Client:Landroid/media/RemoteControlClient;

    return-void
.end method


# virtual methods
.method protected editMetadata(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 156
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 157
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

    .line 158
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

    .line 160
    :goto_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 164
    invoke-static {v4}, Lmobi/beyondpod/services/player/ChromecastUtils;->buildCastingToTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v4

    .line 168
    :cond_2
    iget-object v3, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->_Client:Landroid/media/RemoteControlClient;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v3

    const/16 v5, 0xd

    invoke-virtual {v3, v5, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v3

    const/4 v5, 0x2

    .line 169
    invoke-virtual {v3, v5, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v1

    const/4 v3, 0x7

    .line 170
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v1

    const/4 v3, 0x5

    .line 171
    invoke-virtual {v1, v3, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    const/16 v1, 0x9

    .line 172
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-virtual {v0, v1, v5, v6}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    if-eqz p2, :cond_3

    const/16 v0, 0x64

    .line 175
    invoke-virtual {p1, v0, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 177
    :cond_3
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 178
    invoke-virtual {p1, v4, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 180
    :cond_4
    invoke-virtual {p1}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    return-void
.end method

.method public getClient()Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->_Client:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public getMediaSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public publishTrackInformation(Lmobi/beyondpod/rsscore/Track;JZ)V
    .locals 8

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v3, v2

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x8

    :goto_0
    move v3, v0

    goto :goto_1

    :pswitch_4
    move v3, v1

    :goto_1
    if-eqz p4, :cond_1

    const/16 v0, 0xdf

    .line 109
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->setTransportControlFlags(I)V

    const/16 v0, 0x258

    .line 115
    invoke-static {p1, v0, v0}, Lmobi/beyondpod/ui/core/volley/ImageUtils;->loadEpisodeImage(Lmobi/beyondpod/rsscore/Track;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-static {v0, v2, v2}, Lmobi/beyondpod/ui/core/FeedImageCache;->getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    :cond_0
    invoke-virtual {p0, p1, v0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->editMetadata(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 126
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result p4

    if-ne p4, v1, :cond_4

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-gez p4, :cond_3

    .line 128
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    :cond_3
    move-wide v4, p2

    .line 129
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlaybackSpeed()F

    move-result v6

    .line 130
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v7

    move-object v2, p0

    .line 127
    invoke-virtual/range {v2 .. v7}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->setPlaybackState(IJFZ)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 134
    :catch_0
    sget-object p2, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Out of memory error while publishing track metadata for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
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

    .line 141
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->_Client:Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method protected setPlaybackState(IJFZ)V
    .locals 0

    .line 146
    iget-object p2, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->_Client:Landroid/media/RemoteControlClient;

    invoke-virtual {p2, p1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    return-void
.end method

.method protected setTransportControlFlags(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->_Client:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void
.end method

.method unregisterRemoteControlClient(Landroid/media/AudioManager;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;->_Client:Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method
