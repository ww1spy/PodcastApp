.class public Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;
.super Ljava/lang/Object;
.source "XmlTextWriter.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "UTF8"


# instance fields
.field private _isClosed:Z

.field private _serializer:Lorg/xmlpull/v1/XmlSerializer;

.field private _stream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_isClosed:Z

    .line 39
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_serializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_stream:Ljava/io/FileOutputStream;

    .line 41
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_serializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_stream:Ljava/io/FileOutputStream;

    const-string v1, "UTF8"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_isClosed:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 78
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 79
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_stream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 80
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_stream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_isClosed:Z

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_isClosed:Z

    return v0
.end method

.method public writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeEndElement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeStartDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "utf-8"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->_serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
