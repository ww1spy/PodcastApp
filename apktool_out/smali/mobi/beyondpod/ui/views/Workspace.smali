.class public Lmobi/beyondpod/ui/views/Workspace;
.super Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;
.source "Workspace.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;
.implements Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;
    }
.end annotation


# static fields
.field public static final ALL_PUBLISHED_VIEW:I = 0x2

.field private static final MENU_DELETE_FEED:I = 0x19

.field private static final MENU_EDIT_FEED:I = 0x1a

.field private static final MENU_EPISODE_SYNC:I = 0x7

.field private static final MENU_OPEN_SEARCH:I = 0x1

.field private static final MENU_PLAY_VIDEO_AS_AUDIO:I = 0xc

.field private static final MENU_SEND_TO_OTHER_DEVICES:I = 0x1c

.field private static final MENU_SETTINGS:I = 0x1e

.field private static final MENU_SHARE_FEED_URL:I = 0x1b

.field private static final MENU_SHARE_PODCAST_URL:I = 0x1d

.field private static final MENU_TOGGLE_PLAYLIST:I = 0x10

.field private static final MENU_UPDATE_CATEGORY:I = 0x12

.field public static final MY_EPISODES_VIEW:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Workspace"

.field private static final WORKSPACE_MENU_GROUP:I = 0x1


# instance fields
.field public AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

.field public DataIsLoadedInWorkspaceViews:Z

.field public Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

.field public LastExternalPlayerTrackPath:Ljava/lang/String;

.field public LastExternalPlayerTrackTime:J

.field public MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

.field _ActiveView:Lmobi/beyondpod/ui/views/base/IView;

.field _InitialState:Lmobi/beyondpod/ui/core/MasterViewState;

.field _Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

.field private _Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

.field private _PlaylistActionButton:Landroid/view/View;

.field _SavedInstanceState:Landroid/os/Bundle;

.field _SlidingPanelListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

.field _UpdateAndDownload:Landroid/view/MenuItem;

.field _UpdateAndDownloadIndicator:Landroid/view/View;

.field private _WorkspaceViewsActivated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 209
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/Workspace;->DataIsLoadedInWorkspaceViews:Z

    .line 127
    new-instance v0, Lmobi/beyondpod/ui/views/Workspace$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/Workspace$1;-><init>(Lmobi/beyondpod/ui/views/Workspace;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_SlidingPanelListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .line 199
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_WorkspaceViewsActivated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/Workspace;->DataIsLoadedInWorkspaceViews:Z

    .line 127
    new-instance p2, Lmobi/beyondpod/ui/views/Workspace$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/Workspace$1;-><init>(Lmobi/beyondpod/ui/views/Workspace;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/Workspace;->_SlidingPanelListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .line 199
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_WorkspaceViewsActivated:Z

    return-void
.end method

.method private BuildViews(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 9

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 325
    iget-object v2, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v2}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 340
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    const v5, 0x7f090102

    .line 343
    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;

    if-eqz v5, :cond_0

    .line 346
    invoke-virtual {v5, p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    .line 347
    iget-object v5, v5, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iput-object v5, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    :cond_0
    const v5, 0x7f0901c3

    .line 351
    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    if-eqz v5, :cond_1

    .line 354
    invoke-virtual {v5, p1}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    :cond_1
    const v5, 0x7f0900eb

    .line 358
    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;

    if-eqz v5, :cond_2

    .line 361
    invoke-virtual {v5, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    .line 362
    iget-object v5, v5, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;->FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iput-object v5, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    :cond_2
    const v5, 0x7f09019e

    .line 366
    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;

    if-eqz v2, :cond_3

    .line 369
    invoke-virtual {v2, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    .line 370
    iget-object v2, v2, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;->Podcasts:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    .line 373
    :cond_3
    iget p1, p1, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 374
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_ActiveView:Lmobi/beyondpod/ui/views/base/IView;

    goto :goto_0

    .line 376
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_ActiveView:Lmobi/beyondpod/ui/views/base/IView;

    .line 378
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 380
    sget-object p1, Lmobi/beyondpod/ui/views/Workspace;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build workspace Views Completed in: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v5, v0

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms ( cat: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", feed: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v5, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/Workspace;)Lmobi/beyondpod/ui/views/player/PlayerPanel;
    .locals 0

    .line 87
    iget-object p0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/Workspace;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/Workspace;->setActiveView(I)V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/Workspace;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/Workspace;->toggleUpdateAnimation(Z)V

    return-void
.end method

.method private adjustFlingVelocity(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x9c4

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f4

    .line 930
    :goto_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/Workspace;->updateFlingSensitivity(I)V

    return-void
.end method

.method private analyticsLogMyEpisodesView()V
    .locals 2

    .line 1044
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 1045
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    if-nez v0, :cond_1

    .line 1046
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1048
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 1046
    :goto_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    return-void
.end method

.method private deactivateViews()V
    .locals 2

    const/4 v0, 0x0

    .line 491
    iput-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownload:Landroid/view/MenuItem;

    .line 493
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->onDeActivated()V

    .line 496
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onAfterDeactivate()V

    .line 499
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->onAfterDeactivate()V

    .line 502
    :cond_2
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/Workspace;->toggleUpdateAnimation(Z)V

    .line 506
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_WorkspaceViewsActivated:Z

    return-void
.end method

.method private openOrRefreshAllPublished(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    const/4 v0, 0x3

    .line 1028
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    .line 1030
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1031
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->loadFeed(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 1033
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshOnNextActivate()V

    .line 1035
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x2

    .line 1036
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/Workspace;->ActivateView(I)V

    .line 1038
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->collapsePlayer()V

    return-void
.end method

.method private openOrRefreshMyEpisodes()V
    .locals 2

    .line 1017
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Workspace;->analyticsLogMyEpisodesView()V

    .line 1018
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    .line 1019
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Workspace;->ActivateView(I)V

    goto :goto_0

    .line 1021
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    .line 1023
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->collapsePlayer()V

    return-void
.end method

.method private setActiveView(I)V
    .locals 5

    .line 429
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->isOwnerDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 432
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900eb

    .line 434
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesFragment;

    const v2, 0x7f09019e

    .line 435
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesFragment;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    .line 439
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {p1, v4}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setVisibility(I)V

    .line 440
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 441
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 442
    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 443
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 444
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_ActiveView:Lmobi/beyondpod/ui/views/base/IView;

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 448
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    invoke-virtual {p1, v4}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setVisibility(I)V

    .line 449
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 450
    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 451
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 452
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 453
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_ActiveView:Lmobi/beyondpod/ui/views/base/IView;

    .line 456
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private toggleUpdateAnimation(Z)V
    .locals 1

    .line 816
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownload:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 820
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownload:Landroid/view/MenuItem;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownloadIndicator:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0

    .line 822
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownload:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method private updateActionUpdatesAllFeeds()Z
    .locals 2

    .line 811
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->isNavigatorDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public ActivateView(I)V
    .locals 2

    .line 394
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    new-instance v1, Lmobi/beyondpod/ui/views/Workspace$4;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/Workspace$4;-><init>(Lmobi/beyondpod/ui/views/Workspace;I)V

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method Initialize(Lmobi/beyondpod/ui/core/MasterViewState;Landroid/os/Bundle;Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;)V
    .locals 0

    .line 214
    iput-object p3, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    .line 215
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_InitialState:Lmobi/beyondpod/ui/core/MasterViewState;

    .line 216
    iput-object p2, p0, Lmobi/beyondpod/ui/views/Workspace;->_SavedInstanceState:Landroid/os/Bundle;

    .line 218
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x7f0c001f

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownloadIndicator:Landroid/view/View;

    .line 219
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownloadIndicator:Landroid/view/View;

    new-instance p3, Lmobi/beyondpod/ui/views/Workspace$2;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/Workspace$2;-><init>(Lmobi/beyondpod/ui/views/Workspace;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c001e

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_PlaylistActionButton:Landroid/view/View;

    .line 230
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_PlaylistActionButton:Landroid/view/View;

    new-instance p2, Lmobi/beyondpod/ui/views/Workspace$3;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/Workspace$3;-><init>(Lmobi/beyondpod/ui/views/Workspace;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->_SlidingPanelListener:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/Workspace;->setPanelSlideListener(Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/Workspace;->DataIsLoadedInWorkspaceViews:Z

    return-void
.end method

.method public activateViews(I)V
    .locals 6

    .line 511
    sget-object v0, Lmobi/beyondpod/ui/views/Workspace;->TAG:Ljava/lang/String;

    const-string v1, ">>>>>>> Activating Views... "

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownload:Landroid/view/MenuItem;

    .line 514
    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/Workspace;->_WorkspaceViewsActivated:Z

    if-eqz v1, :cond_0

    .line 516
    sget-object p1, Lmobi/beyondpod/ui/views/Workspace;->TAG:Ljava/lang/String;

    const-string v0, ">>>>>>> Views already active! Ignoring... "

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 520
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 522
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setVisibility(I)V

    .line 525
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 527
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->onBeforeActivate()V

    .line 528
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->disableSliding()V

    .line 529
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->hide()V

    .line 531
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigurationHD;->isPlayerDismissedByUser()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne p1, v3, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    .line 532
    :goto_0
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/Workspace;->showPlayer(Z)V

    .line 534
    :cond_3
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->onActivated()V

    .line 537
    :cond_4
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object v1

    iget-object v5, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    if-ne v1, v5, :cond_5

    .line 539
    iput-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_ActiveView:Lmobi/beyondpod/ui/views/base/IView;

    .line 540
    invoke-virtual {p0, v3}, Lmobi/beyondpod/ui/views/Workspace;->ActivateView(I)V

    .line 543
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-nez v1, :cond_5

    .line 544
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->selectedFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v2}, Lmobi/beyondpod/ui/views/Workspace;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    .line 547
    :cond_5
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object v1

    iget-object v3, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    if-ne v1, v3, :cond_6

    .line 549
    iput-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_ActiveView:Lmobi/beyondpod/ui/views/base/IView;

    const/4 v0, 0x3

    .line 550
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Workspace;->ActivateView(I)V

    .line 553
    :cond_6
    iput-boolean v4, p0, Lmobi/beyondpod/ui/views/Workspace;->_WorkspaceViewsActivated:Z

    .line 554
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0, v2}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->setLoadingProgressVisibility(Z)V

    .line 556
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    if-ne p1, v4, :cond_7

    .line 561
    new-instance p1, Lmobi/beyondpod/ui/views/Workspace$5;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/Workspace$5;-><init>(Lmobi/beyondpod/ui/views/Workspace;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lmobi/beyondpod/ui/views/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 571
    :cond_7
    sget-object p1, Lmobi/beyondpod/ui/views/Workspace;->TAG:Ljava/lang/String;

    const-string v0, ">>>>>>> Workspace Views activated!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public activeView()Lmobi/beyondpod/ui/views/base/IView;
    .locals 1

    .line 423
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_ActiveView:Lmobi/beyondpod/ui/views/base/IView;

    return-object v0
.end method

.method public autoExpandPlayerOnNextPlay()V
    .locals 1

    .line 1010
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->setAutoShowPlayerOnNextPlay()V

    :cond_0
    return-void
.end method

.method public closeSmartPlayListIfNeeded()Z
    .locals 2

    .line 1000
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0901c3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->closeSmartPlayListIfNeeded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public collapsePlayer()V
    .locals 1

    .line 872
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->collapsePane()Z

    :cond_0
    return-void
.end method

.method public collapsePlayerIfNeeded()V
    .locals 1

    .line 953
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->collapsePlayer()V

    :cond_0
    return-void
.end method

.method public dismissPlayer()V
    .locals 1

    .line 878
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdPauseAudioPlayback()V

    .line 879
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->disableSliding()V

    .line 880
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->hide()V

    return-void
.end method

.method public driveViewVisibilityChanged(Z)V
    .locals 0

    .line 924
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/Workspace;->adjustFlingVelocity(Z)V

    return-void
.end method

.method public expandPlayer()V
    .locals 0

    .line 867
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->expandPane()Z

    return-void
.end method

.method public getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;
    .locals 1

    .line 948
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    return-object v0
.end method

.method public handleOptionsMenu(ILandroid/view/MenuItem;)Z
    .locals 8

    .line 589
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->handleOptionsMenu(ILandroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->handleOptionsMenu(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 592
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result p1

    const/4 v0, 0x0

    if-eq p1, v1, :cond_1

    return v0

    .line 595
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 597
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    if-eq p2, v1, :cond_e

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq p2, v2, :cond_9

    const/16 v2, 0xc

    if-eq p2, v2, :cond_8

    const/16 v2, 0x12

    if-eq p2, v2, :cond_6

    packed-switch p2, :pswitch_data_0

    return v0

    .line 616
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowGlobalSettings()V

    return v1

    .line 685
    :pswitch_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSharePodcast(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    return v1

    :pswitch_2
    if-eqz p1, :cond_2

    const/16 p2, 0xe

    const/16 v0, 0xf

    .line 636
    invoke-static {p2, p1, v0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalFeedChange(ILmobi/beyondpod/rsscore/Feed;I)V

    :cond_2
    return v1

    :pswitch_3
    if-eqz p1, :cond_3

    .line 631
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdShareFeed(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V

    :cond_3
    return v1

    :pswitch_4
    if-eqz p1, :cond_4

    const/4 p2, -0x1

    .line 626
    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEditFeed(Lmobi/beyondpod/rsscore/Feed;I)V

    :cond_4
    return v1

    :pswitch_5
    if-eqz p1, :cond_5

    .line 621
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeleteFeed(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V

    :cond_5
    return v1

    .line 604
    :cond_6
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Workspace;->updateActionUpdatesAllFeeds()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 605
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {p1, v3, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateFeedOrCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    goto :goto_0

    .line 607
    :cond_7
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateCurrentFeedOrCategory(Landroid/content/Context;)Z

    :goto_0
    return v1

    .line 611
    :cond_8
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowVideosInPlaylist()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setAllowVideosInPlaylist(Z)V

    .line 612
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLoadCurrentTrack()V

    return v1

    .line 640
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->pendingUploadChanges()Ljava/util/ArrayList;

    move-result-object p2

    .line 643
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pending changes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v0, "No Pending Changes"

    .line 645
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/sync/TrackedChangeBase;

    const-string v4, " \u2022 "

    .line 647
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    .line 649
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmobi/beyondpod/sync/TrackedChangeBase;->changeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v2}, Lmobi/beyondpod/sync/TrackedChangeBase;->friendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    .line 651
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 654
    :cond_b
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastRemoteChangeTimeStamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-lez p2, :cond_c

    const-string p2, "\nLast remote change: "

    .line 655
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastRemoteChangeTimeStamp()J

    move-result-wide v4

    invoke-direct {p2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_c
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSyncTimeStamp()J

    move-result-wide v4

    cmp-long p2, v4, v6

    if-lez p2, :cond_d

    const-string p2, "\nLast sync timestamp: "

    .line 658
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSyncTimeStamp()J

    move-result-wide v4

    invoke-direct {p2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_d
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0c0036

    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f09009e

    .line 661
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 662
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100100

    new-instance v2, Lmobi/beyondpod/ui/views/Workspace$7;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/Workspace$7;-><init>(Lmobi/beyondpod/ui/views/Workspace;)V

    .line 665
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1000ff

    new-instance v2, Lmobi/beyondpod/ui/views/Workspace$6;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/Workspace$6;-><init>(Lmobi/beyondpod/ui/views/Workspace;)V

    .line 672
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 680
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v1

    .line 600
    :cond_e
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->onSearchRequested()V

    return v1

    :cond_f
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isFullScreenPlayerVisible()Z
    .locals 1

    .line 959
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMiniPlayerVisible()Z
    .locals 1

    .line 969
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayerVisible()Z
    .locals 1

    .line 964
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadDataInWorkspaceViews()V
    .locals 8

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 253
    :try_start_0
    iget-object v3, p0, Lmobi/beyondpod/ui/views/Workspace;->_InitialState:Lmobi/beyondpod/ui/core/MasterViewState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    if-nez v3, :cond_4

    const/4 v3, 0x0

    .line 259
    :try_start_1
    iget-object v5, p0, Lmobi/beyondpod/ui/views/Workspace;->_SavedInstanceState:Landroid/os/Bundle;

    invoke-static {v5}, Lmobi/beyondpod/ui/core/MasterViewState;->fromBundle(Landroid/os/Bundle;)Lmobi/beyondpod/ui/core/MasterViewState;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v3

    :goto_0
    if-nez v5, :cond_5

    .line 268
    :try_start_2
    new-instance v5, Lmobi/beyondpod/ui/core/MasterViewState;

    invoke-direct {v5}, Lmobi/beyondpod/ui/core/MasterViewState;-><init>()V

    .line 271
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v6

    .line 274
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v7

    if-nez v7, :cond_0

    .line 275
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setItemFilter(I)V

    :cond_0
    if-eqz v6, :cond_1

    .line 277
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->hasUri()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 279
    iput-object v6, v5, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 280
    iget-object v6, v5, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getItemFilter()I

    move-result v7

    invoke-virtual {v6, v7}, Lmobi/beyondpod/rsscore/Feed;->setItemFilter(I)V

    .line 283
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v6

    iput-object v6, v5, Lmobi/beyondpod/ui/core/MasterViewState;->feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 284
    iput v4, v5, Lmobi/beyondpod/ui/core/MasterViewState;->podcastCurrentScope:I

    .line 285
    iput-object v3, v5, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIds:Ljava/util/ArrayList;

    const/4 v3, 0x3

    .line 287
    iput v3, v5, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    .line 290
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getFeedSelectedAction()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 292
    iput v6, v5, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    .line 295
    :cond_2
    iget-object v3, v5, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v3, :cond_3

    iget-object v3, v5, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->hasPodcasts()Z

    move-result v3

    if-nez v3, :cond_3

    .line 296
    iput v6, v5, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    .line 298
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->userHomeScreen()I

    move-result v3

    move v2, v3

    goto :goto_1

    :cond_4
    move-object v5, v3

    .line 302
    :cond_5
    :goto_1
    invoke-direct {p0, v5}, Lmobi/beyondpod/ui/views/Workspace;->BuildViews(Lmobi/beyondpod/ui/core/MasterViewState;)V

    .line 304
    iget-object v3, v5, Lmobi/beyondpod/ui/core/MasterViewState;->lastExternalPlayingTrackPath:Ljava/lang/String;

    iput-object v3, p0, Lmobi/beyondpod/ui/views/Workspace;->LastExternalPlayerTrackPath:Ljava/lang/String;

    .line 305
    iget-wide v5, v5, Lmobi/beyondpod/ui/core/MasterViewState;->lastExternalPlayingTrackTime:J

    iput-wide v5, p0, Lmobi/beyondpod/ui/views/Workspace;->LastExternalPlayerTrackTime:J

    .line 306
    iput-boolean v4, p0, Lmobi/beyondpod/ui/views/Workspace;->DataIsLoadedInWorkspaceViews:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 310
    sget-object v4, Lmobi/beyondpod/ui/views/Workspace;->TAG:Ljava/lang/String;

    const-string v5, "failed to Load Data into the Workspace"

    invoke-static {v4, v5, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    :goto_2
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/Workspace;->activateViews(I)V

    .line 315
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Workspace;->analyticsLogMyEpisodesView()V

    .line 317
    sget-object v2, Lmobi/beyondpod/ui/views/Workspace;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadData in Workspace Views Completed in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyDrawerClosed()V
    .locals 2

    .line 846
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->notifyDrawerClosed()V

    .line 851
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0901c3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    if-eqz v0, :cond_1

    .line 854
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->notifyDrawerClosed()V

    :cond_1
    return-void
.end method

.method public notifyDrawerOpened()V
    .locals 2

    .line 859
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->notifyDrawerOpened()V

    :cond_0
    return-void
.end method

.method onActivityDestroy()V
    .locals 1

    .line 974
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->onActivityDestroy()V

    .line 977
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onActivityDestroy()V

    .line 980
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->onActivityDestroy()V

    .line 983
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    if-eqz v0, :cond_3

    .line 984
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->onActivityDestroy()V

    :cond_3
    return-void
.end method

.method onActivityPause()V
    .locals 0

    .line 995
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Workspace;->deactivateViews()V

    return-void
.end method

.method onActivityResume()V
    .locals 1

    .line 989
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/Workspace;->DataIsLoadedInWorkspaceViews:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 990
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Workspace;->activateViews(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f0901c0

    .line 387
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/player/PlayerPanel;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    .line 388
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->initialize(Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;)V

    .line 389
    invoke-super {p0}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;->onFinishInflate()V

    return-void
.end method

.method public onSearchRequested()V
    .locals 1

    .line 919
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->onSearchRequested()Z

    return-void
.end method

.method public onTrimMemory()V
    .locals 1

    .line 1103
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->onTrimMemory()V

    :cond_0
    return-void
.end method

.method public onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 2

    .line 828
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    new-instance v1, Lmobi/beyondpod/ui/views/Workspace$8;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/Workspace$8;-><init>(Lmobi/beyondpod/ui/views/Workspace;Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1074
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setActiveFeedFilter(Lmobi/beyondpod/rsscore/Feed;)V

    .line 1075
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setActiveFeedCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 1078
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_1

    goto :goto_1

    .line 1080
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->hasPodcasts()Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1085
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getFeedSelectedAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    .line 1086
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/Workspace;->openOrRefreshAllPublished(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_2

    .line 1088
    :cond_3
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Workspace;->openOrRefreshMyEpisodes()V

    goto :goto_2

    .line 1081
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/Workspace;->openOrRefreshAllPublished(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_2

    .line 1079
    :cond_5
    :goto_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Workspace;->openOrRefreshMyEpisodes()V

    :goto_2
    return-void
.end method

.method public openTrackFeed(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 914
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    :cond_0
    return-void
.end method

.method public openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 2

    .line 942
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenEpisodeNotes(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const/4 v0, 0x0

    .line 694
    iput-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownload:Landroid/view/MenuItem;

    .line 698
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 700
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->isPlaylistDrawerOpen()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->isNavigatorDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isFullScreenPlayerVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 703
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    .line 705
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->hasUpdatableFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Workspace;->updateActionUpdatesAllFeeds()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/16 v0, 0x12

    .line 712
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10003e

    new-array v5, v2, [Ljava/lang/Object;

    .line 714
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Workspace;->updateActionUpdatesAllFeeds()Z

    move-result v6

    if-nez v6, :cond_2

    .line 715
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v7

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 717
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 712
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 708
    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownload:Landroid/view/MenuItem;

    .line 721
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_UpdateAndDownload:Landroid/view/MenuItem;

    const v3, 0x7f0800cf

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 722
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowPullToRefresh()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v7, v1

    :cond_4
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 724
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/Workspace;->toggleUpdateAnimation(Z)V

    :cond_5
    const v0, 0x7f100027

    .line 729
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 730
    new-instance v3, Landroid/support/v7/app/MediaRouteActionProvider;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/MediaRouteActionProvider;-><init>(Landroid/content/Context;)V

    .line 731
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/MediaRouteActionProvider;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 732
    new-instance v4, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;

    invoke-direct {v4}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;-><init>()V

    invoke-virtual {v3, v4}, Landroid/support/v7/app/MediaRouteActionProvider;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    .line 733
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 734
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v0, 0x10

    const v3, 0x7f1002e8

    .line 738
    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 739
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 740
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->_PlaylistActionButton:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 741
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    .line 744
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->_PlaylistActionButton:Landroid/view/View;

    const v3, 0x7f0901c2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->isPlaylistDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 754
    :cond_6
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->isNavigatorDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 758
    :cond_7
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isFullScreenPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1d

    const v1, 0x7f10000a

    .line 760
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    .line 765
    :cond_8
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    if-ne v0, v1, :cond_9

    .line 766
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->prepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_1

    .line 767
    :cond_9
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    if-ne v0, v1, :cond_a

    .line 768
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 771
    :cond_a
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 772
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 776
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x1b

    const/16 v3, 0xd

    const v4, 0x7f100008

    .line 777
    invoke-interface {p1, v2, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_b
    const/16 v1, 0x1a

    const/16 v3, 0xe

    const v4, 0x7f100017

    .line 779
    invoke-interface {p1, v2, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 781
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x1c

    const/16 v1, 0xf

    const v3, 0x7f1000fd

    .line 782
    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 789
    :cond_c
    :goto_2
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x7

    const/16 v1, 0x14

    const v3, 0x7f1000fe

    .line 790
    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 792
    :cond_d
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isFullScreenPlayerVisible()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x15

    const v1, 0x7f10002b

    .line 795
    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0800d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_e
    const/16 v0, 0xc

    const v1, 0x7f100040

    const/16 v3, 0x1e

    .line 800
    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 801
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowVideosInPlaylist()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 803
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGShowSettings()I

    move-result v0

    if-lez v0, :cond_f

    const/16 v0, 0x1f

    const/high16 v1, 0x7f100000

    .line 804
    invoke-interface {p1, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_f
    return v2
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 936
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method saveCurrentStateToBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 463
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->saveState()Lmobi/beyondpod/ui/core/MasterViewState;

    move-result-object v0

    .line 464
    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/core/MasterViewState;->toBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method saveState()Lmobi/beyondpod/ui/core/MasterViewState;
    .locals 3

    .line 469
    new-instance v0, Lmobi/beyondpod/ui/core/MasterViewState;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/MasterViewState;-><init>()V

    .line 471
    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/Workspace;->DataIsLoadedInWorkspaceViews:Z

    if-eqz v1, :cond_3

    .line 473
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->activeView()Lmobi/beyondpod/ui/views/base/IView;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    iput v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    .line 474
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->rootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 476
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->MyEpisodes:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->saveState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    .line 479
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    if-eqz v1, :cond_2

    .line 480
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->AllPublished:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->saveState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    .line 482
    :cond_2
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->LastExternalPlayerTrackPath:Ljava/lang/String;

    iput-object v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->lastExternalPlayingTrackPath:Ljava/lang/String;

    .line 483
    iget-wide v1, p0, Lmobi/beyondpod/ui/views/Workspace;->LastExternalPlayerTrackTime:J

    iput-wide v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->lastExternalPlayingTrackTime:J

    :cond_3
    return-object v0
.end method

.method public selectCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    .line 1053
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 1054
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setActiveFeedCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 1056
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->collapsePlayer()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1058
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setActiveFeedFilter(Lmobi/beyondpod/rsscore/Feed;)V

    .line 1060
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Workspace;->openOrRefreshMyEpisodes()V

    .line 1061
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    :goto_1
    return-void
.end method

.method public selectedFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 2

    .line 576
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    .line 578
    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->feedCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 580
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->nextFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 581
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setActiveFeedFilter(Lmobi/beyondpod/rsscore/Feed;)V

    :cond_0
    return-object v0
.end method

.method public showPlayer(Z)V
    .locals 2

    .line 885
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->show()V

    :cond_0
    if-eqz p1, :cond_1

    .line 888
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 890
    new-instance p1, Lmobi/beyondpod/ui/views/Workspace$9;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/Workspace$9;-><init>(Lmobi/beyondpod/ui/views/Workspace;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p1, v0, v1}, Lmobi/beyondpod/ui/views/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 901
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Workspace;->enableSliding()V

    return-void
.end method

.method public togglePlaylistDrawer()V
    .locals 1

    .line 907
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->togglePlaylistDrawer()V

    return-void
.end method

.method public turnOffPlaylistPagerIfNeeded()Z
    .locals 1

    .line 1094
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1097
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace;->_Player:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->turnOffPlaylistPagerIfNeeded()Z

    move-result v0

    return v0
.end method
