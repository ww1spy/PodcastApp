.class public Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "ParserBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/parsers/ParserBase$SimpleElementParser;
    }
.end annotation


# static fields
.field private static final RTL_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ParserBase"


# instance fields
.field protected Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

.field public Reader:Lorg/xml/sax/XMLReader;

.field protected _CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

.field _CurrentElementText:Ljava/lang/StringBuilder;

.field private _HandlesElement:Ljava/lang/String;

.field protected _UnhadledHandler:Lmobi/beyondpod/rsscore/rss/parsers/NullParser;

.field protected _handlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<div.*?style=\".*?direction:rtl.*?\".*?>(.*?)</div>"

    .line 183
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->RTL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Reader:Lorg/xml/sax/XMLReader;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_handlers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V
    .locals 1

    .line 63
    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Reader:Lorg/xml/sax/XMLReader;

    invoke-direct {p0, v0}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 64
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Reader:Lorg/xml/sax/XMLReader;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_handlers:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Reader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public static cleanRTLDivs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 190
    :try_start_0
    sget-object v0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->RTL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object p0
.end method

.method protected static handleEndOfRssFeedItem(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 144
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserUtils;->handleEndOfRssFeedItem(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 146
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->MaxItemsToParse:I

    if-lt p1, v0, :cond_0

    .line 148
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feed has too many items! Loaded the first "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->MaxItemsToParse:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/ParserUtils$TooManyItemsException;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/rss/parsers/ParserUtils$TooManyItemsException;-><init>()V

    invoke-direct {p1, p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    return-void
.end method

.method private startHandlingEvents()V
    .locals 1

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 70
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 120
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_CurrentElementText:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_CurrentElementText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    sget-object p2, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SB Size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_CurrentElementText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->stopHandlingEvents()V

    return-void
.end method

.method protected getNullHandler()Lmobi/beyondpod/rsscore/rss/parsers/NullParser;
    .locals 1

    .line 135
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_UnhadledHandler:Lmobi/beyondpod/rsscore/rss/parsers/NullParser;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/NullParser;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/rss/parsers/NullParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_UnhadledHandler:Lmobi/beyondpod/rsscore/rss/parsers/NullParser;

    .line 138
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_UnhadledHandler:Lmobi/beyondpod/rsscore/rss/parsers/NullParser;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p3, "http://www.itunes.com"

    .line 90
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "itunes:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p3, "http://purl.org/rss/1.0/modules/content"

    .line 92
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "content:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 94
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "rdf:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p3, "http://search.yahoo.com/mrss"

    .line 96
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "media:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string p3, "http://www.metachannels.com/channels-mrss"

    .line 98
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "channels:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 101
    :cond_4
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_handlers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    if-nez p1, :cond_5

    .line 104
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->getNullHandler()Lmobi/beyondpod/rsscore/rss/parsers/NullParser;

    move-result-object p1

    .line 107
    :cond_5
    invoke-virtual {p1, p2, p4}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method protected startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_HandlesElement:Ljava/lang/String;

    .line 76
    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p1, p2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->_CurrentElementText:Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->startHandlingEvents()V

    return-void
.end method

.method protected stopHandlingEvents()V
    .locals 2

    .line 83
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Reader:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 84
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Reader:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method
