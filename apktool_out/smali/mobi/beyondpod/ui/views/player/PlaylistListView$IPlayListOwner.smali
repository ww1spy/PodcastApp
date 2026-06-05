.class public interface abstract Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;
.super Ljava/lang/Object;
.source "PlaylistListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlaylistListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlayListOwner"
.end annotation


# virtual methods
.method public abstract getOwnerActivity()Landroid/support/v4/app/FragmentActivity;
.end method

.method public abstract onPlaylistSelected(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
.end method

.method public abstract openTrackFeed(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract switchToSmartPlay()V
.end method
