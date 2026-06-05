.class Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;
.super Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;
.source "OpmlFeedParser.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/rss/parsers/IParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpmlOutlineHandler"
.end annotation


# instance fields
.field _Feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    return-void
.end method


# virtual methods
.method public feed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 171
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method protected startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 131
    invoke-super {p0, p1, p2}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->startHandlingEvents(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string p2, ""

    const-string v0, "xmlUrl"

    invoke-virtual {p1, p2, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 137
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string p2, ""

    const-string v0, "xmlURL"

    invoke-virtual {p1, p2, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 139
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string p2, ""

    const-string v0, "url"

    invoke-virtual {p1, p2, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 141
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string p2, ""

    const-string v0, "URL"

    invoke-virtual {p1, p2, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    :cond_2
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 143
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string p2, ""

    const-string v0, "url"

    invoke-virtual {p1, p2, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object v4, p1

    .line 145
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string p2, ""

    const-string v0, "title"

    invoke-virtual {p1, p2, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_CurrentElementAttributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v0, ""

    const-string v1, "text"

    invoke-virtual {p2, v0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    move-object v3, p1

    goto :goto_1

    .line 153
    :cond_4
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    move-object v3, p2

    goto :goto_1

    :cond_5
    const-string p1, "<No name>"

    goto :goto_0

    .line 158
    :goto_1
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->Parent:Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;

    check-cast p1, Lmobi/beyondpod/rsscore/rss/parsers/IParent;

    invoke-interface {p1}, Lmobi/beyondpod/rsscore/rss/parsers/IParent;->feed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 160
    new-instance p2, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const/4 v5, 0x4

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 161
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_handlers:Ljava/util/HashMap;

    const-string p2, "outline"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    .line 165
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;->_handlers:Ljava/util/HashMap;

    const-string p2, "outline"

    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/rss/parsers/OpmlFeedParser$OpmlOutlineHandler;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method
