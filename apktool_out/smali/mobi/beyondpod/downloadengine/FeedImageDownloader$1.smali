.class Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;
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

    .line 128
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Lmobi/beyondpod/downloadengine/DownloadAgent;Z)V
    .locals 6

    const/4 p1, 0x0

    .line 136
    :try_start_0
    new-instance p2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;-><init>(I)V

    .line 137
    iget-object v1, p2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {v2}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$000(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    .line 138
    iget-object v1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {v1}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$100(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p2}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->parseFeedFile(Ljava/io/File;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 140
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->hasParseFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-static {}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to parse: %s (%s). reason: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {v5}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$000(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {v4}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$000(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object p2, p2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    .line 142
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    iget v0, p2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->isRssFeedType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object p2, p2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    :catch_0
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->getFeedImageLink()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 160
    iget-object p2, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {p2}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$000(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->getFeedImageLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmobi/beyondpod/rsscore/Feed;->setFeedImageUrl(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {p1}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$300(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)V

    return-void

    .line 166
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {p1}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$400(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)V

    return-void
.end method

.method public onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V
    .locals 4

    .line 172
    invoke-static {}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to update feed for image download for: %s! reason: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

    invoke-static {v2}, Lmobi/beyondpod/downloadengine/FeedImageDownloader;->access$000(Lmobi/beyondpod/downloadengine/FeedImageDownloader;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

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

    .line 173
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/FeedImageDownloader$1;->this$0:Lmobi/beyondpod/downloadengine/FeedImageDownloader;

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
