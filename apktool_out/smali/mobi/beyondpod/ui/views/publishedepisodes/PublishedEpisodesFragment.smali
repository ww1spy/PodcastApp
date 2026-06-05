.class public Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;
.super Landroid/support/v4/app/Fragment;
.source "PublishedEpisodesFragment.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "PublishedEpisodesFragment"


# instance fields
.field public FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

.field private _PullToRefreshContainer:Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;)Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->_PullToRefreshContainer:Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;

    return-object p0
.end method


# virtual methods
.method public enableDisableActionBarScroll(Z)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    check-cast v0, Lmobi/beyondpod/ui/views/MasterView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/MasterView;->enableAppBarAutoScroll(Z)V

    :cond_0
    return-void
.end method

.method public enableDisablePullToRefresh(Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->_PullToRefreshContainer:Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;

    if-eqz p1, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowPullToRefresh()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method public getDefaultFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/MasterView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->selectedFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0c0080

    .line 59
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901e1

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->_PullToRefreshContainer:Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;

    const p2, 0x7f0901e2

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 64
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {p2, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->initialize(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;)V

    .line 66
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->_PullToRefreshContainer:Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;

    invoke-virtual {p2, p0}, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 67
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->_PullToRefreshContainer:Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;

    const/4 p3, 0x4

    new-array p3, p3, [I

    fill-array-data p3, :array_0

    invoke-virtual {p2, p3}, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;->setColorSchemeResources([I)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f06002a
        0x1060014
        0x1060018
        0x106001b
    .end array-data
.end method

.method public onFeedUpdateCompleted()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment$2;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onFeedUpdateStarted()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment$1;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 159
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->autoPlaylistEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v1, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->generatePlaylist(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 158
    :goto_0
    invoke-static {v0, p1, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPauseTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z

    move-result p1

    .line 161
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->shouldAutoOpenPlayer(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/MasterView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/Workspace;->autoExpandPlayerOnNextPlay()V

    :cond_2
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshCurrentFeed(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->_PullToRefreshContainer:Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->_PullToRefreshContainer:Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowPullToRefresh()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method public refreshActiveViewTitle()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    check-cast v0, Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MasterView;->refreshActionBarTitle()V

    :cond_0
    return-void
.end method

.method public restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    return-void
.end method

.method public subscribeToCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    return-void
.end method
