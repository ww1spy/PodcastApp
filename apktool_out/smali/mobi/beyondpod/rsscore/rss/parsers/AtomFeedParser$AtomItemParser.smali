.class Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "AtomFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtomItemParser"
.end annotation


# instance fields
.field _Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

.field private _OriginatingItemIdHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

.field private _categoryHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

.field private _dateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

.field private _linkHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

.field private _mediaRssContentHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;)V
    .locals 3

    .line 114
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 164
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$4;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$4;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_dateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 183
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$5;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$5;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_OriginatingItemIdHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 192
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$6;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$6;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_linkHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 225
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$7;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$7;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_mediaRssContentHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 232
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$8;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$8;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_categoryHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 116
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "title"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "link"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_linkHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "updated"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_dateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "published"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_dateHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "id"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_OriginatingItemIdHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "source"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "category"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_categoryHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    if-nez p1, :cond_1

    .line 140
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "media:content"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_mediaRssContentHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "media:group"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    if-nez p1, :cond_2

    .line 146
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "summary"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$2;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "content"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$3;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 0

    .line 108
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p0

    return-object p0
.end method

.method private currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 2

    .line 264
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;-><init>(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 267
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    return-object v0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v1, "http://www.google.com/schemas/reader/atom/"

    const-string v2, "is-read-state-locked"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->IsGoogleReadLocked:Z

    .line 257
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->handleEndOfRssFeedItem(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->_Item:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 259
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 272
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
