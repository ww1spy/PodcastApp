.class Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$2;
.super Ljava/lang/Object;
.source "RdfFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/RdfFeedParser$RdfItemParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    return-void
.end method
