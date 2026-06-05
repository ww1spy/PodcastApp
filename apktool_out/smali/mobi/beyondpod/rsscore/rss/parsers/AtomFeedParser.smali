.class public Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "AtomFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;,
        Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;,
        Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;
    }
.end annotation


# static fields
.field public static final GOOGLE_ITEM_TAG:Ljava/lang/String; = "tag:google.com,2005:reader/"


# instance fields
.field private _PubDateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RootParser;)V
    .locals 3

    .line 42
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 93
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$3;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->_PubDateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 44
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "title"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "link"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$2;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "updated"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->_PubDateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "item"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "entry"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;->parseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    return-object v0
.end method

.method protected startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    if-eqz p2, :cond_1

    const-string v0, "http://www.google.com/schemas/reader/atom/"

    const-string v1, "dir"

    .line 86
    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v0, :cond_0

    const-string v2, "rtl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->RTL:Z

    .line 90
    :cond_1
    invoke-super {p0, p1, p2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
