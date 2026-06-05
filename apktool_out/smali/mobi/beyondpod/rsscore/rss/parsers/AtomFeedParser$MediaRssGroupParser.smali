.class Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "AtomFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaRssGroupParser"
.end annotation


# instance fields
.field private _mediaRssContentHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V
    .locals 3

    .line 311
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 326
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;->_mediaRssContentHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 313
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "media:content"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;->_mediaRssContentHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 0

    .line 307
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p0

    return-object p0
.end method

.method private currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 1

    .line 318
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseEnclosure(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lorg/xml/sax/helpers/AttributesImpl;)Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;
    .locals 0

    .line 335
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;->parseEnclosure(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lorg/xml/sax/helpers/AttributesImpl;)Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 323
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
