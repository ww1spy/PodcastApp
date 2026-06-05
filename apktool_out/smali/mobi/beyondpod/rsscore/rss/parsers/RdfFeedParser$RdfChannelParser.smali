.class Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RdfFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RdfChannelParser"
.end annotation


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;)V
    .locals 3

    .line 60
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 62
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "title"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "description"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser$2;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "link"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser$3;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
