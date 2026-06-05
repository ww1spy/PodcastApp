.class Lcom/aocate/media/ServiceBackedMediaPlayer$9;
.super Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8$Stub;
.source "ServiceBackedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/ServiceBackedMediaPlayer;->setOnSpeedAdjustmentAvailableChangedCallback(Lcom/aocate/presto/service/IPlayMedia_0_8;)V
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
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$9;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    .line 1646
    invoke-direct {p0}, Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedAdjustmentAvailableChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1651
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$9;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1654
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$9;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onSpeedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$9;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->onSpeedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

    .line 1657
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$9;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v1, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {v0, v1, p1}, Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;->onSpeedAdjustmentAvailableChanged(Lcom/aocate/media/MediaPlayer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$9;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$9;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1662
    throw p1
.end method
