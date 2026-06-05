.class public Lmobi/beyondpod/rsscore/rss/parsers/NullParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "NullParser.java"


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/NullParser;->getNullHandler()Lmobi/beyondpod/rsscore/rss/parsers/NullParser;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lmobi/beyondpod/rsscore/rss/parsers/NullParser;->startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
