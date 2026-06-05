.class public interface abstract Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWorkspaceOwner"
.end annotation


# virtual methods
.method public abstract getActivity()Landroid/support/v4/app/FragmentActivity;
.end method

.method public abstract getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;
.end method

.method public abstract getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract isNavigatorDrawerOpen()Z
.end method

.method public abstract isOwnerDestroyed()Z
.end method

.method public abstract isPlaylistDrawerOpen()Z
.end method

.method public abstract onSearchRequested()Z
.end method

.method public abstract openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V
.end method

.method public abstract openNavigator()V
.end method

.method public abstract refreshActionBarTitle()V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract setLoadingProgressVisibility(Z)V
.end method

.method public abstract togglePlaylistDrawer()V
.end method
