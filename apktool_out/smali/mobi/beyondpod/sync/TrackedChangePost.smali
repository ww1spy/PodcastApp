.class public Lmobi/beyondpod/sync/TrackedChangePost;
.super Lmobi/beyondpod/sync/TrackedChangeBase;
.source "TrackedChangePost.java"


# static fields
.field protected static final BLOB_ItemId:I = 0x0

.field protected static final BLOB_OriginatingFeedUrl:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TrackedChangePost"


# instance fields
.field protected _RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 10

    .line 43
    invoke-direct {p0, p1}, Lmobi/beyondpod/sync/TrackedChangeBase;-><init>(I)V

    .line 45
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->taglessDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 48
    invoke-static/range {v1 .. v9}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->buildMockRssItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JIILjava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p6}, Lmobi/beyondpod/sync/TrackedChangeBase;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangePost;->loadFromBlob()V

    return-void
.end method


# virtual methods
.method public applyRemoteChange()V
    .locals 4

    .line 79
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangePost;->syncStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangePost;->isValid()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0, v1}, Lmobi/beyondpod/sync/TrackedChangePost;->updateSyncStatusTo(I)V

    .line 85
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangePost;->TAG:Ljava/lang/String;

    const-string v1, "   --- APPLY sync Post change was found for a non existing feed and was ignored!"

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangePost;->changeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 107
    :pswitch_0
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangePost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   --- APPLY sync POST UNREAD. Item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->clearItemReadStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    .line 102
    :pswitch_1
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangePost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   --- APPLY sync POST READ. Item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->setItemAsRead(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    .line 97
    :pswitch_2
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangePost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   --- APPLY sync POST UNSTARRED. Item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 98
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->clearItemStarredStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    .line 92
    :pswitch_3
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangePost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   --- APPLY sync POST STARRED. Item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->setItemAsStarred(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 112
    :goto_0
    invoke-virtual {p0, v1}, Lmobi/beyondpod/sync/TrackedChangePost;->updateSyncStatusTo(I)V

    .line 113
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public friendlyName()Ljava/lang/String;
    .locals 2

    .line 72
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangePost;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (FP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "!!! Invalid Post (or feed does not exist) !!!"

    :goto_0
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 159
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v0

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

.method protected loadFromBlob()V
    .locals 12

    .line 124
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangePost;->parseBlob()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    .line 125
    :goto_0
    array-length v1, v0

    if-eq v2, v1, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 135
    :pswitch_0
    aget-object v1, v0, v2

    move-object v3, v1

    goto :goto_1

    .line 131
    :pswitch_1
    aget-object v1, v0, v2

    move-object v4, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v5, ""

    const-string v6, ""

    .line 140
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->buildMockRssItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageId()Ljava/lang/String;
    .locals 2

    .line 62
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_MessageId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

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

    .line 64
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_MessageId:Ljava/lang/String;

    .line 66
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_MessageId:Ljava/lang/String;

    return-object v0
.end method

.method public prepareForSave()V
    .locals 3

    const/4 v0, 0x2

    .line 147
    new-array v0, v0, [Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 150
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangePost;->_RssFeedItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 152
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangePost;->saveToBlob([Ljava/lang/String;)V

    return-void
.end method
