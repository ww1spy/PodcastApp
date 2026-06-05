.class Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "AtomFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtomItemSourceParser"
.end annotation


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V
    .locals 3

    .line 280
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 282
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "id"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;->_handlers:Ljava/util/HashMap;

    const-string v0, "title"

    new-instance v1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser$2;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;)V

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 0

    .line 276
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p0

    return-object p0
.end method

.method private currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 1

    .line 302
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    return-object v0
.end method
