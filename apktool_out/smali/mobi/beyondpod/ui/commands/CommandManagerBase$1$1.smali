.class Lmobi/beyondpod/ui/commands/CommandManagerBase$1$1;
.super Ljava/lang/Object;
.source "CommandManagerBase.java"

# interfaces
.implements Lmobi/beyondpod/sync/ChangeSyncManager$ChangeSyncStatusResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManagerBase$1;->syncCompleted(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/commands/CommandManagerBase$1;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/commands/CommandManagerBase$1;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManagerBase$1$1;->this$0:Lmobi/beyondpod/ui/commands/CommandManagerBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncCompleted(Z)V
    .locals 1

    .line 177
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManagerBase$1$1;->this$0:Lmobi/beyondpod/ui/commands/CommandManagerBase$1;

    iget-object p1, p1, Lmobi/beyondpod/ui/commands/CommandManagerBase$1;->val$f:Lmobi/beyondpod/rsscore/FeedList;

    iget-object v0, p0, Lmobi/beyondpod/ui/commands/CommandManagerBase$1$1;->this$0:Lmobi/beyondpod/ui/commands/CommandManagerBase$1;

    iget-boolean v0, v0, Lmobi/beyondpod/ui/commands/CommandManagerBase$1;->val$isUnattended:Z

    invoke-static {p1, v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startUpdateDownload(Lmobi/beyondpod/rsscore/FeedList;Z)V

    return-void
.end method
