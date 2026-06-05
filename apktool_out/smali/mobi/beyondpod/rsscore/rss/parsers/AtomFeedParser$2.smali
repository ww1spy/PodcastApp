.class Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$2;
.super Ljava/lang/Object;
.source "AtomFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RootParser;)V
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

    .line 53
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 2

    const-string p1, ""

    const-string v0, "rel"

    .line 56
    invoke-virtual {p2, p1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "href"

    .line 57
    invoke-virtual {p2, v0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    const-string v0, "self"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 60
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->IsSuspectedNotSubscribedInGoogleReader:Z

    .line 62
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "alternate"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iput-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser;->parseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method
