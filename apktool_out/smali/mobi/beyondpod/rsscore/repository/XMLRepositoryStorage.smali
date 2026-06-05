.class public Lmobi/beyondpod/rsscore/repository/XMLRepositoryStorage;
.super Ljava/lang/Object;
.source "XMLRepositoryStorage.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/repository/IRepositoryStorage;


# static fields
.field private static final TAG:Ljava/lang/String; = "XMLRepositoryStorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadRepositoryInternal(Ljava/lang/String;)Lmobi/beyondpod/rsscore/TrackDictionary;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 261
    new-instance v0, Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackDictionary;-><init>()V

    const-string v1, "XMLRepositoryStorage"

    const-string v2, "Reading Repository XML..."

    .line 262
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 268
    new-instance v2, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;-><init>(Lmobi/beyondpod/rsscore/TrackDictionary;Lmobi/beyondpod/rsscore/Feed;)V

    .line 269
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const/4 v2, 0x0

    .line 274
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    :try_start_1
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 290
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositoryScanningForChanges()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    const-string v1, "XMLRepositoryStorage"

    const-string v3, "Unable to read XML feed store from: %s! reason: %s"

    const/4 v4, 0x2

    .line 280
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v2, :cond_1

    .line 287
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw p1
.end method


# virtual methods
.method public backupRepositoryToFile(Ljava/lang/String;)V
    .locals 6

    .line 100
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositorySaveStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    .line 113
    :try_start_1
    new-instance v2, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;

    invoke-direct {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    :try_start_2
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartDocument()V

    const-string p1, "store"

    .line 117
    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string p1, "categories"

    .line 120
    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->serialize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeString(Ljava/lang/String;)V

    const-string p1, "categories"

    .line 122
    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    .line 125
    invoke-static {v2}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->saveTasks(Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;)V

    const-string p1, "tracks"

    .line 128
    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string p1, "versionId"

    .line 129
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toLongString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object p1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->_TrackDictionary:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackDictionary;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    const-string v3, "track"

    .line 133
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v3, "path"

    .line 134
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "totalTime"

    .line 135
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->longToInvariantCultureString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "playedTime"

    .line 137
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->longToInvariantCultureString(J)Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    .line 138
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "contentType"

    .line 139
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "played"

    .line 140
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_1

    :cond_0
    const-string v4, "0"

    :goto_1
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "protocol"

    .line 141
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imagePath"

    .line 142
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "description"

    .line 143
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "postTitle"

    .line 144
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->trackPostTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "postUrl"

    .line 145
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->trackPostUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "locked"

    .line 146
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    goto :goto_2

    :cond_1
    const-string v4, "0"

    :goto_2
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    .line 147
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "downloadSize"

    .line 149
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->longToInvariantCultureString(J)Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "downloadPortion"

    .line 151
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v4

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->longToInvariantCultureString(J)Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pubDate"

    .line 153
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toLongString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    const-string v1, ""

    .line 152
    :goto_3
    invoke-virtual {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track"

    .line 155
    invoke-virtual {v2, v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "tracks"

    .line 159
    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    const-string p1, "feeds"

    .line 162
    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    const-string v3, "feed"

    .line 166
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v3, "id"

    .line 167
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "path"

    .line 168
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getRawFeedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    .line 169
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "autodelete"

    .line 170
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getAllowAutoTrackDeletions()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "view"

    .line 171
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getPreferredEnclosureIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    .line 172
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    .line 173
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imageUrl"

    .line 174
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "hasUnread"

    .line 175
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pubDate"

    .line 177
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toLongString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_4
    const-string v4, ""

    .line 176
    :goto_5
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "srvPubDate"

    .line 181
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getLastServerModifiedDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 182
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getLastServerModifiedDate()Ljava/util/Date;

    move-result-object v4

    .line 181
    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toLongString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_5
    const-string v4, ""

    .line 179
    :goto_6
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "category"

    .line 183
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->serialize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "custDownload"

    .line 184
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "forceUniqueNames"

    .line 185
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getForceUniqueTrackNames()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "1"

    goto :goto_7

    :cond_6
    const-string v4, "0"

    :goto_7
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "savePlayedPosition"

    .line 186
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getShouldRememberPlayedPosition()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "1"

    goto :goto_8

    :cond_7
    const-string v4, "0"

    :goto_8
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "fingerprintType"

    .line 187
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getItemFingerprintAlgorithm()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "leftTruncateLongTrackNames"

    .line 188
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getLeftTruncateLongTrackNames()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "1"

    goto :goto_9

    :cond_8
    const-string v4, "0"

    :goto_9
    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "forceItemSort"

    .line 190
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getForceFeedItemSort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getLastItemID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "lastItemId"

    .line 197
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getLastItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_9
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getTrackSortOrder()I

    move-result v3

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v4

    if-eq v3, v4, :cond_a

    const-string v3, "trackSort"

    .line 200
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getTrackSortOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v3, "feedPlayer"

    .line 202
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPlayer()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "username"

    .line 205
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v3, "maxDownload"

    .line 207
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumGReaderItemsToGet()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, "maxGReaderItems"

    .line 210
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumGReaderItemsToGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_c
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v3

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v4

    if-eq v3, v4, :cond_d

    const-string v3, "maxTracks"

    .line 213
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_d
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v3

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v4

    if-eq v3, v4, :cond_e

    const-string v3, "maxTrackAge"

    .line 217
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeAttributeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v1, "feed"

    .line 219
    invoke-virtual {v2, v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    const-string p1, "feeds"

    .line 223
    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    const-string p1, "store"

    .line 226
    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->writeEndElement(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_10

    .line 242
    :try_start_3
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_b

    :catchall_0
    move-exception p1

    goto :goto_c

    :catch_0
    move-object v1, v2

    goto :goto_a

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_c

    :catch_1
    :goto_a
    :try_start_4
    const-string p1, "XMLRepositoryStorage"

    const-string v2, "failed to save feed repository to XML file! "

    .line 234
    invoke-static {p1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_10

    .line 242
    :try_start_5
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 254
    :catch_2
    :cond_10
    :goto_b
    :try_start_6
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositorySaveComplete()V

    .line 256
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :goto_c
    if-eqz v2, :cond_11

    .line 242
    :try_start_7
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/XmlTextWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception p1

    goto :goto_e

    .line 247
    :catch_3
    :cond_11
    :goto_d
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 254
    :goto_e
    :try_start_9
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositorySaveComplete()V

    throw p1

    :catchall_3
    move-exception p1

    .line 256
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1
.end method

.method public deleteFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    return-void
.end method

.method public deleteRepositoryFiles()V
    .locals 1

    .line 297
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->trackStateBackupPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->deleteFileIfExists(Ljava/lang/String;)Z

    return-void
.end method

.method public deleteTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 0

    return-void
.end method

.method public deleteTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    return-void
.end method

.method public deleteTracks(Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 0

    return-void
.end method

.method public loadRepository()V
    .locals 4

    .line 54
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->onRepositoryLoadStart()V

    .line 56
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->clearTrackDictionary()V

    const-string v0, "XMLRepositoryStorage"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to load repository from the long term XML backup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->trackStateBackupPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->trackStateBackupPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->trackStateBackupPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/rsscore/repository/XMLRepositoryStorage;->loadRepositoryInternal(Ljava/lang/String;)Lmobi/beyondpod/rsscore/TrackDictionary;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x3

    .line 66
    :try_start_1
    sput v1, Lmobi/beyondpod/rsscore/repository/FeedRepository;->RepositoryLoadKind:I

    const-string v1, "XMLRepositoryStorage"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " feeds  and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackDictionary;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tracks from the XML backup file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    const/4 v0, 0x0

    .line 74
    sput v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->RepositoryLoadKind:I

    const-string v0, "XMLRepositoryStorage"

    const-string v2, "failed to load from the long term XML repository backup file! Giving up!"

    .line 76
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "XMLRepositoryStorage"

    const-string v2, "Long term XML repository backup file does not exist! Giving up!"

    .line 82
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->keepDeviceAwake()V

    .line 87
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 89
    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->buildFeedList(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/TrackDictionary;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public saveRepository()V
    .locals 0

    return-void
.end method
