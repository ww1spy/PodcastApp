.class Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$7;
.super Ljava/lang/Object;
.source "AtomFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$7;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$7;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    iget-object p3, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$7;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p3

    invoke-static {p3, p2}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$MediaRssGroupParser;->parseEnclosure(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lorg/xml/sax/helpers/AttributesImpl;)Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    return-void
.end method
