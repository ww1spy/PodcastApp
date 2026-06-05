.class Lmobi/beyondpod/services/player/MediaPlaybackService$6;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;


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

    .line 567
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$6;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 2

    .line 571
    iget v0, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_COMPLETED:I

    if-ne v0, v1, :cond_0

    .line 573
    iget-object v0, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$6;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 575
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current playing track was just downloaded. Reloading it..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object p1, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setBufferedPercent(I)V

    .line 577
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$6;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$600(Lmobi/beyondpod/services/player/MediaPlaybackService;ZZ)V

    :cond_0
    return-void
.end method
