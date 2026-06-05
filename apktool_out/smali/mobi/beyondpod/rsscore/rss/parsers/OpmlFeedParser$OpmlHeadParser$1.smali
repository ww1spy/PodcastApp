.class Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$1;
.super Ljava/lang/Object;
.source "OpmlFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;)V
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

    .line 73
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlHeadParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    return-void
.end method
