.class Lmobi/beyondpod/services/player/MediaPlaybackService$7;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;


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

    .line 901
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;)V
    .locals 5

    .line 905
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 907
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v1, 0x4

    .line 910
    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 911
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1200(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 914
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->initializeOnCompletionListener()V

    .line 916
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$300(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 918
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 919
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Playback prepared! Must seek to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", Start Playback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    .line 920
    invoke-static {v4}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 919
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 924
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3100(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    goto :goto_0

    .line 929
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 931
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3200(Lmobi/beyondpod/services/player/MediaPlaybackService;J)V

    goto :goto_0

    .line 935
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowSeekingOfInternetStreams()Z

    move-result p1

    if-nez p1, :cond_2

    .line 938
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3100(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    goto :goto_0

    .line 941
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3200(Lmobi/beyondpod/services/player/MediaPlaybackService;J)V

    goto :goto_0

    .line 945
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$7;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1700(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)V

    :cond_4
    :goto_0
    return-void
.end method
