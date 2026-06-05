.class public Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;
.super Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;
.source "MyEpisodesHolder.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/IView;
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;
.implements Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;
    }
.end annotation


# static fields
.field public static final FILTER_MENU_GROUP:I = 0x37

.field public static final MENU_CARD_LAYOUT_GROUP:I = 0x42

.field public static final MENU_DELETE_PALYED:I = 0x21

.field public static final SORT_MENU_GROUP:I = 0x2c


# instance fields
.field public PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

.field _Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/BPSwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;

    .line 102
    new-instance p2, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-direct {p2, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 103
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    iget-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p0, p2, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {p0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    const/4 p1, 0x4

    .line 107
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setColorSchemeResources([I)V

    return-void

    :array_0
    .array-data 4
        0x7f06002a
        0x1060014
        0x1060018
        0x106001b
    .end array-data
.end method

.method private enablePullToRefreshIfAllowed()V
    .locals 2

    .line 327
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowPullToRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setEnabled(Z)V

    return-void

    .line 334
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setEnabled(Z)V

    return-void

    .line 340
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->updateActionUpdatesAllFeeds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setEnabled(Z)V

    return-void

    .line 347
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->hasUpdatableFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setEnabled(Z)V

    return-void
.end method

.method private updateActionUpdatesAllFeeds()Z
    .locals 2

    .line 352
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public autoExpandPlayerOnNextPlay()V
    .locals 1

    .line 413
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;->autoExpandPlayerOnNextPlay()V

    return-void
.end method

.method public enableDisableActionBarScroll(Z)V
    .locals 1

    .line 407
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;->enableDisableActionBarScroll(Z)V

    return-void
.end method

.method public enableDisablePullToRefresh(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 399
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setEnabled(Z)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->enablePullToRefreshIfAllowed()V

    :goto_0
    return-void
.end method

.method public getOwnerActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 392
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getViewTitle()Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;
    .locals 1

    .line 252
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getViewTitle()Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    move-result-object v0

    return-object v0
.end method

.method public handleOptionsMenu(ILandroid/view/MenuItem;)Z
    .locals 3

    .line 259
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2c

    if-ne p1, v2, :cond_3

    .line 261
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-nez p1, :cond_1

    .line 265
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-gez p1, :cond_0

    .line 266
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setGroupByFeedIfShowingCategoryTracks(Z)V

    goto :goto_1

    .line 269
    :cond_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGroupByFeedIfShowingCategoryTracks(Z)V

    .line 270
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setPodcastsSortOrder(I)V

    goto :goto_1

    .line 276
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    .line 282
    :goto_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    return v1

    .line 287
    :cond_3
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result p1

    const/16 v2, 0x37

    if-ne p1, v2, :cond_4

    .line 289
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setActiveMediaFilter(I)V

    .line 290
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    return v1

    .line 302
    :cond_4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v2, 0x42

    if-ne p1, v2, :cond_6

    .line 304
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->episodeCardSize()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    move p2, v1

    :cond_5
    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->setEpisodeCardSize(I)V

    .line 305
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->notifyCardSizeChanged()V

    return v1

    .line 309
    :cond_6
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 p2, 0x21

    if-ne p1, p2, :cond_7

    .line 311
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getAllPlayedEpisodes()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeletePodcasts(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    .line 312
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->refreshActiveViewTitle()V

    return v1

    :cond_7
    return v0
.end method

.method public initializeView()V
    .locals 1

    .line 321
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->initializeView(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 75
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->onActivityDestroy()V

    return-void
.end method

.method public onAfterActivate()V
    .locals 1

    .line 116
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->onAfterActivate()V

    .line 117
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->enablePullToRefreshIfAllowed()V

    return-void
.end method

.method public onAfterDeactivate()V
    .locals 2

    .line 125
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 126
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 127
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->onAfterDeactivate()V

    return-void
.end method

.method public onBeforeActivate()V
    .locals 2

    .line 136
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->onBeforeActivate()V

    .line 137
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 138
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 139
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 1

    .line 358
    iget p1, p1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    if-nez p1, :cond_0

    .line 360
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;

    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$1;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;)V

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 66
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->updateActionUpdatesAllFeeds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateFeedOrCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateCurrentFeedOrCategory(Landroid/content/Context;)Z

    :goto_0
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->setRefreshing(Z)V

    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 145
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->refreshContent()V

    .line 150
    :cond_0
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 152
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    .line 155
    :cond_2
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 157
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    .line 160
    :cond_4
    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 162
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    :cond_5
    return-void
.end method

.method public onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 2

    .line 169
    iget v0, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_STARTED:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_COMPLETED:I

    if-eq v0, v1, :cond_0

    iget p1, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_QUEUE_CHANGED:I

    if-ne p1, v0, :cond_1

    .line 173
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->refreshContent()V

    :cond_1
    return-void
.end method

.method public openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V
    .locals 1

    .line 419
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;

    invoke-interface {v0, p1, p2, p3}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    return-void
.end method

.method public openTrackPropertiesDialog(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;

    invoke-interface {v0, p1, p2, p3}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;->openTrackPropertiesDialog(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V

    return-void
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11

    .line 180
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 184
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    .line 186
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->isEmpty()Z

    move-result v1

    const/4 v4, -0x1

    if-nez v1, :cond_3

    const v1, 0x7f100037

    .line 189
    invoke-interface {p1, v3, v4, v2, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    const v5, 0x7f0800d4

    invoke-interface {v1, v5}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 191
    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    if-nez v0, :cond_1

    .line 195
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGroupByFeedIfShowingCategoryTracks()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v0

    .line 198
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getLocalOrInheritedTrackSortOrder()I

    move-result v0

    .line 205
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    :goto_1
    move v7, v3

    .line 209
    :goto_2
    array-length v8, v5

    if-eq v7, v8, :cond_3

    .line 211
    aget-object v8, v6, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x2c

    .line 212
    aget-object v10, v5, v7

    invoke-interface {v1, v9, v8, v7, v10}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    if-ne v0, v8, :cond_2

    .line 214
    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    const v1, 0x7f10001c

    .line 219
    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    const v1, 0x7f0800bc

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 222
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveMediaFilter()I

    move-result v1

    .line 224
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v6, v3

    .line 227
    :goto_3
    array-length v7, v4

    if-eq v6, v7, :cond_5

    .line 229
    aget-object v7, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x37

    .line 230
    aget-object v9, v4, v6

    invoke-interface {v0, v8, v7, v6, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    if-ne v1, v7, :cond_4

    .line 232
    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 238
    :cond_5
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->hasPlayedEpisodes()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x21

    const/16 v1, 0x16

    const v4, 0x7f10000d

    .line 240
    invoke-interface {p1, v3, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_6
    const/16 v0, 0x42

    const/16 v1, 0x19

    const v4, 0x7f10000b

    .line 243
    invoke-interface {p1, v3, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 244
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->episodeCardSize()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object p1

    .line 245
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v2
.end method

.method public refreshActiveViewTitle()V
    .locals 1

    .line 380
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;->refreshActiveViewTitle()V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$IPodcastsViewOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
