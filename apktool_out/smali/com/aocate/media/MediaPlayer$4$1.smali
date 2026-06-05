.class Lcom/aocate/media/MediaPlayer$4$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/MediaPlayer$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
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
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer$4$1;->this$1:Lcom/aocate/media/MediaPlayer$4;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$4$1;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v0}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "onServiceConnected 257"

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$4$1;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v0}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/aocate/media/MediaPlayer$4$1;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v1}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/aocate/media/MediaPlayer;->access$0(Lcom/aocate/media/MediaPlayer;)Lcom/aocate/media/AndroidMediaPlayer;

    move-result-object v1

    .line 355
    iget-object v2, p0, Lcom/aocate/media/MediaPlayer$4$1;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v2}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v2

    invoke-static {v2}, Lcom/aocate/media/MediaPlayer;->access$1(Lcom/aocate/media/MediaPlayer;)Lcom/aocate/media/ServiceBackedMediaPlayer;

    move-result-object v2

    .line 353
    invoke-static {v0, v1, v2}, Lcom/aocate/media/MediaPlayer;->access$2(Lcom/aocate/media/MediaPlayer;Lcom/aocate/media/MediaPlayerImpl;Lcom/aocate/media/MediaPlayerImpl;)V

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "End onServiceConnected 362"

    .line 356
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$4$1;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v0}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aocate/media/MediaPlayer$4$1;->this$1:Lcom/aocate/media/MediaPlayer$4;

    invoke-static {v1}, Lcom/aocate/media/MediaPlayer$4;->access$0(Lcom/aocate/media/MediaPlayer$4;)Lcom/aocate/media/MediaPlayer;

    move-result-object v1

    iget-object v1, v1, Lcom/aocate/media/MediaPlayer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 359
    throw v0
.end method
