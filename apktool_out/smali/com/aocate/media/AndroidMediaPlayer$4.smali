.class Lcom/aocate/media/AndroidMediaPlayer$4;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    iput-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 89
    :try_start_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onInfoListener:Lcom/aocate/media/MediaPlayer$OnInfoListener;

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    if-ne p1, v0, :cond_0

    .line 91
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onInfoListener:Lcom/aocate/media/MediaPlayer$OnInfoListener;

    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcom/aocate/media/MediaPlayer$OnInfoListener;->onInfo(Lcom/aocate/media/MediaPlayer;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object p2, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :cond_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/AndroidMediaPlayer$4;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 96
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
