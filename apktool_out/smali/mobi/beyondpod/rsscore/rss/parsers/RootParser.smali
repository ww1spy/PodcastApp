.class public Lmobi/beyondpod/rsscore/rss/parsers/RootParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RootParser.java"


# instance fields
.field public parseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 36
    iput-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;->parseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    .line 38
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;->_handlers:Ljava/util/HashMap;

    const-string p2, "rss"

    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RootParser;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;->_handlers:Ljava/util/HashMap;

    const-string p2, "feed"

    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RootParser;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;->_handlers:Ljava/util/HashMap;

    const-string p2, "opml"

    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RootParser;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;->_handlers:Ljava/util/HashMap;

    const-string p2, "rdf:RDF"

    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RootParser;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
