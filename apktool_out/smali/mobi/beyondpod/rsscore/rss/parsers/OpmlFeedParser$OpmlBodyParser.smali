.class Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlBodyParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "OpmlFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/IParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpmlBodyParser"
.end annotation


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;)V
    .locals 2

    .line 103
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 104
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlBodyParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "outline"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public feed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlBodyParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlBodyParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
