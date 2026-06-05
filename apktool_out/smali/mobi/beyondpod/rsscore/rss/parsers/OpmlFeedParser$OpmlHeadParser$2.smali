.class Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$2;
.super Ljava/lang/Object;
.source "OpmlFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseRFC822Time(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V

    :cond_0
    return-void
.end method
