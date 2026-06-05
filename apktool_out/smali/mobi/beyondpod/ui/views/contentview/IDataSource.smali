.class public interface abstract Lmobi/beyondpod/ui/views/contentview/IDataSource;
.super Ljava/lang/Object;
.source "IDataSource.java"


# virtual methods
.method public abstract allowStarring()Z
.end method

.method public abstract generatePlaylistStartingFrom(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;
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
.end method

.method public abstract getCount()I
.end method

.method public abstract getIndexOf(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I
.end method

.method public abstract getItemAtPosition(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
.end method

.method public abstract getItemByIntentOrSavedState(Landroid/content/Intent;Landroid/os/Bundle;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
.end method

.method public abstract getNextPrevItem(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
.end method

.method public abstract isDataLoaded()Z
.end method

.method public abstract restoreCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V
.end method

.method public abstract saveCurrentState(Landroid/os/Bundle;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end method

.method public abstract setCollectionChangedListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;)V
.end method
