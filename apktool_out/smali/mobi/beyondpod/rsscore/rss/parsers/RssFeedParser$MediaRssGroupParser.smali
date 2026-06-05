.class public Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssGroupParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RssFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaRssGroupParser"
.end annotation


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V
    .locals 2

    .line 335
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 336
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssGroupParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "media:content"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 341
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->rssItemFromParent(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
