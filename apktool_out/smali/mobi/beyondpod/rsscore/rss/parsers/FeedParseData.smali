.class public Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
.super Ljava/lang/Object;
.source "FeedParseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;
    }
.end annotation


# static fields
.field public static final FeedParseLevel_Complete:I = 0x0

.field public static final FeedParseLevel_ItemAndEnclosureEssentials:I = 0x2

.field public static final FeedParseLevel_ItemEssentials:I = 0x1

.field public static final FeedType_Atom:I = 0x2

.field public static final FeedType_FEEDLY:I = 0x6

.field public static final FeedType_HTML:I = 0x5

.field public static final FeedType_OPML:I = 0x3

.field public static final FeedType_RDF:I = 0x4

.field public static final FeedType_RSS:I = 0x1

.field public static final FeedType_UNKNOWN:I = -0x1


# instance fields
.field public CachedFileSize:J

.field public EnclosureDownloadPath:Ljava/lang/String;

.field public final Feed:Lmobi/beyondpod/rsscore/Feed;

.field public ForceUniqueEnclosureNames:Z

.field public LoadTempFeed:Z

.field public MaxItemsToParse:I

.field public PageSize:I

.field public ParseDuration:J

.field public ParseException:Ljava/lang/Exception;

.field public ParseLevel:I

.field public ParsedFeedType:I

.field public final RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

.field public StartAtItem:I

.field private _ParseListener:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGMaxFeedPosts()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->MaxItemsToParse:I

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->EnclosureDownloadPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ForceUniqueEnclosureNames:Z

    .line 56
    new-instance v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    .line 57
    new-instance v1, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V

    iput-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 58
    iput v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    .line 61
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->LoadTempFeed:Z

    .line 65
    iput-object v3, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseDuration:J

    .line 70
    iput p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    return-void
.end method

.method public static isRssFeedType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public averageItemSize()J
    .locals 5

    .line 75
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->CachedFileSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->CachedFileSize:J

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public hasParseFailed()Z
    .locals 4

    .line 111
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    instance-of v0, v0, Lorg/xml/sax/SAXException;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    check-cast v0, Lorg/xml/sax/SAXException;

    .line 116
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/ParserUtils$TooManyItemsException;

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public notifyItemParsed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->_ParseListener:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->_ParseListener:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;->onItemParsed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_0
    return-void
.end method

.method public notifyParseCompleted()V
    .locals 2

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->_ParseListener:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->_ParseListener:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-interface {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;->onParseCompleted(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    :cond_0
    return-void
.end method

.method public notifyParseStarted()V
    .locals 2

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->_ParseListener:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->_ParseListener:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-interface {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;->onParseStarted(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    :cond_0
    return-void
.end method

.method public setParseListener(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->_ParseListener:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;

    return-void
.end method
