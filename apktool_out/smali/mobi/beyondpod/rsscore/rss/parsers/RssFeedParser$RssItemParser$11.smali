.class Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$11;
.super Ljava/lang/Object;
.source "RssFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$11;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 249
    new-instance p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object p3, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$11;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p3

    iget-object p3, p3, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->EnclosureDownloadPath:Ljava/lang/String;

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$11;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    .line 250
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    iget-boolean v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ForceUniqueEnclosureNames:Z

    invoke-direct {p1, p3, v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;-><init>(Ljava/lang/String;Z)V

    const-string p3, ""

    const-string v0, "url"

    .line 252
    invoke-virtual {p2, p3, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 253
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iput-object p3, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    :cond_0
    const-string p3, ""

    const-string v0, "href"

    .line 256
    invoke-virtual {p2, p3, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 257
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iput-object p3, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    :cond_1
    const-string p3, ""

    const-string v0, "length"

    .line 260
    invoke-virtual {p2, p3, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 261
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 262
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->setEnclosureFileLength(Ljava/lang/Long;)V

    :cond_2
    const-string p3, ""

    const-string v0, "type"

    .line 264
    invoke-virtual {p2, p3, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 265
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 266
    iput-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    .line 268
    :cond_3
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$11;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    return-void
.end method
