.class Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1$1;
.super Landroid/os/AsyncTask;
.source "BeyondPodMediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1$1;->this$1:Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 167
    iget-object p1, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1$1;->this$1:Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;

    iget-object p1, p1, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;->this$0:Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;

    iget-object v0, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1$1;->this$1:Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;

    iget-object v0, v0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;->val$parentId:Ljava/lang/String;

    invoke-static {p1, v0}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->access$000(Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 175
    :try_start_0
    check-cast p1, Ljava/util/List;

    .line 177
    iget-object v0, p0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1$1;->this$1:Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;

    iget-object v0, v0, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService$1;->val$result:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v0, p1}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    invoke-static {}, Lmobi/beyondpod/services/auto/BeyondPodMediaBrowserService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaBrowserService - failed cast from Object (mediaItems) to list<MediaBrowser.MediaItem>"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
