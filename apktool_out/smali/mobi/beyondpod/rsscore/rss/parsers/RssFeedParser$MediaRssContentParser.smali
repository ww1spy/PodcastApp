.class public Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RssFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaRssContentParser"
.end annotation


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V
    .locals 2

    .line 349
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 350
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "channels:extended_encoding"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;

    invoke-direct {v1, p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 1

    .line 394
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->rssItemFromParent(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseEnclosure(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lorg/xml/sax/helpers/AttributesImpl;)Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;
    .locals 3

    .line 367
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->EnclosureDownloadPath:Ljava/lang/String;

    iget-boolean p0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ForceUniqueEnclosureNames:Z

    invoke-direct {v0, v1, p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;-><init>(Ljava/lang/String;Z)V

    const-string p0, ""

    const-string v1, "url"

    .line 369
    invoke-virtual {p1, p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 370
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    iput-object p0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    :cond_0
    const-string p0, ""

    const-string v1, "fileSize"

    .line 373
    invoke-virtual {p1, p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 374
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    .line 375
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->setEnclosureFileLength(Ljava/lang/Long;)V

    :cond_1
    const-string p0, ""

    const-string v1, "type"

    .line 377
    invoke-virtual {p1, p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 379
    iput-object p0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    :cond_2
    const-string p0, ""

    const-string v1, "media_type"

    .line 381
    invoke-virtual {p1, p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 382
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    iput-object p0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    :cond_3
    const-string p0, ""

    const-string v1, "medium"

    .line 385
    invoke-virtual {p1, p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 386
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 387
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->mapMediaRssMediumToMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    :cond_4
    return-object v0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser;->parseEnclosure(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lorg/xml/sax/helpers/AttributesImpl;)Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    # Route by enclosure type:
    #   image/* → add URL to episode image list
    #   *shockwave* (e.g. application/x-shockwave-flash, YouTube) → skip entirely
    #   anything else → set as audio/video enclosure
    iget-object v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    if-eqz v2, :not_image

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :not_image

    # It is an image — add its URL to the episode image URL list
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemImageUrls()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/rss/parsers/ImageParser;->checkAndAddImageUrl(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :call_super

    :not_image
    # Skip Flash/shockwave enclosures (YouTube uses application/x-shockwave-flash — not playable as audio)
    if-eqz v2, :set_enclosure

    const-string v3, "shockwave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :call_super

    :set_enclosure
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    .line 362
    :call_super
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
    .locals 1

    .line 355
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->rssItemFromParent(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    return-object v0
.end method
