.class Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RssFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RssItemParser"
.end annotation


# instance fields
.field _Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

.field private _enclosureHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

.field private _mediaThumbnailHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;)V
    .locals 3

    .line 149
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 246
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$11;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$11;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_enclosureHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 272
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$12;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$12;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_mediaThumbnailHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 151
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "title"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "guid"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$2;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "link"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$3;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "pubDate"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$4;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$4;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "originatingFeedID"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$5;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$5;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    if-nez p1, :cond_1

    .line 194
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "enclosure"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_enclosureHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "media:content"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "media:thumbnail"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_mediaThumbnailHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "media:group"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssGroupParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssGroupParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "itunes:duration"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$6;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$6;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    if-nez p1, :cond_2

    .line 210
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "description"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$7;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$7;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "content:encoded"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$8;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$8;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "category"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$9;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$9;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "author"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$10;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$10;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static rssItemFromParent(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    .line 324
    instance-of v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    if-nez v0, :cond_0

    .line 325
    iget-object p0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    goto :goto_0

    .line 327
    :cond_0
    check-cast p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    return-object p0
.end method


# virtual methods
.method public currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 2

    .line 310
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;-><init>(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 313
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    return-object v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->handleEndOfRssFeedItem(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 305
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 318
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
