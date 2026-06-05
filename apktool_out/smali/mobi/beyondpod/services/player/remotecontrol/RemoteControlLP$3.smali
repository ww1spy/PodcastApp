.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$3;
.super Ljava/lang/Object;
.source "RemoteControlLP.java"

# interfaces
.implements Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$AlbumArtLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

.field final synthetic val$track:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$3;->this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

    iput-object p2, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtLoaded(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 626
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$3;->this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

    iget-object v1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-static {v0, v1, p1, p2}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$300(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method
