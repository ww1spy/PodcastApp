.class Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;
.super Ljava/lang/Thread;
.source "SonicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/SonicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerWorker"
.end annotation


# instance fields
.field private volatile _IsReady:Z

.field private looper:Landroid/os/Looper;

.field private workerHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->_IsReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/services/player/impl/SonicPlayer$1;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->_IsReady:Z

    return p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;)Landroid/os/Handler;
    .locals 0

    .line 123
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->workerHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 156
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const-string v0, "SonicPlayer"

    const-string v1, "SonicPlayer worker thread finalized!"

    .line 157
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 141
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->workerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->workerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    iput-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->workerHandler:Landroid/os/Handler;

    .line 147
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    const-string v0, "SonicPlayer"

    const-string v1, "SonicPlayer worker thread released!"

    .line 150
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 1

    const/16 v0, -0x10

    .line 131
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 132
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 133
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->looper:Landroid/os/Looper;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->workerHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$PlayerWorker;->_IsReady:Z

    .line 136
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
