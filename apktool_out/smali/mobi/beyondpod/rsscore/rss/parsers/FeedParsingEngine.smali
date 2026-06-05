.class public Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;
.super Ljava/lang/Object;
.source "FeedParsingEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedParsingEngine"


# instance fields
.field private de:Lmobi/beyondpod/rsscore/helpers/DetectEncoding;

.field private defaultEncoding:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field error:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "utf-8"

    .line 47
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->defaultEncoding:Ljava/lang/String;

    .line 48
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->defaultEncoding:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->de:Lmobi/beyondpod/rsscore/helpers/DetectEncoding;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->error:Z

    return-void
.end method

.method public static parseFeedFile(Ljava/io/File;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V
    .locals 1

    .line 53
    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;-><init>()V

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->parseFile(Ljava/io/File;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    return-void
.end method

.method private static parseFeedJSONInternal(Ljava/io/InputStreamReader;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V
    .locals 7

    .line 90
    sget-object v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->TAG:Ljava/lang/String;

    const-string v1, "Parsing feed JSON..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->notifyParseStarted()V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    :try_start_0
    new-instance v2, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;

    invoke-direct {v2, p1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 98
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v3, p0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->parse(Lcom/google/gson/stream/JsonReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 114
    iget-object v2, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 102
    :try_start_2
    iput-object v2, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    .line 110
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 114
    iget-object v2, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 115
    :goto_0
    iput-object p0, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    .line 119
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    iput-wide v4, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseDuration:J

    .line 120
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->notifyParseCompleted()V

    .line 122
    sget-object p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->TAG:Ljava/lang/String;

    const-string p1, "Done Parsing feed JSON!"

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    if-eqz p0, :cond_1

    .line 110
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 114
    iget-object v3, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    if-nez v3, :cond_1

    .line 115
    iput-object p0, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    .line 119
    :cond_1
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v0

    iput-wide v5, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseDuration:J

    .line 120
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->notifyParseCompleted()V

    .line 122
    sget-object p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->TAG:Ljava/lang/String;

    const-string p1, "Done Parsing feed JSON!"

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private static parseFeedXMLInternal(Ljava/io/InputStreamReader;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V
    .locals 7

    .line 129
    sget-object v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->TAG:Ljava/lang/String;

    const-string v1, "Parsing feed XML..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->notifyParseStarted()V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 140
    new-instance v3, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;

    invoke-direct {v3, v2, p1}, Lmobi/beyondpod/rsscore/rss/parsers/RootParser;-><init>(Lorg/xml/sax/XMLReader;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 142
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 144
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    const-string v4, "http://xml.org/sax/properties/lexical-handler"

    .line 145
    invoke-interface {v2, v4, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 165
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 169
    iget-object v2, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 157
    :try_start_2
    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    .line 165
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 169
    iget-object v2, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    if-nez v2, :cond_0

    goto :goto_0

    :catch_3
    move-exception v2

    .line 152
    :try_start_4
    iput-object v2, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_0

    .line 165
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception p0

    .line 169
    iget-object v2, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 170
    :goto_0
    iput-object p0, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    .line 174
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    iput-wide v4, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseDuration:J

    .line 175
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->notifyParseCompleted()V

    .line 177
    sget-object p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->TAG:Ljava/lang/String;

    const-string p1, "Done Parsing feed XML!"

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    if-eqz p0, :cond_1

    .line 165
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    .line 169
    iget-object v3, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    if-nez v3, :cond_1

    .line 170
    iput-object p0, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    .line 174
    :cond_1
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v0

    iput-wide v5, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseDuration:J

    .line 175
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->notifyParseCompleted()V

    .line 177
    sget-object p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->TAG:Ljava/lang/String;

    const-string p1, "Done Parsing feed XML!"

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private parseFile(Ljava/io/File;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V
    .locals 4

    .line 60
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 62
    sget-object v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " parsing of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->encoding:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->de:Lmobi/beyondpod/rsscore/helpers/DetectEncoding;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->detect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->encoding:Ljava/lang/String;

    .line 67
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->de:Lmobi/beyondpod/rsscore/helpers/DetectEncoding;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->stripBOM(Ljava/io/InputStream;)V

    .line 68
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->de:Lmobi/beyondpod/rsscore/helpers/DetectEncoding;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->alias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 70
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 72
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->de:Lmobi/beyondpod/rsscore/helpers/DetectEncoding;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->isJson()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {v1, p2}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->parseFeedJSONInternal(Ljava/io/InputStreamReader;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v1, p2}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->parseFeedXMLInternal(Ljava/io/InputStreamReader;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 79
    :goto_0
    iget-object v0, p2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 84
    iput-object p1, p2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    :goto_1
    return-void
.end method
