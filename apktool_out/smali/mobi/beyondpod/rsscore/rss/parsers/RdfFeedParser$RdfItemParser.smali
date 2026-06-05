.class Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RdfFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RdfItemParser"
.end annotation


# instance fields
.field _Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

.field private _OriginatingItemIdHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;)V
    .locals 3

    .line 99
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 132
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$4;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$4;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_OriginatingItemIdHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 101
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "title"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "link"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$2;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "id"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_OriginatingItemIdHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "description"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$3;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 0

    .line 93
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p0

    return-object p0
.end method

.method private currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 2

    .line 150
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;-><init>(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 153
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    return-object v0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->handleEndOfRssFeedItem(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 145
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
