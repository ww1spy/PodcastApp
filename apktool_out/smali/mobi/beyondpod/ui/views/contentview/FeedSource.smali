.class public Lmobi/beyondpod/ui/views/contentview/FeedSource;
.super Ljava/lang/Object;
.source "FeedSource.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/contentview/IDataSource;


# static fields
.field public static final CURRENT_ITEM_TAG:Ljava/lang/String; = "CurrentRSSItemID"

.field private static final TAG:Ljava/lang/String; = "FeedSource"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMyIntent(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "CurrentRSSItemID"

    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMySavedState(Landroid/os/Bundle;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "CurrentRSSItemID"

    .line 153
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public allowStarring()Z
    .locals 1

    .line 107
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public generatePlaylistStartingFrom(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;
    .locals 6
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

    .line 121
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 125
    new-instance v1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 126
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->appendTo(Ljava/util/List;)V

    .line 128
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 130
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v4

    iget-object v4, v4, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lmobi/beyondpod/rsscore/TrackList;->getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    invoke-virtual {v0, v4}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 114
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndexOf(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I
    .locals 1

    .line 63
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItemAtPosition(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 1

    .line 27
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    return-object p1
.end method

.method public getItemByIntentOrSavedState(Landroid/content/Intent;Landroid/os/Bundle;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "CurrentRSSItemID"

    .line 42
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string p2, "CurrentRSSItemID"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 47
    :cond_1
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 49
    invoke-static {p2}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->getItemById(Ljava/lang/String;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 54
    :cond_2
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedSource;->getItemAtPosition(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getNextPrevItem(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 0

    .line 33
    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->getNextPrevItem(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    return-object p1
.end method

.method public isDataLoaded()Z
    .locals 1

    .line 86
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isDataLoaded()Z

    move-result v0

    return v0
.end method

.method public restoreCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 1

    .line 92
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->restoreCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    .line 94
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->loadItems(Lmobi/beyondpod/rsscore/Feed;Z)V

    :cond_0
    return-void
.end method

.method public saveCurrentState(Landroid/os/Bundle;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "CurrentRSSItemID"

    .line 76
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    new-instance p2, Lmobi/beyondpod/ui/core/MasterViewState;

    invoke-direct {p2}, Lmobi/beyondpod/ui/core/MasterViewState;-><init>()V

    .line 79
    invoke-static {p2}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->saveCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    .line 80
    invoke-virtual {p2, p1}, Lmobi/beyondpod/ui/core/MasterViewState;->toBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCollectionChangedListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->setCollectionChangedListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;)V

    return-void
.end method
