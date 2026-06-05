.class Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;


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

    .line 2114
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;II)Z
    .locals 3

    .line 2117
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media Player OnError! What: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object p1, p1, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2102(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 2119
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object p1, p1, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$3402(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 2122
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object p1, p1, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$400(Lmobi/beyondpod/services/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 p1, 0x1

    const v1, 0x18a92

    if-ne p2, v1, :cond_0

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_0

    .line 2125
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string p3, " Our Chromecast session was interrupted! Stopping any playback... "

    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-virtual {p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->stop()V

    .line 2127
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object p2, p2, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {p2, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2002(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 2128
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object p2, p2, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iput-boolean v0, p2, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterSeek:Z

    return p1

    :cond_0
    const/16 v1, 0x64

    if-ltz p2, :cond_2

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 2141
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$3600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;->reset()V

    goto :goto_1

    .line 2135
    :cond_2
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v2, v0}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$2002(Lmobi/beyondpod/services/player/MediaPlaybackService;Z)Z

    .line 2136
    iget-object v2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iput-boolean v0, v2, Lmobi/beyondpod/services/player/MediaPlaybackService;->_StartPlaybackAfterSeek:Z

    .line 2137
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$3500(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)V

    :goto_1
    if-eq p2, p1, :cond_5

    if-eq p2, v1, :cond_3

    goto :goto_2

    .line 2148
    :cond_3
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******** MEDIA_ERROR_SERVER_DIED, Extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_4

    return p1

    .line 2153
    :cond_4
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {p3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return p1

    .line 2157
    :cond_5
    invoke-static {}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******** MEDIA_ERROR_UNKNOWN, Extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    :goto_2
    iget-object p2, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {p2}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer$2;->this$1:Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;

    invoke-static {p3}, Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;->access$2600(Lmobi/beyondpod/services/player/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return p1
.end method
