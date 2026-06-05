.class public interface abstract Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;
.super Ljava/lang/Object;
.source "PlayerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlayerPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlayerPanelOwner"
.end annotation


# virtual methods
.method public abstract collapsePlayer()V
.end method

.method public abstract dismissPlayer()V
.end method

.method public abstract driveViewVisibilityChanged(Z)V
.end method

.method public abstract expandPlayer()V
.end method

.method public abstract getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;
.end method

.method public abstract isExpanded()Z
.end method

.method public abstract openTrackFeed(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract showPlayer(Z)V
.end method

.method public abstract togglePlaylistDrawer()V
.end method
