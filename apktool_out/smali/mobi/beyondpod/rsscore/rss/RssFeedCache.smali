.class public Lmobi/beyondpod/rsscore/rss/RssFeedCache;
.super Ljava/lang/Object;
.source "RssFeedCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RssFeedCache"

.field private static final _RSSCahcheFolder:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->_RSSCahcheFolder:Ljava/io/File;

    .line 49
    sget-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->_RSSCahcheFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->_RSSCahcheFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyTempToPrimaryForFeed(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 9

    .line 188
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedTempPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 192
    sget-object v1, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    const-string v5, "Unable to move %s to %s! Source File does not exist!"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object v0, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 199
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 203
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 204
    sget-object v5, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    const-string v6, "Unable to delete %s!"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v4

    .line 207
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 208
    sget-object v5, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    const-string v6, "Unable to move %s to %s!"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object v0, v2, v4

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public static createStreamableTrackFromEnclosure(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)Lmobi/beyondpod/rsscore/Track;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 247
    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->pubDate()Ljava/util/Date;

    move-result-object v2

    .line 248
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->parentItemID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->description()Ljava/lang/String;

    move-result-object v6

    .line 249
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->showNotes()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v8, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    move-object v0, p0

    move v9, p2

    .line 247
    invoke-static/range {v0 .. v9}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->findOrCreateLocalTrack(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmobi/beyondpod/rsscore/Track;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->addEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    .line 258
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 259
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->setUseParentImage()V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->ensureTrackHasContentType()V

    :goto_0
    return-object p0
.end method

.method public static deleteCacheForAllFeeds()I
    .locals 6

    .line 175
    sget-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->_RSSCahcheFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 177
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method public static deleteFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deletePrimaryFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 165
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteTempFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 4

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    const-string v1, "Unable to delete %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static deletePrimaryFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUri()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 136
    sget-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    const-string v1, "Unable to delete primary feed cache!"

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static deleteTempFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUri()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedTempPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 151
    sget-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    const-string v1, "Unable to delete temporary feed cache!"

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getCacheSizeOnDisk()Ljava/lang/Long;
    .locals 2

    .line 320
    sget-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->_RSSCahcheFolder:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->_RSSCahcheFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedAgeFor(Lmobi/beyondpod/rsscore/Feed;)D
    .locals 7

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-eqz p0, :cond_2

    .line 328
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-direct {v0, v5, v6}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    .line 335
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalHours()D

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static getCachedFileDate(Landroid/net/Uri;)Ljava/util/Date;
    .locals 3

    const/4 v0, 0x0

    .line 80
    :try_start_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 84
    sget-object v1, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get cached file date!"

    invoke-static {v1, v2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getCachedFileSize(Landroid/net/Uri;)J
    .locals 4

    const-wide/16 v0, -0x1

    .line 58
    :try_start_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v0

    :catch_0
    move-exception p0

    .line 62
    sget-object v2, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get cached file size!"

    invoke-static {v2, v3, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method private static getFeedCacheFileName(Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 113
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "getFeedCacheFileName - called with null url!"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "bpgeneric"

    :goto_0
    const-string v1, "%s_%X%s.xml"

    const/4 v2, 0x3

    .line 117
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const/4 p0, 0x2

    if-eqz p1, :cond_2

    const-string p1, "temp"

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    aput-object p1, v2, p0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    if-nez p0, :cond_0

    .line 100
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "getFeedCacheFileName - called with null url!"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string v0, "file"

    .line 102
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 107
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->_RSSCahcheFolder:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedCacheFileName(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFeedTempPath(Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    .line 122
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->_RSSCahcheFolder:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedCacheFileName(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasCachedFileFor(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 312
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadFromCache(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V
    .locals 6

    if-eqz p0, :cond_5

    .line 277
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUri()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 280
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->ensureFeedHasDownloadPath()Z

    .line 282
    iget-boolean v0, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->LoadTempFeed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedTempPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 284
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->EnclosureDownloadPath:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getForceUniqueTrackNames()Z

    move-result v1

    iput-boolean v1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ForceUniqueEnclosureNames:Z

    .line 286
    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getPreferredEnclosureIndex()I

    move-result v2

    iput v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->PreferredEnclosureIndex:I

    .line 287
    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->IgnoreEnclosures:Z

    .line 288
    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getItemFingerprintAlgorithm()I

    move-result v2

    iput v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->ItemIDGenerationAlgorithm:I

    .line 289
    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->CachedFileSize:J

    .line 292
    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParsingEngine;->parseFeedFile(Ljava/io/File;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 294
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->hasParseFailed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    sget-object v0, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    const-string v1, "failed to parse: %s (%s). reason: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 297
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v4, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 296
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_3
    iget v0, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->isRssFeedType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    .line 303
    iget p1, p1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    iput p1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedType:I

    .line 305
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getForceFeedItemSort()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 306
    iget-object p1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getForceFeedItemSort()I

    move-result p0

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    return-void

    .line 278
    :cond_5
    :goto_2
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The URL of the feed was not provided or is invalid!"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static syncFeedReadStatus(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 4

    if-eqz p0, :cond_2

    .line 224
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    :try_start_0
    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;-><init>(I)V

    .line 230
    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->loadFromCache(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 232
    iget-object v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v1, :cond_1

    iget v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    .line 233
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->isRssFeedType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncOwnerFeedReadStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    sget-object v1, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to sync feed read status for feed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static touchFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUri()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getFeedDownloadPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->touchFile(Ljava/io/File;)V

    return-void
.end method
