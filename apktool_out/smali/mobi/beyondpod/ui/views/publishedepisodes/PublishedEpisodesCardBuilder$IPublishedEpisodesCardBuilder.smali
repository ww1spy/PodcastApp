.class public interface abstract Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder$IPublishedEpisodesCardBuilder;
.super Ljava/lang/Object;
.source "PublishedEpisodesCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesCardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPublishedEpisodesCardBuilder"
.end annotation


# virtual methods
.method public abstract canDownloadRemoteImages()Z
.end method

.method public abstract currentFeed()Lmobi/beyondpod/rsscore/Feed;
.end method

.method public abstract getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
.end method

.method public abstract isInPreviewMode()Z
.end method

.method public abstract isItemSelected(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z
.end method

.method public abstract isMultiSelecting()Z
.end method

.method public abstract onAddRemovePlaylist(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end method

.method public abstract onDownload(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end method

.method public abstract onItemLongPressed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end method

.method public abstract onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end method

.method public abstract onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end method

.method public abstract showCardMenu(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end method
