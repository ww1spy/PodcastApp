.class Lmobi/beyondpod/services/player/MediaPlaybackService$11;
.super Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V
    .locals 0

    .line 2229
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canChangePlaybackSpeed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2291
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3900(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public duration()J
    .locals 2

    .line 2262
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPlaybackSpeed()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2303
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$4000(Lmobi/beyondpod/services/player/MediaPlaybackService;)F

    move-result v0

    return v0
.end method

.method public gettimetosleep()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2273
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3700(Lmobi/beyondpod/services/player/MediaPlaybackService;)I

    move-result v0

    return v0
.end method

.method public gotosleepin(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3800(Lmobi/beyondpod/services/player/MediaPlaybackService;I)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 2237
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public open(I)V
    .locals 1

    .line 2232
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->openAndPlay(I)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 2247
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->pause(Z)V

    return-void
.end method

.method public play()V
    .locals 1

    .line 2252
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->play()Z

    return-void
.end method

.method public playerType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2315
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->playerType()I

    move-result v0

    return v0
.end method

.method public position()J
    .locals 2

    .line 2257
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public seek(J)J
    .locals 1

    .line 2267
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->seek(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setPlaybackSpeed(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2297
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$800(Lmobi/beyondpod/services/player/MediaPlaybackService;FF)V

    return-void
.end method

.method public startAndFadeIn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 2242
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->stop()V

    return-void
.end method

.method public supportsSpeedAlteration()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2309
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$11;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$4100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result v0

    return v0
.end method
