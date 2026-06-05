.class public Lmobi/beyondpod/rsscore/rss/parsers/ParserUtils;
.super Ljava/lang/Object;
.source "ParserUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/parsers/ParserUtils$TooManyItemsException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleEndOfRssFeedItem(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 6

    .line 40
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    .line 43
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showContentListPostImages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemImageUrls()Ljava/util/ArrayList;

    .line 47
    :cond_0
    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->EnclosureDuration:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-wide v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Duration:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 51
    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->EnclosureDuration:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserUtils;->parseDuration(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Duration:J

    .line 54
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->notifyItemParsed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public static parseDuration(Ljava/lang/String;)J
    .locals 11

    const-string v0, ":"

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 61
    aget-object v0, p0, v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseLong(Ljava/lang/String;J)J

    move-result-wide v3

    add-long v5, v1, v3

    const/4 v0, 0x1

    .line 62
    array-length v3, p0

    if-le v3, v0, :cond_1

    const-wide/16 v3, 0x3c

    mul-long/2addr v5, v3

    .line 64
    aget-object v0, p0, v0

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseLong(Ljava/lang/String;J)J

    move-result-wide v7

    add-long v9, v5, v7

    const/4 v0, 0x2

    .line 65
    array-length v5, p0

    if-le v5, v0, :cond_0

    mul-long/2addr v9, v3

    .line 67
    aget-object p0, p0, v0

    invoke-static {p0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseLong(Ljava/lang/String;J)J

    move-result-wide v0

    add-long v5, v9, v0

    goto :goto_0

    :cond_0
    move-wide v5, v9

    :cond_1
    :goto_0
    return-wide v5
.end method
