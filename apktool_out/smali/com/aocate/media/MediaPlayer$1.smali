.class Lcom/aocate/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;


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
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer$1;->this$0:Lcom/aocate/media/MediaPlayer;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPitchAdjustmentAvailableChanged(Lcom/aocate/media/MediaPlayer;Z)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$1;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "onPitchAdjustmentAvailableChangedListener.onPitchAdjustmentAvailableChanged being called"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$1;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-boolean v0, v0, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailable:Z

    if-eq v0, p2, :cond_0

    const-string v0, "AocateReplacementMediaPlayer"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pitch adjustment state has changed from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/aocate/media/MediaPlayer$1;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-boolean v2, v2, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$1;->this$0:Lcom/aocate/media/MediaPlayer;

    iput-boolean p2, v0, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailable:Z

    .line 218
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$1;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$1;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->pitchAdjustmentAvailableChangedListener:Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;

    .line 220
    invoke-interface {v0, p1, p2}, Lcom/aocate/media/MediaPlayer$OnPitchAdjustmentAvailableChangedListener;->onPitchAdjustmentAvailableChanged(Lcom/aocate/media/MediaPlayer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$1;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/MediaPlayer$1;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 226
    throw p1
.end method
