.class Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$5;
.super Ljava/lang/Object;
.source "RssFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;)V
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

    .line 184
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$5;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser$5;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$RssItemParser;->currentRssItem()Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->SetOriginatingFeedID(Ljava/util/UUID;)V

    return-void
.end method
