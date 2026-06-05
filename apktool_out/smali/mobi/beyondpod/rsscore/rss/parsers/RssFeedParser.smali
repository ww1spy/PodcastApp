.class public Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RssFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;,
        Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;,
        Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssGroupParser;,
        Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;,
        Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser;,
        Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;
    }
.end annotation


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RootParser;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 49
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "channel"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 54
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

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

    .line 60
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    .line 61
    invoke-super {p0, p1, p2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
