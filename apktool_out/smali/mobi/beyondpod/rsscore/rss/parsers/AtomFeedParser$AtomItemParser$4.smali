.class Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$4;
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

    .line 165
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$4;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 168
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "updated"

    .line 172
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$4;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginalPubDateString:Ljava/lang/String;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$4;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    iput-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginalPubDateString:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser$4;->this$0:Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;->access$000(Lmobi/beyondpod/rsscore/rss/parsers/AtomFeedParser$AtomItemParser;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    iput-object p2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginalPubDateString:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
