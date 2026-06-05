.class public Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;
.super Landroid/content/ContentProvider;
.source "FeedHtmlContentProvider.java"


# static fields
.field public static final BP_Provider_Authority:Ljava/lang/String; = "beyondpod"

.field private static final TAG:Ljava/lang/String; = "FeedHtmlContentProvider"

.field static _CalculatedPageSize:I

.field static _CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

.field static _CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

.field static _DefaultDocument:Ljava/io/File;

.field static _FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

.field static _InfoDocument:Ljava/io/File;

.field static _LastParseDuration:J

.field static _LastTemplateTransformationDuration:J

.field static _ParseException:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-direct {v0}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;-><init>()V

    sput-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static CurrentFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 106
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public static CurrentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
    .locals 1

    .line 101
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_CurrentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    return-object v0
.end method

.method public static constructEpisodeDocument(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 182
    invoke-static {p0, v1}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->constructItemDocument(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 190
    :try_start_0
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getShowNotes()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    new-instance v3, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :try_start_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->rowID()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadTrackShowNotes(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v4

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v4

    .line 201
    :try_start_3
    sget-object v5, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load show notes for track: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "! reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    :try_start_4
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 208
    :goto_0
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 205
    :goto_1
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    throw v2

    .line 212
    :cond_3
    :goto_2
    sget-object v3, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    iput-object v2, v3, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemContent:Ljava/lang/String;

    .line 213
    sget-object v2, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 214
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    const-string v3, ""

    :goto_3
    iput-object v3, v2, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemPubDate:Ljava/lang/String;

    .line 216
    sget-object v2, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemTitle:Ljava/lang/CharSequence;

    .line 217
    sget-object v2, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->originatingFeed:Ljava/lang/String;

    .line 218
    sget-object v2, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->trackPostUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemLink:Ljava/lang/String;

    .line 220
    sget-object v2, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-virtual {v2}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->toHtml()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v2

    :catch_1
    move-exception v2

    .line 224
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->infoDocument()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->transformFeedLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    .line 228
    :cond_6
    invoke-static {p0, v1}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->constructItemDocument(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructItemDocument(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 233
    invoke-static {p0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->getItemById(Ljava/lang/String;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p0

    .line 234
    invoke-static {p0, p1}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->constructItemDocument(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructItemDocument(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    .line 243
    :try_start_0
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemContent:Ljava/lang/String;

    .line 244
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    iput-object v1, v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemPubDate:Ljava/lang/String;

    .line 247
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemTitle:Ljava/lang/CharSequence;

    .line 248
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeedTitle:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeedTitle:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->originatingFeed:Ljava/lang/String;

    .line 249
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    iput-object v1, v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemLink:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 253
    sget-object p1, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-static {}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->infoDocument()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->saveAsHtml(Ljava/io/File;)Z

    .line 254
    invoke-static {}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->infoDocument()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 257
    :cond_3
    sget-object p1, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-virtual {p1}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->toHtml()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 260
    iget-object p0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->infoDocument()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->transformFeedLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public static constructItemDocumentWithTemplate(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1

    .line 172
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_FeedContentItemTemplate:Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;

    invoke-virtual {v0, p2}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->switchTemplateResourceTo(I)V

    .line 173
    invoke-static {p0, p1}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->constructItemDocument(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static infoDocument()Ljava/io/File;
    .locals 3

    .line 269
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_InfoDocument:Ljava/io/File;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssCachePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeyondPodInfo.html"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_InfoDocument:Ljava/io/File;

    .line 272
    :cond_0
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->_InfoDocument:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    const-string v1, "BeyondPodStorageRootPath"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 119
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "Unable to find the requested resource"

    .line 127
    invoke-static {}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->infoDocument()Ljava/io/File;

    move-result-object v0

    .line 126
    invoke-static {p1, p2, v0}, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->transformFeedLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    .line 129
    invoke-static {}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->infoDocument()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 132
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    const-string v1, "BeyondPodImagePath"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 138
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssImageCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-static {p2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "Unable to find the requested resource"

    .line 146
    invoke-static {}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->infoDocument()Ljava/io/File;

    move-result-object v0

    .line 145
    invoke-static {p1, p2, v0}, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->transformFeedLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    .line 148
    invoke-static {}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->infoDocument()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 151
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_5

    const-string v1, "rssItemId"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, ".html"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_4
    invoke-static {v0, v4}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->constructItemDocument(Ljava/lang/String;Z)Ljava/lang/String;

    .line 162
    invoke-static {}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->infoDocument()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 167
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
