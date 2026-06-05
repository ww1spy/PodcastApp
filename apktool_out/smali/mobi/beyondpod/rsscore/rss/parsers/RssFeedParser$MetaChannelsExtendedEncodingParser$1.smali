.class Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;
.super Ljava/lang/Object;
.source "RssFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseExtendedEncoding(Lorg/xml/sax/helpers/AttributesImpl;)Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;
    .locals 7

    .line 450
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;-><init>()V

    const-string v1, "stream_kind-string"

    const-string v2, "UNKNOWN"

    .line 452
    invoke-direct {p0, p1, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->type:Ljava/lang/String;

    const-string v1, "stream_size"

    const-wide/16 v2, -0x1

    .line 454
    invoke-direct {p0, p1, v1, v2, v3}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readLongAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSize:J

    const-string v1, "file_size-string3"

    const-string v4, "N/A"

    .line 455
    invoke-direct {p0, p1, v1, v4}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSizeString:Ljava/lang/String;

    const-string v1, "bit_rate"

    const/4 v4, -0x1

    .line 456
    invoke-direct {p0, p1, v1, v4}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readIntAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->bitrate:I

    const-string v1, "bit_rate-string"

    const-string v5, "N/A"

    .line 457
    invoke-direct {p0, p1, v1, v5}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->bitrateString:Ljava/lang/String;

    const-string v1, "duration"

    .line 458
    invoke-direct {p0, p1, v1, v2, v3}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readLongAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    iput-wide v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->duration:J

    const-string v1, "height"

    .line 460
    invoke-direct {p0, p1, v1, v4}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readIntAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->height:I

    const-string v1, "width"

    .line 461
    invoke-direct {p0, p1, v1, v4}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readIntAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->width:I

    const-string v1, "display_aspect_ratio-string"

    const-string v2, "N/A"

    .line 463
    invoke-direct {p0, p1, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->displayAspectRatio:Ljava/lang/String;

    const-string v1, "standard"

    const-string v2, "N/A"

    .line 465
    invoke-direct {p0, p1, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->standard:Ljava/lang/String;

    const-string v1, "frame_rate_mode"

    const-string v2, "N/A"

    .line 466
    invoke-direct {p0, p1, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->frameRateMode:Ljava/lang/String;

    const-string v1, "bit_rate_mode"

    const-string v2, "N/A"

    .line 467
    invoke-direct {p0, p1, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->bitRateMode:Ljava/lang/String;

    const-string v1, "frame_rate"

    const-string v2, "N/A"

    .line 468
    invoke-direct {p0, p1, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->frameRate:Ljava/lang/String;

    const-string v1, "codec_id"

    const-string v2, "N/A"

    .line 469
    invoke-direct {p0, p1, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->codecID:Ljava/lang/String;

    const-string v1, "format"

    const-string v2, "N/A"

    .line 470
    invoke-direct {p0, p1, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->format:Ljava/lang/String;

    const-string v1, "internet_media_type"

    const-string v2, "N/A"

    .line 471
    invoke-direct {p0, p1, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method private readIntAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;I)I
    .locals 1

    const-string v0, ""

    .line 490
    invoke-virtual {p1, v0, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private readLongAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;J)J
    .locals 1

    const-string v0, ""

    .line 484
    invoke-virtual {p1, v0, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method private readStringAttributeValue(Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 478
    invoke-virtual {p1, v0, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-static {p1, p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 414
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 416
    invoke-direct {p0, p2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->parseExtendedEncoding(Lorg/xml/sax/helpers/AttributesImpl;)Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;

    move-result-object p1

    .line 418
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->addExtendedEncoding(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;)V

    .line 420
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_4

    const-string p2, "General"

    iget-object p3, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->type:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 423
    iget-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSizeString:Ljava/lang/String;

    const-string p3, "MiB"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/high16 p3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 425
    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSizeString:Ljava/lang/String;

    const-string p2, "MiB"

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseFloat(Ljava/lang/String;F)F

    move-result p1

    cmpl-float p2, p1, v0

    if-lez p2, :cond_3

    const/high16 p2, 0x49800000    # 1048576.0f

    mul-float/2addr p1, p2

    goto :goto_0

    .line 429
    :cond_0
    iget-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSizeString:Ljava/lang/String;

    const-string v1, "GiB"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 431
    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSizeString:Ljava/lang/String;

    const-string p2, "GiB"

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseFloat(Ljava/lang/String;F)F

    move-result p1

    cmpl-float p2, p1, v0

    if-lez p2, :cond_3

    const/high16 p2, 0x4e800000

    mul-float/2addr p1, p2

    goto :goto_0

    .line 435
    :cond_1
    iget-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSizeString:Ljava/lang/String;

    const-string v1, "KiB"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 437
    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSizeString:Ljava/lang/String;

    const-string p2, "KiB"

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseFloat(Ljava/lang/String;F)F

    move-result p1

    cmpl-float p2, p1, v0

    if-lez p2, :cond_3

    const/high16 p2, 0x44800000    # 1024.0f

    mul-float/2addr p1, p2

    goto :goto_0

    :cond_2
    move p1, v0

    :cond_3
    :goto_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_4

    .line 443
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MetaChannelsExtendedEncodingParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p2

    float-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->setEnclosureFileLength(Ljava/lang/Long;)V

    :cond_4
    return-void
.end method
