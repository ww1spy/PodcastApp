.class Lcom/aocate/media/MediaPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aocate/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aocate/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/aocate/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer$3;->this$0:Lcom/aocate/media/MediaPlayer;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedAdjustmentAvailableChanged(Lcom/aocate/media/MediaPlayer;Z)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$3;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "onSpeedAdjustmentAvailableChangedListener.onSpeedAdjustmentAvailableChanged being called"

    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$3;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-boolean v0, v0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailable:Z

    if-eq v0, p2, :cond_0

    const-string v0, "AocateReplacementMediaPlayer"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Speed adjustment state has changed from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/aocate/media/MediaPlayer$3;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-boolean v2, v2, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$3;->this$0:Lcom/aocate/media/MediaPlayer;

    iput-boolean p2, v0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailable:Z

    .line 263
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$3;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$3;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->speedAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;

    .line 265
    invoke-interface {v0, p1, p2}, Lcom/aocate/media/MediaPlayer$OnSpeedAdjustmentAvailableChangedListener;->onSpeedAdjustmentAvailableChanged(Lcom/aocate/media/MediaPlayer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$3;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/MediaPlayer$3;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 271
    throw p1
.end method
