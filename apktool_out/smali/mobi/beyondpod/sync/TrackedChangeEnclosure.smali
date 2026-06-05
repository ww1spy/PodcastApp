.class public Lmobi/beyondpod/sync/TrackedChangeEnclosure;
.super Lmobi/beyondpod/sync/TrackedChangeBase;
.source "TrackedChangeEnclosure.java"


# static fields
.field protected static final BLOB_Description:I = 0x7

.field protected static final BLOB_EnclSize:I = 0x8

.field protected static final BLOB_EnclType:I = 0x3

.field protected static final BLOB_EnclUrl:I = 0x2

.field protected static final BLOB_ItemId:I = 0x0

.field protected static final BLOB_Link:I = 0x6

.field protected static final BLOB_OriginatingFeedUrl:I = 0x1

.field protected static final BLOB_PubDate:I = 0x4

.field protected static final BLOB_Title:I = 0x5

.field public static final REMOTE_CHANGE:Ljava/lang/String; = "REMOTE_ADD"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected _RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V
    .locals 11

    .line 44
    invoke-direct {p0, p1}, Lmobi/beyondpod/sync/TrackedChangeBase;-><init>(I)V

    if-nez p2, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object p1, p2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 51
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->taglessDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    iget-object v9, p2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v10

    .line 54
    invoke-static/range {v2 .. v10}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->buildMockRssItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JIILjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p6}, Lmobi/beyondpod/sync/TrackedChangeBase;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->loadFromBlob()V

    return-void
.end method

.method private handleEpisodeMarkedAsDownloaded()V
    .locals 3

    .line 144
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->addEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    .line 147
    :cond_0
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync EPISODE MARKED AS DOWNLOADED. Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    const/4 v0, 0x4

    .line 150
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->updateSyncStatusTo(I)V

    return-void
.end method

.method private handleEpisodeMarkedAsNotDownloaded()V
    .locals 3

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->removeEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    .line 158
    :cond_0
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync EPISODE MARKED AS NOT DOWNLOADED. Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    const/4 v0, 0x4

    .line 161
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->updateSyncStatusTo(I)V

    return-void
.end method

.method private handleStreamableTrackAdded()V
    .locals 4

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    .line 111
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->allowRemoteEpisodeAdditions()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->createStreamableTrackFromEnclosure(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iput-boolean v2, v0, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    const-string v1, "REMOTE_ADD"

    .line 123
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setProtocol(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync EPISODE ADDED. Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 128
    :cond_0
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync EPISODE ADDED. Unable to create local track! Ignoring... Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 132
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync EPISODE ADDED. Episode feed is set to ignore episodes! Ignoring... Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 136
    :cond_2
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY sync EPISODE ADDED. Episode already exists! Ignoring... Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_0
    const/4 v0, 0x4

    .line 139
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->updateSyncStatusTo(I)V

    return-void
.end method

.method private loadFromBlob()V
    .locals 16

    .line 174
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->parseBlob()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 175
    :goto_0
    array-length v12, v0

    if-eq v2, v12, :cond_2

    const-wide/16 v12, 0x0

    packed-switch v2, :pswitch_data_0

    move v15, v2

    goto/16 :goto_1

    .line 214
    :pswitch_0
    aget-object v14, v0, v2

    move v15, v2

    const-wide/16 v1, -0x1

    invoke-static {v14, v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v14, v1, v12

    if-lez v14, :cond_1

    .line 216
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :pswitch_1
    move v15, v2

    .line 210
    aget-object v1, v0, v15

    move-object v8, v1

    goto :goto_1

    :pswitch_2
    move v15, v2

    .line 206
    aget-object v1, v0, v15

    move-object v6, v1

    goto :goto_1

    :pswitch_3
    move v15, v2

    .line 202
    aget-object v1, v0, v15

    move-object v5, v1

    goto :goto_1

    :pswitch_4
    move v15, v2

    .line 197
    aget-object v1, v0, v15

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v7, v1, v12

    if-lez v7, :cond_0

    .line 198
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :pswitch_5
    move v15, v2

    .line 193
    aget-object v1, v0, v15

    move-object v10, v1

    goto :goto_1

    :pswitch_6
    move v15, v2

    .line 189
    aget-object v1, v0, v15

    move-object v9, v1

    goto :goto_1

    :pswitch_7
    move v15, v2

    .line 185
    aget-object v1, v0, v15

    move-object v3, v1

    goto :goto_1

    :pswitch_8
    move v15, v2

    .line 181
    aget-object v1, v0, v15

    move-object v4, v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v15, 0x1

    goto :goto_0

    .line 221
    :cond_2
    invoke-static/range {v3 .. v11}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->buildMockRssItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyRemoteChange()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->syncStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 84
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->updateSyncStatusTo(I)V

    .line 85
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->TAG:Ljava/lang/String;

    const-string v1, "   --- APPLY sync enclosure change was found for a invalid enclosure and was ignored!"

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->changeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->handleEpisodeMarkedAsNotDownloaded()V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->handleEpisodeMarkedAsDownloaded()V

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->handleStreamableTrackAdded()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public friendlyName()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (FP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "!!! Invalid Episode (or feed does not exist) !!!"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 73
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 265
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 266
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public messageId()Ljava/lang/String;
    .locals 2

    .line 272
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_MessageId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_MESSAGE_ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_MessageId:Ljava/lang/String;

    .line 276
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_MessageId:Ljava/lang/String;

    return-object v0
.end method

.method public prepareForSave()V
    .locals 8

    .line 228
    iget v0, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_ChangeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 239
    :cond_1
    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    .line 241
    iget-object v7, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 242
    iget-object v6, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v6

    iget-object v6, v6, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 243
    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 244
    iget-object v4, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 246
    iget v3, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_ChangeType:I

    if-ne v3, v1, :cond_5

    .line 248
    iget-object v3, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "0"

    :goto_1
    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 249
    iget-object v3, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 250
    iget-object v3, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 251
    iget-object v3, p0, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->shortTaglessDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 252
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    aput-object v2, v0, v1

    goto :goto_4

    :cond_4
    :goto_3
    const-string v1, ""

    .line 232
    aput-object v1, v0, v6

    const-string v1, ""

    .line 233
    aput-object v1, v0, v5

    const-string v1, ""

    .line 234
    aput-object v1, v0, v4

    const-string v1, ""

    .line 235
    aput-object v1, v0, v3

    .line 258
    :cond_5
    :goto_4
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEnclosure;->saveToBlob([Ljava/lang/String;)V

    return-void
.end method
