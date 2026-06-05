.class Lcom/aocate/media/ServiceBackedMediaPlayer$1;
.super Ljava/lang/Object;
.source "ServiceBackedMediaPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/ServiceBackedMediaPlayer;-><init>(Lcom/aocate/media/MediaPlayer;Landroid/content/Context;Landroid/content/ServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

.field private final synthetic val$serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/aocate/media/ServiceBackedMediaPlayer;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iput-object p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->val$serviceConnection:Landroid/content/ServiceConnection;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 97
    invoke-static {p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IPlayMedia_0_8;

    move-result-object v0

    const-string v1, "AocateServiceBackedMediaPlayer"

    const-string v2, "Setting up pmInterface 94"

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$0(Lcom/aocate/media/ServiceBackedMediaPlayer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    .line 109
    new-instance v2, Lcom/aocate/media/ServiceBackedMediaPlayer$1$1;

    invoke-direct {v2, p0}, Lcom/aocate/media/ServiceBackedMediaPlayer$1$1;-><init>(Lcom/aocate/media/ServiceBackedMediaPlayer$1;)V

    invoke-interface {v0, v2}, Lcom/aocate/presto/service/IPlayMedia_0_8;->startSession(Lcom/aocate/presto/service/IDeathCallback_0_8;)J

    move-result-wide v2

    .line 108
    invoke-static {v1, v2, v3}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$1(Lcom/aocate/media/ServiceBackedMediaPlayer;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 115
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/aocate/media/ServiceBackedMediaPlayer;->error(II)V

    :cond_0
    :goto_0
    const-string v1, "AocateServiceBackedMediaPlayer"

    const-string v2, "Assigning pmInterface"

    .line 120
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$2(Lcom/aocate/media/ServiceBackedMediaPlayer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$3(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    .line 126
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$4(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    .line 127
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$5(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    .line 128
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$6(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    .line 129
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$7(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    .line 130
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$8(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    .line 131
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$9(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    .line 132
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v1, v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$10(Lcom/aocate/media/ServiceBackedMediaPlayer;Lcom/aocate/presto/service/IPlayMedia_0_8;)V

    .line 136
    iget-object v1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    iput-object v0, v1, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$2(Lcom/aocate/media/ServiceBackedMediaPlayer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "Invoking onServiceConnected"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->val$serviceConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void

    :catchall_0
    move-exception p1

    .line 139
    iget-object p2, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {p2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$2(Lcom/aocate/media/ServiceBackedMediaPlayer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 140
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "AocateServiceBackedMediaPlayer"

    const-string v1, "onServiceDisconnected 114"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$2(Lcom/aocate/media/ServiceBackedMediaPlayer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/aocate/media/ServiceBackedMediaPlayer;->pmInterface:Lcom/aocate/presto/service/IPlayMedia_0_8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$2(Lcom/aocate/media/ServiceBackedMediaPlayer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 159
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$1(Lcom/aocate/media/ServiceBackedMediaPlayer;J)V

    .line 161
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->val$serviceConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void

    :catchall_0
    move-exception p1

    .line 156
    iget-object v0, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1;->this$0:Lcom/aocate/media/ServiceBackedMediaPlayer;

    invoke-static {v0}, Lcom/aocate/media/ServiceBackedMediaPlayer;->access$2(Lcom/aocate/media/ServiceBackedMediaPlayer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 157
    throw p1
.end method
