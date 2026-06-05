.class public Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RdfFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;,
        Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;
    }
.end annotation


# static fields
.field public static final GOOGLE_ITEM_TAG:Ljava/lang/String; = "tag:google.com,2005:reader/"


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RootParser;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 40
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "channel"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "item"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 53
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

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

    .line 47
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    .line 48
    invoke-super {p0, p1, p2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
