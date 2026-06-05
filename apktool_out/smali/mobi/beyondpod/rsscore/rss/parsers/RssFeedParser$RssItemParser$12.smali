.class Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$12;
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

    .line 273
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$12;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 275
    new-instance p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;

    invoke-direct {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;-><init>()V

    const-string p3, ""

    const-string v0, "url"

    .line 277
    invoke-virtual {p2, p3, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 278
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iput-object p3, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Url:Ljava/lang/String;

    :cond_0
    const-string p3, ""

    const-string v0, "width"

    .line 281
    invoke-virtual {p2, p3, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 282
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Width:I

    :cond_1
    const-string p3, ""

    const-string v0, "height"

    .line 285
    invoke-virtual {p2, p3, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 286
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Height:I

    .line 289
    :cond_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->IsValid()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 291
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$12;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p2

    iput-object p1, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Image:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;

    .line 294
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$12;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->getFeedImageLink()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 295
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$12;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p2

    iget-object p2, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const-string p3, "rssChildItem"

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Url:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
