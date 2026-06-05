.class Lcom/aocate/media/ServiceBackedMediaPlayer$3;
.super Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8$Stub;
.source "ServiceBackedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnCompletionCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
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
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    .line 1384
    invoke-direct {p0}, Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1388
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateServiceBackedMediaPlayer"

    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCompletionListener being called for listener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1392
    iget-object v2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v2, v2, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v2, v2, Lcom/aocate/media/MediaPlayer;->onCompletionListener:Lcom/aocate/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1391
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "onCompletionListener trying to release wakeLock..."

    .line 1394
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$11(Lcom/aocate/media/ServiceBackedMediaPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$11(Lcom/aocate/media/ServiceBackedMediaPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$11(Lcom/aocate/media/ServiceBackedMediaPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "wakeLock released..."

    .line 1399
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "wakeLock not held..."

    .line 1401
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :goto_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onCompletionListener:Lcom/aocate/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "onCompletionListener is actually being called..."

    .line 1405
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onCompletionListener:Lcom/aocate/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {v0, v1}, Lcom/aocate/media/MediaPlayer$OnCompletionListener;->onCompletion(Lcom/aocate/media/MediaPlayer;)V

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "onCompletionListener call completed."

    .line 1407
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    :cond_1
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$3;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1413
    throw v0
.end method
