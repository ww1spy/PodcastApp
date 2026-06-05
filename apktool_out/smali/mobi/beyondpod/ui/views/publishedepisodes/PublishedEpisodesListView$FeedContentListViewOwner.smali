.class public interface abstract Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedContentListViewOwner"
.end annotation


# virtual methods
.method public abstract enableDisableActionBarScroll(Z)V
.end method

.method public abstract enableDisablePullToRefresh(Z)V
.end method

.method public abstract getActivity()Landroid/support/v4/app/FragmentActivity;
.end method

.method public abstract getDefaultFeed()Lmobi/beyondpod/rsscore/Feed;
.end method

.method public abstract onFeedUpdateCompleted()V
.end method

.method public abstract onFeedUpdateStarted()V
.end method

.method public abstract onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end method

.method public abstract refreshActiveViewTitle()V
.end method

.method public abstract subscribeToCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V
.end method
