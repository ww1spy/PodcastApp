.class Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)V
    .locals 0

    .line 2069
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;)V
    .locals 3

    .line 2072
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object p1, p1, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2076
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Media Player OnCompleted! Buffered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%, Download Started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Fully downloaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2076
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2083
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "  Media Player OnCompleted! No track"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2093
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_3

    .line 2097
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2098
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result p1

    const/16 v0, 0x5f

    if-le p1, v0, :cond_2

    goto :goto_1

    .line 2102
    :cond_2
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "####### OnCompleted event was Ignored because either a streaming track did not finish playing or track was not fully downloaded!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 2099
    :cond_3
    :goto_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2109
    :goto_2
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$1;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
