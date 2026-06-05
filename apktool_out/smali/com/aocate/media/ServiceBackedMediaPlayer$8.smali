.class Lcom/aocate/media/ServiceBackedMediaPlayer$8;
.super Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8$Stub;
.source "ServiceBackedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnSeekCompleteCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;


# direct methods
.method constructor <init>(Lcom/aocate/media/ServiceBackedMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    .line 1599
    invoke-direct {p0}, Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "onSeekComplete() 941"

    .line 1603
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1607
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->muteOnSeekCount:I

    if-lez v0, :cond_0

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1609
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The next "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget v2, v2, Lcom/aocate/media/ServiceBackedMediaPlayer;->muteOnSeekCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seek events are muted (counting this one)"

    .line 1610
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1609
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget v1, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->muteOnSeekCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->muteOnSeekCount:I

    goto :goto_0

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->muteOnSeekCount:I

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "Attempting to invoke next seek event"

    .line 1615
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onSeekCompleteListener:Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_1

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "Invoking onSeekComplete"

    .line 1618
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onSeekCompleteListener:Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {v0, v1}, Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/aocate/media/MediaPlayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$8;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1625
    throw v0
.end method
