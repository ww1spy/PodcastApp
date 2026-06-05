.class public Lmobi/beyondpod/services/player/TrackMetadataPublisher;
.super Ljava/lang/Object;
.source "TrackMetadataPublisher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrackMetadataPublisher"

.field private static _Instance:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

.field static _MediaButtonReceiverIntent:Landroid/app/PendingIntent;


# instance fields
.field private _RemoteControlClientHelper:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 33
    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_MediaButtonReceiverIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmobi/beyondpod/services/player/TrackMetadataPublisher;
    .locals 1

    .line 49
    sget-object v0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_Instance:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;-><init>()V

    sput-object v0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_Instance:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    .line 52
    :cond_0
    sget-object v0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_Instance:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    return-object v0
.end method

.method private getRemoteControlHelper()Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;
    .locals 1

    .line 39
    iget-object v0, p0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_RemoteControlClientHelper:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_MediaButtonReceiverIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->getInstance(Landroid/app/PendingIntent;)Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_RemoteControlClientHelper:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    .line 44
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_RemoteControlClientHelper:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    return-object v0
.end method

.method private static scrobbleTrack(Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 9

    .line 129
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->scrobbleEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 131
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "com.android.music.metachanged"

    goto :goto_0

    :cond_0
    const-string p1, "com.android.music.playstatechanged"

    :goto_0
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "artist"

    .line 133
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "album"

    .line 136
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_1
    const-string p1, "album"

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->totalTimeAsMinuteString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string p1, "track"

    .line 140
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/BeyondPodApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    sget-object p1, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Published Google Music \'metachanged\' broadcast for track: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "net.jjc1138.android.scrobbler.action.MUSIC_STATUS"

    .line 146
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "album"

    .line 147
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "playing"

    .line 148
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "secs"

    .line 149
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "source"

    const-string v3, "P"

    .line 150
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/BeyondPodApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "mobi.beyondpod.action.PLAYBACK_STATUS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "artist"

    .line 157
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "album"

    .line 158
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "track"

    .line 159
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "playing"

    .line 161
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    if-ne v3, v2, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "feed-name"

    .line 162
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "feed-url"

    .line 163
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "episode-name"

    .line 164
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "episode-url"

    .line 165
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "episode-file"

    .line 166
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "episode-post-url"

    .line 167
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPostUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "episode-mime"

    .line 168
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "episode-summary"

    .line 169
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "episode-duration"

    .line 170
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "episode-position"

    .line 171
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 173
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/BeyondPodApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    sget-object p1, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scrobbling track: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v1

    if-ne v1, v2, :cond_7

    const-string v1, " playing "

    goto :goto_5

    :cond_7
    const-string v1, " paused "

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enablePublishOfCurrentPlaylist(Z)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getRemoteControlHelper()Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->enablePublishOfCurrentPlaylist(Z)V

    return-void
.end method

.method public getMediaSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 67
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getRemoteControlHelper()Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->getMediaSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public notifyPlaylistChanged()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getRemoteControlHelper()Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->notifyPlaylistChanged()V

    return-void
.end method

.method public publishPlayPositionChanged(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0, p1, v0, v1, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;JZ)V

    return-void
.end method

.method public publishTrackInformation(Lmobi/beyondpod/rsscore/Track;JZ)V
    .locals 3

    .line 84
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-ne p1, v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getRemoteControlHelper()Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->registerRemoteControlClient(Landroid/media/AudioManager;)V

    .line 93
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getRemoteControlHelper()Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->getClient()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    instance-of v1, v0, Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_1

    .line 99
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->addRemoteControlClient(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->setMediaSession(Ljava/lang/Object;)V

    .line 105
    :cond_2
    :goto_0
    invoke-static {p1, p4}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->scrobbleTrack(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 108
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->isLockScreenWidgetInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 111
    :cond_3
    invoke-direct {p0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getRemoteControlHelper()Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;JZ)V

    goto :goto_2

    .line 87
    :cond_4
    :goto_1
    sget-object p2, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->TAG:Ljava/lang/String;

    const-string p3, "Trying to publish metadata for incorrect track! Ignoring..."

    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 116
    sget-object p3, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to publish track metadata for: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", Error: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Msg: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p3, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 77
    invoke-virtual {p0, p1, v0, v1, p2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;JZ)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_RemoteControlClientHelper:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->_RemoteControlClientHelper:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->release()V

    :cond_0
    return-void
.end method
