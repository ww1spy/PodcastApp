.class Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;
.super Landroid/os/Handler;
.source "ChromecastPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/ChromecastPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    .line 547
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 548
    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 554
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    const-string v0, "ChromecastPlayer"

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :pswitch_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$700(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$700(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;II)V

    :cond_0
    return-void

    .line 573
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$600(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 574
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$600(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;->onSeekComplete(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V

    :cond_1
    return-void

    .line 568
    :pswitch_2
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$500(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$500(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;I)V

    :cond_2
    return-void

    .line 562
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$300(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 563
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$300(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;->onCompletion(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V

    .line 564
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {p1, v2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$400(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Z)V

    return-void

    .line 557
    :pswitch_4
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$200(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 558
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$200(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;->onPrepared(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V

    :cond_4
    return-void

    :goto_0
    :pswitch_5
    return-void

    .line 598
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x2bc

    if-eq v0, v1, :cond_6

    const-string v0, "ChromecastPlayer"

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_6
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$1000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 604
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$1000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnInfoListener;->onInfo(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;II)Z

    :cond_7
    return-void

    :cond_8
    const-string v0, "ChromecastPlayer"

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0, v2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$802(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Z)Z

    .line 586
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$900(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 588
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$900(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v3, p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnErrorListener;->onError(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;II)Z

    move-result p1

    goto :goto_1

    :cond_9
    move p1, v2

    .line 590
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$300(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    .line 592
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$300(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnCompletionListener;->onCompletion(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V

    .line 594
    :cond_a
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {p1, v2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$400(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
