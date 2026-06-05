.class Lmobi/beyondpod/services/player/MediaPlaybackService$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 181
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string p1, "command"

    .line 185
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "commandOption"

    .line 186
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** MediaPlaybackService received Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open"

    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "trackPos"

    const/4 v0, -0x1

    .line 192
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_17

    .line 194
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->openAndPlay(I)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "resume"

    .line 196
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startAndFadeIn()V

    goto/16 :goto_1

    :cond_1
    const-string v1, "togglepause"

    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 204
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const-string p2, "mobi.beyondpod.services.musicservicewidgetcommand.playpause.notification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->pause(Z)V

    goto/16 :goto_1

    .line 209
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startAndFadeIn()V

    goto/16 :goto_1

    :cond_3
    const-string v1, "pause"

    .line 212
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 214
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1, v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->pause(Z)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "duck"

    .line 216
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->duck()V

    goto/16 :goto_1

    :cond_5
    const-string v1, "stop"

    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 222
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->stop()V

    goto/16 :goto_1

    :cond_6
    const-string v1, "skiptoend"

    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 226
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$300(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 228
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 229
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1, v2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->pause(Z)V

    .line 231
    :cond_7
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$400(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_8
    const-string v1, "skipforward"

    .line 234
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 236
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$300(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 238
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getForwardSkipInterval()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    add-long v3, p1, v1

    .line 239
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    cmp-long v1, v3, p1

    if-ltz v1, :cond_9

    const-wide/16 v1, 0x3e8

    sub-long v3, p1, v1

    .line 244
    :cond_9
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->seek(J)J

    if-eqz v0, :cond_17

    .line 251
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startAndFadeIn()V

    goto/16 :goto_1

    :cond_a
    const-string v1, "skipbackword"

    .line 255
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_c

    .line 257
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$300(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 259
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getBackwardSkipInterval()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    sub-long v6, p1, v1

    cmp-long p1, v6, v4

    if-gez p1, :cond_b

    goto :goto_0

    :cond_b
    move-wide v4, v6

    .line 263
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->seek(J)J

    if-eqz v0, :cond_17

    .line 269
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startAndFadeIn()V

    goto/16 :goto_1

    :cond_c
    const-string v1, "seekToLocation"

    .line 273
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 275
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$300(Lmobi/beyondpod/services/player/MediaPlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "seekToLocation"

    .line 277
    invoke-virtual {p2, p1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v1, p1, v4

    if-gez v1, :cond_d

    move-wide p1, v4

    .line 281
    :cond_d
    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$000(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->seek(J)J

    if-eqz v0, :cond_17

    .line 284
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->startAndFadeIn()V

    goto/16 :goto_1

    :cond_e
    const-string v0, "playnext"

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 292
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result p1

    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result p2

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_f

    .line 293
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistEndAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_f

    .line 295
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistEndAction()I

    move-result p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/services/player/PlayList;->executeActionPlayNextPosition(I)V

    return-void

    .line 299
    :cond_f
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->getNextTrackPosition()I

    move-result p1

    if-gez p1, :cond_10

    move p1, v2

    .line 302
    :cond_10
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->openAndPlay(I)V

    goto/16 :goto_1

    :cond_11
    const-string v0, "playprevious"

    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 306
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$500(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/services/player/PlayList;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/services/player/PlayList;->getPreviousTrackPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->openAndPlay(I)V

    goto :goto_1

    :cond_12
    const-string v0, "loadcurrenttrack"

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "startPlaybackOnLoad"

    .line 310
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "forceLoadOnLoad"

    .line 311
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 312
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v0, p1, p2}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$600(Lmobi/beyondpod/services/player/MediaPlaybackService;ZZ)V

    goto :goto_1

    :cond_13
    const-string p2, "stopService"

    .line 314
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 316
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$700(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object p1

    const p2, 0xea60

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_14
    const-string p2, "setPlaybackSpeedNormal"

    .line 318
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p2, :cond_15

    .line 320
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeedNormal()F

    move-result p2

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$800(Lmobi/beyondpod/services/player/MediaPlaybackService;FF)V

    goto :goto_1

    :cond_15
    const-string p2, "setPlaybackSpeedSpeed1"

    .line 322
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 324
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed1()F

    move-result p2

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$800(Lmobi/beyondpod/services/player/MediaPlaybackService;FF)V

    goto :goto_1

    :cond_16
    const-string p2, "setPlaybackSpeedSpeed2"

    .line 326
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 328
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$2;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed2()F

    move-result p2

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$800(Lmobi/beyondpod/services/player/MediaPlaybackService;FF)V

    :cond_17
    :goto_1
    return-void
.end method
