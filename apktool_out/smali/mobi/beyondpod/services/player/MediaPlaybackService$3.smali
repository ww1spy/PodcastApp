.class Lmobi/beyondpod/services/player/MediaPlaybackService$3;
.super Landroid/os/Handler;
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
.field _CurrentVolume:F

.field final synthetic this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 336
    iput p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->_CurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 472
    :pswitch_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    .line 475
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 476
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1200(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 479
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iput-boolean v2, p1, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterSeek:Z

    .line 480
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1, v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2002(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 481
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1400(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)V

    goto/16 :goto_2

    .line 344
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result p1

    const/4 v0, 0x6

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 346
    iput p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->_CurrentVolume:F

    .line 347
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    iget v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->_CurrentVolume:F

    invoke-virtual {p1, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 349
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->play()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 350
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$400(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$900()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 354
    :cond_1
    iget p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->_CurrentVolume:F

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr p1, v1

    iput p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->_CurrentVolume:F

    .line 355
    iget p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->_CurrentVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 357
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$400(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$900()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 361
    :cond_2
    iput v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->_CurrentVolume:F

    .line 363
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    iget v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->_CurrentVolume:F

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto/16 :goto_2

    .line 463
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1310(Lmobi/beyondpod/services/player/MediaPlaybackService;)I

    .line 464
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1300(Lmobi/beyondpod/services/player/MediaPlaybackService;)I

    move-result p1

    if-lez p1, :cond_3

    .line 465
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1900(Lmobi/beyondpod/services/player/MediaPlaybackService;)V

    goto/16 :goto_2

    .line 467
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1, v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->pause(Z)V

    goto/16 :goto_2

    .line 428
    :pswitch_3
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 437
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1600(Lmobi/beyondpod/services/player/MediaPlaybackService;Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;Lmobi/beyondpod/rsscore/Track;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 439
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 440
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_4

    .line 442
    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    .line 443
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1200(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishPlayPositionChanged(Lmobi/beyondpod/rsscore/Track;)V

    .line 448
    :cond_4
    invoke-static {v0}, Lmobi/beyondpod/services/player/PlayList;->allowStreaming(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 450
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "  Playback monitor found a streaming track when streaming is not allowed! Stopping playback..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1700(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)V

    return-void

    .line 457
    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_c

    .line 458
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$1800(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;J)V

    goto/16 :goto_2

    .line 373
    :pswitch_4
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "******** Media Player has died! Preparing Playback Again..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 376
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1000(Lmobi/beyondpod/services/player/MediaPlaybackService;Lmobi/beyondpod/rsscore/Track;)V

    goto/16 :goto_2

    .line 423
    :pswitch_5
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2

    .line 382
    :pswitch_6
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 385
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    .line 387
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Episode \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' has incorrect duration. Reported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->totalTimeAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->playedTimeAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_6
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->markPlayed()V

    const/4 v0, 0x2

    .line 397
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 399
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1200(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 402
    :cond_7
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1300(Lmobi/beyondpod/services/player/MediaPlaybackService;)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_8

    .line 405
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0, v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1302(Lmobi/beyondpod/services/player/MediaPlaybackService;I)I

    if-eqz p1, :cond_a

    .line 410
    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_1

    .line 414
    :cond_8
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    iget-object v3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v3}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1300(Lmobi/beyondpod/services/player/MediaPlaybackService;)I

    move-result v3

    if-lez v3, :cond_9

    move v2, v1

    :cond_9
    invoke-virtual {v0, v2}, Lmobi/beyondpod/services/player/PlayList;->onTrackPlaybackComplete(Z)V

    :cond_a
    :goto_1
    if-eqz p1, :cond_b

    .line 417
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 419
    :cond_b
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$3;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1, v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1400(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)V

    :cond_c
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
