.class Lcom/aocate/media/AndroidMediaPlayer$6;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    iput-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    if-eqz p1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 139
    :try_start_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->lockMuteOnSeekCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->muteOnSeekCount:I

    if-lez p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget v0, p1, Lcom/aocate/media/AndroidMediaPlayer;->muteOnSeekCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/aocate/media/AndroidMediaPlayer;->muteOnSeekCount:I

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    const/4 v0, 0x0

    iput v0, p1, Lcom/aocate/media/AndroidMediaPlayer;->muteOnSeekCount:I

    .line 146
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onSeekCompleteListener:Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onSeekCompleteListener:Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;

    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {p1, v0}, Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/aocate/media/MediaPlayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_1
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->lockMuteOnSeekCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 152
    :try_start_3
    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/AndroidMediaPlayer;->lockMuteOnSeekCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 156
    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$6;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    throw p1

    :cond_2
    :goto_1
    return-void
.end method
