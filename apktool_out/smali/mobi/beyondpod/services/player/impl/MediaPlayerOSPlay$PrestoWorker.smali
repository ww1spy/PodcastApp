.class Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;
.super Ljava/lang/Thread;
.source "MediaPlayerOSPlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrestoWorker"
.end annotation


# instance fields
.field private volatile _IsReady:Z

.field private workerHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->_IsReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->workerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->_IsReady:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->workerHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$PrestoWorker;->_IsReady:Z

    .line 45
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
