.class public Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "ParserBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleElementParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;
    }
.end annotation


# instance fields
.field _ElementHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    .line 164
    iput-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;->_ElementHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;->_ElementHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    if-eqz v0, :cond_0

    .line 173
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;->_ElementHandler:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;->_CurrentElementText:Ljava/lang/StringBuilder;

    invoke-interface {v0, p2, v1, v2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser$ElementHandler;->onElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    new-instance p2, Lorg/xml/sax/SAXException;

    const-string p3, "Exception was thrown during feed Parsing"

    invoke-direct {p2, p3, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 179
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
