.class Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;
.super Ljava/lang/Thread;
.source "RepositoryPersistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepositoryWorker"
.end annotation


# instance fields
.field private volatile _IsReady:Z

.field private workerHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 412
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->_IsReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$1;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;)Z
    .locals 0

    .line 412
    iget-boolean p0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->_IsReady:Z

    return p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;)Landroid/os/Handler;
    .locals 0

    .line 412
    iget-object p0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->workerHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 419
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 420
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->workerHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$RepositoryWorker;->_IsReady:Z

    .line 422
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
