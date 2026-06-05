.class Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser$5;
.super Ljava/lang/Object;
.source "RssFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser$5;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    const-string p1, ""

    const-string p3, "href"

    .line 114
    invoke-virtual {p2, p1, p3}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 116
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser$5;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p2

    iget-object p2, p2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object p2, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const-string p3, "itunes"

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
