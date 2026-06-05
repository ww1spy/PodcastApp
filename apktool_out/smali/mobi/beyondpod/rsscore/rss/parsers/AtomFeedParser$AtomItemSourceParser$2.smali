.class Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser$2;
.super Ljava/lang/Object;
.source "AtomFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 294
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;->access$100(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser$2;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;->access$100(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemSourceParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p2

    iget-boolean p2, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->RTL:Z

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->cleanRTLDivs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeedTitle:Ljava/lang/String;

    return-void
.end method
