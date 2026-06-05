.class Lcom/aocate/media/ServiceBackedMediaPlayer$7;
.super Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;
.source "ServiceBackedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnPreparedCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
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
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    .line 1546
    invoke-direct {p0}, Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1550
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "setOnPreparedCallback.mOnPreparedCallback.onPrepared 1050"

    .line 1551
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "owningMediaPlayer.onPreparedListener is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1555
    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v2, v2, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v2, v2, Lcom/aocate/media/MediaPlayer;->onPreparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, "non-null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1554
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "owningMediaPlayer.mpi is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1557
    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v2, v2, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v2, v2, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v3, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    if-ne v2, v3, :cond_1

    const-string v2, "this"

    goto :goto_1

    :cond_1
    const-string v2, "not this"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1556
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1561
    :try_start_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->muteOnPreparedCount:I

    if-lez v0, :cond_2

    .line 1563
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget v1, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->muteOnPreparedCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->muteOnPreparedCount:I

    goto :goto_2

    .line 1566
    :cond_2
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->muteOnPreparedCount:I

    .line 1567
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onPreparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_3

    .line 1569
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onPreparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {v0, v1}, Lcom/aocate/media/MediaPlayer$OnPreparedListener;->onPrepared(Lcom/aocate/media/MediaPlayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1574
    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1578
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 1574
    :try_start_3
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1575
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 1578
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$7;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1579
    throw v0
.end method
