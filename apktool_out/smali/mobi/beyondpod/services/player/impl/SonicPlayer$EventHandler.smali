.class Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SonicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/SonicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/services/player/impl/SonicPlayer;Lmobi/beyondpod/services/player/impl/SonicPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    .line 880
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 881
    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 887
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    const-string v0, "SonicPlayer"

    .line 947
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

    .line 911
    :pswitch_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1300(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1300(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lmobi/beyondpod/services/player/impl/SonicPlayer;II)V

    :cond_0
    return-void

    .line 906
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1200(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 907
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1200(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$OnSeekCompleteListener;->onSeekComplete(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V

    :cond_1
    return-void

    .line 901
    :pswitch_2
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1100(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1100(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lmobi/beyondpod/services/player/impl/SonicPlayer;I)V

    :cond_2
    return-void

    .line 895
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$900(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 896
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$900(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;->onCompletion(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V

    .line 897
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {p1, v2}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1000(Lmobi/beyondpod/services/player/impl/SonicPlayer;Z)V

    return-void

    .line 890
    :pswitch_4
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$800(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 891
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$800(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$OnPreparedListener;->onPrepared(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V

    :cond_4
    return-void

    :goto_0
    :pswitch_5
    return-void

    .line 931
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x2bc

    if-eq v0, v1, :cond_6

    const-string v0, "SonicPlayer"

    .line 933
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

    .line 936
    :cond_6
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1500(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 938
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1500(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;->onInfo(Lmobi/beyondpod/services/player/impl/SonicPlayer;II)Z

    :cond_7
    return-void

    :cond_8
    const-string v0, "SonicPlayer"

    .line 916
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

    .line 918
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1400(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 920
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1400(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v3, p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;->onError(Lmobi/beyondpod/services/player/impl/SonicPlayer;II)Z

    move-result p1

    goto :goto_1

    :cond_9
    move p1, v2

    .line 923
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$900(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    .line 925
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$900(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->mMediaPlayer:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;->onCompletion(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V

    .line 927
    :cond_a
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$EventHandler;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {p1, v2}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$1000(Lmobi/beyondpod/services/player/impl/SonicPlayer;Z)V

    return-void

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
