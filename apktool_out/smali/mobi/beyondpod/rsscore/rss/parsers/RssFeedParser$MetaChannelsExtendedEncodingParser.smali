.class public Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RssFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaChannelsExtendedEncodingParser"
.end annotation


# instance fields
.field private _mediaChannelsStreamContentHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V
    .locals 3

    .line 402
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 411
    new-instance p1, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;->_mediaChannelsStreamContentHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    .line 403
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "channels:stream"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;->_mediaChannelsStreamContentHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 0

    .line 398
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p0

    return-object p0
.end method

.method private currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 1

    .line 497
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->rssItemFromParent(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 408
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->rssItemFromParent(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
