.class Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync$1;
.super Ljava/lang/Object;
.source "FeedContentDataSource.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync$1;->this$0:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemParsed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 3

    .line 172
    iget-object v0, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync$1;->this$0:Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;

    const/4 v1, 0x1

    new-array v1, v1, [Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->access$000(Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;[Ljava/lang/Object;)V

    return-void
.end method

.method public onParseCompleted(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V
    .locals 0

    return-void
.end method

.method public onParseStarted(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V
    .locals 0

    return-void
.end method
