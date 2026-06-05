.class Lcom/aocate/media/AndroidMediaPlayer$1;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aocate/media/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aocate/media/AndroidMediaPlayer;


# direct methods
.method constructor <init>(Lcom/aocate/media/AndroidMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 36
    :try_start_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onBufferingUpdateListener:Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    if-ne p1, v0, :cond_0

    .line 38
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onBufferingUpdateListener:Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;

    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {p1, v0, p2}, Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/aocate/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/AndroidMediaPlayer$1;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 43
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
