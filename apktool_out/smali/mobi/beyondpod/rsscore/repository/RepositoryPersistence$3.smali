.class final Lmobi/beyondpod/rsscore/repository/RepositoryPersistence$3;
.super Ljava/lang/Object;
.source "RepositoryPersistence.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->loadRepository()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->access$300()Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;->loadRepository()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositoryLoadComplete()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "RepositoryPersistence"

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 165
    :goto_2
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositoryLoadComplete()V

    throw v0
.end method
