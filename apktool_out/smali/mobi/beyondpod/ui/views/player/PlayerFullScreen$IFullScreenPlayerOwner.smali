.class public interface abstract Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFullScreenPlayerOwner"
.end annotation


# virtual methods
.method public abstract collapsePlayer()V
.end method

.method public abstract doSkipBack()V
.end method

.method public abstract doSkipForward()V
.end method

.method public abstract driveViewVisibilityChanged(Z)V
.end method

.method public abstract getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;
.end method

.method public abstract getSeekListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end method

.method public abstract getTimeToSleep()I
.end method

.method public abstract isPlayerExpanded()Z
.end method

.method public abstract onCyclePlaybackSpeed()V
.end method

.method public abstract onSelectPlaybackSpeed()V
.end method

.method public abstract openTrackFeed(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract scanBackward(IJ)V
.end method

.method public abstract scanForward(IJ)V
.end method

.method public abstract setPlaybackSpeed(FF)V
.end method

.method public abstract setSleepTo(I)V
.end method

.method public abstract skipToEnd()V
.end method

.method public abstract togglePlayPause()V
.end method

.method public abstract togglePlaylistDrawer()V
.end method
