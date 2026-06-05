.class public abstract Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;
.super Ljava/lang/Object;
.source "RemoteControlClientHelper2.java"


# instance fields
.field protected _EnablePlaylistPublishing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->_EnablePlaylistPublishing:Z

    return-void
.end method

.method public static getInstance(Landroid/app/PendingIntent;)Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;
    .locals 2

    .line 55
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 56
    invoke-static {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB$Holder;->getInstance(Landroid/app/PendingIntent;)Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$Holder;->getInstance(Landroid/app/PendingIntent;)Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public enablePublishOfCurrentPlaylist(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlClientHelper2;->_EnablePlaylistPublishing:Z

    return-void
.end method

.method public abstract getClient()Ljava/lang/Object;
.end method

.method public abstract getMediaSessionToken()Landroid/media/session/MediaSession$Token;
.end method

.method public notifyPlaylistChanged()V
    .locals 0

    return-void
.end method

.method public abstract publishTrackInformation(Lmobi/beyondpod/rsscore/Track;JZ)V
.end method

.method public abstract registerRemoteControlClient(Landroid/media/AudioManager;)V
.end method

.method public abstract release()V
.end method

.method abstract unregisterRemoteControlClient(Landroid/media/AudioManager;)V
.end method
