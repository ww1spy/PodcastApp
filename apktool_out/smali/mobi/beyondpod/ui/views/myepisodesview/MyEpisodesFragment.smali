.class public Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyEpisodesFragment.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;


# static fields
.field public static final TAG:Ljava/lang/String; = "MyEpisodesFragment"


# instance fields
.field public Podcasts:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public autoExpandPlayerOnNextPlay()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/MasterView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->autoExpandPlayerOnNextPlay()V

    return-void
.end method

.method public enableDisableActionBarScroll(Z)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/MasterView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/MasterView;->enableAppBarAutoScroll(Z)V

    return-void
.end method

.method public getOwnerActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 53
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->Podcasts:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    .line 54
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->Podcasts:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->Podcasts:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    return-object p1
.end method

.method public openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0, p1, p2, p3}, Lmobi/beyondpod/ui/views/MasterView;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    return-void
.end method

.method public openTrackPropertiesDialog(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p2, p3, p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenEpisodeNotes(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public refreshActiveViewTitle()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MasterView;->refreshActionBarTitle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->Podcasts:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->initializeView()V

    .line 47
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->Podcasts:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
