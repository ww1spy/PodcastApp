.class final Lmobi/beyondpod/ui/commands/CommandManagerBase$1;
.super Ljava/lang/Object;
.source "CommandManagerBase.java"

# interfaces
.implements Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdUpdateFeeds(Lmobi/beyondpod/rsscore/FeedList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lmobi/beyondpod/rsscore/FeedList;

.field final synthetic val$isUnattended:Z


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/FeedList;Z)V
    .locals 0

    .line 166
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManagerBase$1;->val$f:Lmobi/beyondpod/rsscore/FeedList;

    iput-boolean p2, p0, Lmobi/beyondpod/ui/commands/CommandManagerBase$1;->val$isUnattended:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncCompleted(ZII)V
    .locals 0

    .line 172
    :try_start_0
    new-instance p1, Lmobi/beyondpod/ui/commands/CommandManagerBase$1$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/commands/CommandManagerBase$1$1;-><init>(Lmobi/beyondpod/ui/commands/CommandManagerBase$1;)V

    invoke-static {p1}, Lmobi/beyondpod/sync/ChangeSyncManager;->syncChanges(Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unable to start Episode Sync!"

    invoke-static {p2, p3, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManagerBase$1;->val$f:Lmobi/beyondpod/rsscore/FeedList;

    iget-boolean p2, p0, Lmobi/beyondpod/ui/commands/CommandManagerBase$1;->val$isUnattended:Z

    invoke-static {p1, p2}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startUpdateDownload(Lmobi/beyondpod/rsscore/FeedList;Z)V

    :goto_0
    return-void
.end method
