.class public interface abstract Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;
.super Ljava/lang/Object;
.source "SmartPlayListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/SmartPlayListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlayListOwner"
.end annotation


# virtual methods
.method public abstract onPlaylistSelected(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
.end method

.method public abstract onSmartPlaylistDeleted()V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method
