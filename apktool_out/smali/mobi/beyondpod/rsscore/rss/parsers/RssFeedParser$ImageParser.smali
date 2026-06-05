.class Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "RssFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageParser"
.end annotation


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;)V
    .locals 4

    .line 130
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 132
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser;->_handlers:Ljava/util/HashMap;

    const-string v1, "url"

    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;

    new-instance v3, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser$1;

    invoke-direct {v3, p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser$1;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser;Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;)V

    invoke-direct {v2, p0, v3}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
