.class Lmobi/beyondpod/services/player/MediaPlaybackService$10;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;


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

    .line 1055
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;)V
    .locals 11

    .line 1059
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "  Seek Complete!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3402(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 1062
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1066
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Currently at position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (supposed to be at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1066
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-boolean v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterSeek:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 1071
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iput-boolean v0, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterSeek:Z

    .line 1072
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v4, "  Starting Playback after seek..."

    invoke-static {v1, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startAndFadeIn()V

    goto :goto_1

    .line 1075
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result v1

    const/16 v4, 0x64

    if-ge v1, v4, :cond_4

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowSeekingOfInternetStreams()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1079
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result v1

    if-lez v1, :cond_2

    .line 1080
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->duration()J

    move-result-wide v7

    long-to-float v1, v7

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v4, v7

    mul-float/2addr v1, v4

    float-to-long v7, v1

    goto :goto_0

    :cond_2
    move-wide v7, v2

    .line 1082
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->position()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-lez v1, :cond_4

    .line 1084
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Seeked past the buffer! Current Position:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v9}, Lmobi/beyondpod/services/player/MediaPlaybackService;->position()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", Max Seek Position: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    cmp-long v4, v7, v5

    if-lez v4, :cond_3

    sub-long v9, v7, v5

    move-wide v7, v9

    :cond_3
    invoke-virtual {v1, v7, v8}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->seek(J)J

    .line 1092
    :cond_4
    :goto_1
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-boolean v1, v1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterSeek:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1094
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->isNotificationShowing(I)Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-static {v1, v4}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1400(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)V

    .line 1097
    :cond_5
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->position()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-ltz v1, :cond_6

    .line 1106
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0xa

    .line 1107
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1108
    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1109
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1112
    :cond_6
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1200(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$10;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, v0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;JZ)V

    return-void
.end method
