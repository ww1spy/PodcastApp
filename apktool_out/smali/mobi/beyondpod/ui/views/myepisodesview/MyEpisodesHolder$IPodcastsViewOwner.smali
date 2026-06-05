.class public interface abstract Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;
.super Ljava/lang/Object;
.source "MyEpisodesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPodcastsViewOwner"
.end annotation


# virtual methods
.method public abstract autoExpandPlayerOnNextPlay()V
.end method

.method public abstract enableDisableActionBarScroll(Z)V
.end method

.method public abstract getOwnerActivity()Landroid/support/v4/app/FragmentActivity;
.end method

.method public abstract openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V
.end method

.method public abstract openTrackPropertiesDialog(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
.end method

.method public abstract refreshActiveViewTitle()V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method
