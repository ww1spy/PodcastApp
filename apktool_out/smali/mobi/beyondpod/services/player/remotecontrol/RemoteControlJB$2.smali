.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB$2;
.super Ljava/lang/Object;
.source "RemoteControlJB.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB$2;->this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlaybackPosition()J
    .locals 4

    .line 82
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
