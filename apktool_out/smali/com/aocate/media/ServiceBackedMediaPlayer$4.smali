.class Lcom/aocate/media/ServiceBackedMediaPlayer$4;
.super Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8$Stub;
.source "ServiceBackedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnErrorCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
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
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    .line 1433
    invoke-direct {p0}, Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1440
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$11(Lcom/aocate/media/ServiceBackedMediaPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$11(Lcom/aocate/media/ServiceBackedMediaPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$11(Lcom/aocate/media/ServiceBackedMediaPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {v0, v1, p1, p2}, Lcom/aocate/media/MediaPlayer$OnErrorListener;->onError(Lcom/aocate/media/MediaPlayer;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    iget-object p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :cond_1
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$4;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1453
    throw p1
.end method
