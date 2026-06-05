.class public Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "OpmlFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/IParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;,
        Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlBodyParser;,
        Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;
    }
.end annotation


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RootParser;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 43
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "head"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "body"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlBodyParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlBodyParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "outline"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public feed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 57
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;->parseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    return-object v0
.end method

.method protected startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    .line 52
    invoke-super {p0, p1, p2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
