.class Lcom/aocate/media/AndroidMediaPlayer$3;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$3;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$3;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$3;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 72
    :try_start_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$3;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$3;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onErrorListener:Lcom/aocate/media/MediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$3;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcom/aocate/media/MediaPlayer$OnErrorListener;->onError(Lcom/aocate/media/MediaPlayer;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object p2, p0, Lcom/aocate/media/AndroidMediaPlayer$3;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :cond_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$3;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/aocate/media/AndroidMediaPlayer$3;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p2, p2, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
