.class public Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;
.super Ljava/lang/Object;
.source "PlayerPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlayerPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->mLock:Ljava/lang/Object;

    .line 1054
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1055
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1056
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1057
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1059
    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1063
    :try_start_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1069
    :cond_0
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 1074
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .line 1090
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1082
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->mLooper:Landroid/os/Looper;

    .line 1083
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1084
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    .line 1084
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
