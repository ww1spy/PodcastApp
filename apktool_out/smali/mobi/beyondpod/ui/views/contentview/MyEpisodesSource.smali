.class public Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;
.super Ljava/lang/Object;
.source "MyEpisodesSource.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/contentview/IDataSource;


# static fields
.field static final CURRENT_ITEM_ID_TAG:Ljava/lang/String; = "CurrentEpisodeItemID"

.field private static final TAG:Ljava/lang/String; = "MyEpisodesSource"


# instance fields
.field _Items:Lmobi/beyondpod/rsscore/TrackList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    const-string v0, "EpisodeIds"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->restoreContent([Ljava/lang/String;)V

    return-void
.end method

.method private asRssFeedItem(Lmobi/beyondpod/rsscore/Track;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 2

    .line 90
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;-><init>()V

    .line 91
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    .line 92
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->buildMockRssItem(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeed;Lmobi/beyondpod/rsscore/Track;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    return-object p1
.end method

.method public static isMyIntent(Landroid/content/Intent;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "CurrentEpisodeItemID"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMySavedState(Landroid/os/Bundle;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "CurrentEpisodeItemID"

    .line 40
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private restoreContent([Ljava/lang/String;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    if-nez p1, :cond_0

    .line 57
    sget-object p1, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->TAG:Ljava/lang/String;

    const-string v0, "Restoring episode data source with null episode siblings"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring episode data source with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " siblings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    sget-object p1, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->TAG:Ljava/lang/String;

    const-string v0, "Restoring episode data source while repository is not loaded! Ignoring..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 71
    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPathQuick(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 73
    iget-object v3, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v3, v2}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_3
    sget-object p1, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " episode siblings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowStarring()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public generatePlaylistStartingFrom(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/Track;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 211
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 201
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    return v0
.end method

.method public getIndexOf(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 143
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v1, p1}, Lmobi/beyondpod/rsscore/TrackList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getItemAtPosition(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 1

    if-ltz p1, :cond_0

    .line 82
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->asRssFeedItem(Lmobi/beyondpod/rsscore/Track;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemByIntentOrSavedState(Landroid/content/Intent;Landroid/os/Bundle;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "CurrentEpisodeItemID"

    .line 112
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string p2, "CurrentEpisodeItemID"

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 117
    :cond_1
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 119
    invoke-static {p2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPathQuick(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 122
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/rsscore/TrackList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 124
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->asRssFeedItem(Lmobi/beyondpod/rsscore/Track;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    return-object p1

    .line 128
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->getItemAtPosition(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getNextPrevItem(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 0

    .line 98
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->getIndexOf(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I

    move-result p2

    add-int/2addr p2, p1

    if-ltz p2, :cond_1

    .line 100
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p2, p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->getItemAtPosition(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isDataLoaded()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public restoreCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 3

    .line 181
    iget-object v0, p1, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p1, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItemIds:Ljava/util/ArrayList;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->restoreContent([Ljava/lang/String;)V

    .line 185
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v0, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;

    const-class v1, Lmobi/beyondpod/ui/views/FeedContentDataSource;

    sget v2, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;->LOAD_COMPLETED:I

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;-><init>(Ljava/lang/Object;I)V

    .line 186
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    :cond_0
    return-void
.end method

.method public saveCurrentState(Landroid/os/Bundle;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "CurrentEpisodeItemID"

    .line 164
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    new-instance p2, Lmobi/beyondpod/ui/core/MasterViewState;

    invoke-direct {p2}, Lmobi/beyondpod/ui/core/MasterViewState;-><init>()V

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    iput-object v0, p2, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItems:Lmobi/beyondpod/rsscore/TrackList;

    .line 169
    invoke-virtual {p2, p1}, Lmobi/beyondpod/ui/core/MasterViewState;->toBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCollectionChangedListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;)V
    .locals 0

    return-void
.end method
