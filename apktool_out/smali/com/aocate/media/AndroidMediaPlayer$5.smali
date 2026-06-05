.class Lcom/aocate/media/AndroidMediaPlayer$5;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "AocateAndroidMediaPlayer"

    const-string v0, "Calling onPreparedListener.onPrepared()"

    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    if-eqz p1, :cond_2

    .line 111
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 113
    :try_start_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->muteOnPreparedCount:I

    if-lez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget v0, p1, Lcom/aocate/media/AndroidMediaPlayer;->muteOnPreparedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/aocate/media/AndroidMediaPlayer;->muteOnPreparedCount:I

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    const/4 v0, 0x0

    iput v0, p1, Lcom/aocate/media/AndroidMediaPlayer;->muteOnPreparedCount:I

    .line 118
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onPreparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    if-eqz p1, :cond_1

    const-string p1, "AocateAndroidMediaPlayer"

    const-string v0, "Invoking AndroidMediaPlayer.this.owningMediaPlayer.onPreparedListener.onPrepared"

    .line 119
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->onPreparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    invoke-interface {p1, v0}, Lcom/aocate/media/MediaPlayer$OnPreparedListener;->onPrepared(Lcom/aocate/media/MediaPlayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    iget-object p1, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/AndroidMediaPlayer;->owningMediaPlayer:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->mpi:Lcom/aocate/media/MediaPlayerImpl;

    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    if-eq p1, v0, :cond_2

    const-string p1, "AocateAndroidMediaPlayer"

    const-string v0, "owningMediaPlayer has changed implementation"

    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 125
    iget-object v0, p0, Lcom/aocate/media/AndroidMediaPlayer$5;->this$0:Lcom/aocate/media/AndroidMediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/AndroidMediaPlayer;->lockMuteOnPreparedCount:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    throw p1

    :cond_2
    :goto_1
    return-void
.end method
