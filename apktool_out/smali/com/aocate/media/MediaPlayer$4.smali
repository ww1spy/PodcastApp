.class Lcom/aocate/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/MediaPlayer;->setupMpi(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    return-object p0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 344
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/aocate/media/MediaPlayer$4$1;

    invoke-direct {p2, p0}, Lcom/aocate/media/MediaPlayer$4$1;-><init>(Lcom/aocate/media/MediaPlayer$4;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 362
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 367
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 371
    :try_start_0
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer;->access$1(Lcom/aocate/media/MediaPlayer;)Lcom/aocate/media/ServiceBackedMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer;->access$1(Lcom/aocate/media/MediaPlayer;)Lcom/aocate/media/ServiceBackedMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->release()V

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/aocate/media/MediaPlayer;->access$3(Lcom/aocate/media/MediaPlayer;Lcom/aocate/media/ServiceBackedMediaPlayer;)V

    .line 379
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer;->access$4(Lcom/aocate/media/MediaPlayer;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_1

    .line 380
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/aocate/media/MediaPlayer$4$2;

    invoke-direct {v1, p0}, Lcom/aocate/media/MediaPlayer$4$2;-><init>(Lcom/aocate/media/MediaPlayer$4;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-static {p1, v0}, Lcom/aocate/media/MediaPlayer;->access$7(Lcom/aocate/media/MediaPlayer;Landroid/os/Handler;)V

    .line 409
    :cond_1
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    invoke-static {p1}, Lcom/aocate/media/MediaPlayer;->access$4(Lcom/aocate/media/MediaPlayer;)Landroid/os/Handler;

    move-result-object p1

    .line 411
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/MediaPlayer;->access$4(Lcom/aocate/media/MediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 410
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    iget-object p1, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object p1, p1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$4;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 419
    throw p1
.end method
