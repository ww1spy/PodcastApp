.class Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser$1;
.super Ljava/lang/Object;
.source "RdfFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfChannelParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    return-void
.end method
