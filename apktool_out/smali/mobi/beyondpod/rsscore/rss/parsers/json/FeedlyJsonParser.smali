.class public Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;
.super Ljava/lang/Object;
.source "FeedlyJsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;,
        Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;
    }
.end annotation


# instance fields
.field private _LockCutOff:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

.field private _ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x403f000000000000L    # 31.0

    .line 19
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromDays(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_LockCutOff:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    .line 36
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    return-void
.end method

.method protected static handleEndOfRssFeedItem(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserUtils;->handleEndOfRssFeedItem(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 372
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->MaxItemsToParse:I

    if-lt p1, v0, :cond_0

    .line 374
    new-instance p1, Ljava/io/IOException;

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

    invoke-direct {p1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-void
.end method

.method private isStarred(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;",
            ">;)Z"
        }
    .end annotation

    .line 359
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;

    .line 361
    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;->id:Ljava/lang/String;

    const-string v1, "global.saved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private readAlternateLink(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 292
    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$1;)V

    .line 294
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x30ff2b

    if-eq v3, v4, :cond_1

    const v4, 0x368f3a

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "href"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 305
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 302
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;->type:Ljava/lang/String;

    goto :goto_0

    .line 299
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;->href:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readAlternateLinks(Lcom/google/gson/stream/JsonReader;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readAlternateLink(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-object v0
.end method

.method private readEnclosure(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->EnclosureDownloadPath:Ljava/lang/String;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-boolean v2, v2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ForceUniqueEnclosureNames:Z

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;-><init>(Ljava/lang/String;Z)V

    .line 194
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 196
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 199
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x41f1c51a

    if-eq v3, v4, :cond_2

    const v4, 0x30ff2b

    if-eq v3, v4, :cond_1

    const v4, 0x368f3a

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const-string v3, "href"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 210
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 207
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    goto :goto_0

    .line 204
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->setEnclosureFileLength(Ljava/lang/Long;)V

    goto :goto_0

    .line 201
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 217
    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readEnclosures(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 183
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readEnclosure(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-void
.end method

.method private readFeedItems(Lcom/google/gson/stream/JsonReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 84
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readItem(Lcom/google/gson/stream/JsonReader;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-void
.end method

.method private readItem(Lcom/google/gson/stream/JsonReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;-><init>(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    .line 94
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 98
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->cleanRTLDivs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const-string v2, "published"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setPubDate(Ljava/util/Date;)V

    goto :goto_0

    :cond_2
    const-string v2, "updated"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    .line 109
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setPubDate(Ljava/util/Date;)V

    goto :goto_0

    :cond_3
    const-string v2, "alternate"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 113
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readAlternateLinks(Lcom/google/gson/stream/JsonReader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 116
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;->href:Ljava/lang/String;

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v2, "tags"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readTags(Lcom/google/gson/stream/JsonReader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 123
    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->isStarred(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setGoogleStarred()V

    goto/16 :goto_0

    :cond_5
    const-string v2, "id"

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingItemId:Ljava/lang/String;

    .line 132
    iget-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingItemId:Ljava/lang/String;

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v2, "origin"

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 136
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readItemOrigin(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "unread"

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 140
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setGoogleRead()V

    goto/16 :goto_0

    :cond_8
    const-string v2, "summary"

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget v2, v2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    if-nez v2, :cond_9

    const/4 v1, 0x1

    .line 145
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readItemContent(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "content"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget v2, v2, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    if-nez v2, :cond_a

    .line 150
    invoke-direct {p0, p1, v0, v3}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readItemContent(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "enclosure"

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseLevel:I

    if-nez v1, :cond_c

    .line 155
    :cond_b
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readEnclosures(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto/16 :goto_0

    .line 159
    :cond_c
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 163
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 165
    invoke-direct {p0, v0}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->setReadLockedIfNeeded(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 166
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setInGoogleReadingList()V

    .line 167
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/rss/parsers/ParserUtils;->handleEndOfRssFeedItem(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method private readItemContent(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    .line 258
    iget-object v1, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iput-object v0, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_1
    iput-object v0, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method private readItemOrigin(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 224
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x6942258

    if-eq v2, v3, :cond_1

    const v3, 0x6abf78bb

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "streamId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 235
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 232
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/parsers/ParserBase;->cleanRTLDivs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeedTitle:Ljava/lang/String;

    goto :goto_0

    .line 229
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeed:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readRootObject(Lcom/google/gson/stream/JsonReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 43
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    const/4 v1, 0x6

    iput v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v2, "items"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "updated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "direction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_4
    const-string v2, "alternate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 73
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 70
    :pswitch_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readFeedItems(Lcom/google/gson/stream/JsonReader;)V

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readAlternateLinks(Lcom/google/gson/stream/JsonReader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 65
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$AlternateLink;->href:Ljava/lang/String;

    iput-object v0, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->PubDate:Ljava/util/Date;

    goto :goto_0

    .line 54
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v0, :cond_2

    const-string v2, "rtl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iput-boolean v3, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->RTL:Z

    goto/16 :goto_0

    .line 51
    :pswitch_4
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_ParseData:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x53ecbf86 -> :sswitch_4
        -0x395ff881 -> :sswitch_3
        -0xdf91f45 -> :sswitch_2
        0x5fde7c0 -> :sswitch_1
        0x6942258 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readTag(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 334
    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;-><init>(Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$1;)V

    .line 336
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xd1b

    if-eq v3, v4, :cond_1

    const v4, 0x61f7ef4    # 2.9997847E-35f

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "label"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 347
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 344
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;->label:Ljava/lang/String;

    goto :goto_0

    .line 341
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;->id:Ljava/lang/String;

    goto :goto_0

    .line 352
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readTags(Lcom/google/gson/stream/JsonReader;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readTag(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser$Tag;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-object v0
.end method

.method private setReadLockedIfNeeded(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 3

    .line 172
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isGoogleRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->_LockCutOff:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->subtractFrom(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->IsGoogleReadLocked:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/gson/stream/JsonReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/json/FeedlyJsonParser;->readRootObject(Lcom/google/gson/stream/JsonReader;)V

    return-void
.end method
