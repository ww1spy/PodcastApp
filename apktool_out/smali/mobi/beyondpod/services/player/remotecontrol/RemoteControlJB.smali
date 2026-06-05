.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;
.super Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;
.source "RemoteControlJB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB$Holder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "RemoteControlJB"


# instance fields
.field private getPositionListener:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private seekToListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;-><init>(Landroid/app/PendingIntent;)V

    .line 53
    new-instance p1, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB$1;-><init>(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;->seekToListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 77
    new-instance p1, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB$2;-><init>(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;->getPositionListener:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 34
    iget-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;->_Client:Landroid/media/RemoteControlClient;

    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;->seekToListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 35
    iget-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;->_Client:Landroid/media/RemoteControlClient;

    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;->getPositionListener:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected setPlaybackState(IJFZ)V
    .locals 0

    .line 47
    iget-object p5, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;->_Client:Landroid/media/RemoteControlClient;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    return-void
.end method

.method protected setTransportControlFlags(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;->_Client:Landroid/media/RemoteControlClient;

    or-int/lit16 p1, p1, 0x100

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void
.end method
