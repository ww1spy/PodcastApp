.class Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "OpmlFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpmlHeadParser"
.end annotation


# instance fields
.field private _PubDateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;)V
    .locals 3

    .line 70
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 83
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$2;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;->_PubDateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 72
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "title"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "dateModified"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;->_PubDateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 95
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
