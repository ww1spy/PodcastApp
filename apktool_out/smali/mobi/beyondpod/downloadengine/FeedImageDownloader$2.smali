.class Lmobi/beyondpod/downloadengine/FeedImageDownloader$2;
.super Ljava/lang/Object;
.source "FeedImageDownloader.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/FeedImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;


# direct methods
.method constructor <init>(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$2;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Lmobi/beyondpod/downloadengine/DownloadAgent;Z)V
    .locals 1

    .line 197
    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->destination()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$2;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {p1}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$000(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/core/FeedImageCache;->formatTempImageForFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 200
    invoke-static {}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Image download complete for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$2;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$000(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$2;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {p1}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$400(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)V

    return-void
.end method

.method public onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V
    .locals 4

    .line 209
    invoke-static {}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to download image for: %s! reason: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$2;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {v2}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$000(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$2;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {p1}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$400(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)V

    return-void
.end method

.method public onDownloadProgress(Lmobi/beyondpod/downloadengine/DownloadAgent;JJ)V
    .locals 0

    return-void
.end method

.method public onDownloadStarted(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 0

    return-void
.end method

.method public onDownloadTerminated(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 0

    return-void
.end method
