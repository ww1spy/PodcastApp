.class Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$3;
.super Ljava/lang/Object;
.source "AtomFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$3;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$3;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->PubDate:Ljava/util/Date;

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$3;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseRFC822Time(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p2

    iput-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->PubDate:Ljava/util/Date;

    :cond_0
    return-void
.end method
