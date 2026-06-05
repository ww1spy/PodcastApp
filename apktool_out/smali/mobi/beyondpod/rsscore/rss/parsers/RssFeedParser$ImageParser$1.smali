.class Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser$1;
.super Ljava/lang/Object;
.source "RssFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser;

.field final synthetic val$parent:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser;Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser$1;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser;

    iput-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser$1;->val$parent:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ImageParser$1;->val$parent:Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/RssFeedParser$ChannelParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedImageLinks:Ljava/util/Hashtable;

    const-string p2, "rss"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
