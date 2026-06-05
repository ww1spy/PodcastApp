.class Lcom/aocate/media/MediaPlayer$4$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/MediaPlayer$4;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aocate/media/MediaPlayer$4;


# direct methods
.method constructor <init>(Lcom/aocate/media/MediaPlayer$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 384
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 386
    :try_start_0
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer;->access$0(Lcom/aocate/media/MediaPlayer;)Lcom/aocate/media/AndroidMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 388
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object p1

    new-instance v0, Lcom/aocate/media/AndroidMediaPlayer;

    .line 389
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v1}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v1

    .line 390
    iget-object v2, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v2}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v2

    invoke-static {v2}, Lcom/aocate/media/MediaPlayer;->access$5(Lcom/aocate/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aocate/media/AndroidMediaPlayer;-><init>(Lcom/aocate/media/MediaPlayer;Landroid/content/Context;)V

    .line 388
    invoke-static {p1, v0}, Lcom/aocate/media/MediaPlayer;->access$6(Lcom/aocate/media/MediaPlayer;Lcom/aocate/media/AndroidMediaPlayer;)V

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object p1

    .line 395
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v0}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/aocate/media/MediaPlayer;->access$1(Lcom/aocate/media/MediaPlayer;)Lcom/aocate/media/ServiceBackedMediaPlayer;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v1}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/aocate/media/MediaPlayer;->access$0(Lcom/aocate/media/MediaPlayer;)Lcom/aocate/media/AndroidMediaPlayer;

    move-result-object v1

    .line 394
    invoke-static {p1, v0, v1}, Lcom/aocate/media/MediaPlayer;->access$2(Lcom/aocate/media/MediaPlayer;Lcom/aocate/media/MediaPlayerImpl;Lcom/aocate/media/MediaPlayerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$4$2;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v0}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 401
    throw p1
.end method
