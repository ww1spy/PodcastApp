.class Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;
.super Ljava/lang/Object;
.source "BeyondPodMediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$result:Landroid/service/media/MediaBrowserService$Result;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;->this$0:Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;

    iput-object p2, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;->val$result:Landroid/service/media/MediaBrowserService$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "__ROOT__"

    .line 153
    iget-object v1, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadCurrentTrackIfNeeded()V

    .line 161
    :cond_0
    new-instance v0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1$1;-><init>(Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
