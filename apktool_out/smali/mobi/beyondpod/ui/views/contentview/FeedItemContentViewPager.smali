.class public Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;
.super Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;
.source "FeedItemContentViewPager.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEventListener;
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;
.implements Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$IRouteControllerDialogOwner;


# static fields
.field static final CURRENT_RSS_ITEM_ID_TAG:Ljava/lang/String; = "CurrentRSSItemID"


# instance fields
.field private _CurrentSavedInstanceState:Landroid/os/Bundle;

.field private _LoadingProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->restoreDataSourceState()V

    return-void
.end method

.method private buildDataSource(Landroid/content/Intent;Landroid/os/Bundle;)Lmobi/beyondpod/ui/views/contentview/IDataSource;
    .locals 1

    if-eqz p2, :cond_1

    .line 101
    invoke-static {p2}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->isMySavedState(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance p1, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;

    invoke-direct {p1}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;-><init>()V

    return-object p1

    .line 104
    :cond_0
    invoke-static {p2}, Lmobi/beyondpod/ui/views/contentview/FeedSource;->isMySavedState(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 105
    new-instance p1, Lmobi/beyondpod/ui/views/contentview/FeedSource;

    invoke-direct {p1}, Lmobi/beyondpod/ui/views/contentview/FeedSource;-><init>()V

    return-object p1

    .line 110
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;->isMyIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 111
    new-instance p2, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;

    invoke-direct {p2, p1}, Lmobi/beyondpod/ui/views/contentview/MyEpisodesSource;-><init>(Landroid/content/Intent;)V

    return-object p2

    .line 113
    :cond_2
    new-instance p1, Lmobi/beyondpod/ui/views/contentview/FeedSource;

    invoke-direct {p1}, Lmobi/beyondpod/ui/views/contentview/FeedSource;-><init>()V

    return-object p1
.end method

.method private restoreDataSourceState()V
    .locals 2

    .line 189
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->isDataLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_CurrentSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_CurrentSavedInstanceState:Landroid/os/Bundle;

    invoke-static {v0}, Lmobi/beyondpod/ui/core/MasterViewState;->fromBundle(Landroid/os/Bundle;)Lmobi/beyondpod/ui/core/MasterViewState;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v1, v0}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->restoreCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    :cond_0
    return-void
.end method

.method private restorePagerState(Landroid/os/Bundle;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->isDataLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 215
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getItemByIntentOrSavedState(Landroid/content/Intent;Landroid/os/Bundle;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 216
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->invalidateOptionsMenu()V

    goto :goto_0

    .line 224
    :cond_1
    sget-object p1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->TAG:Ljava/lang/String;

    const-string v0, "#*#*# Restored item Not Found"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0, p1, v1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->wireViewPager(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method private setLoadingProgressVisibility(Z)V
    .locals 1

    .line 305
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_LoadingProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private startWaitingForDataSourceToLoad()V
    .locals 3

    .line 155
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 158
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 160
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->restoreDataSourceState()V

    goto :goto_0

    .line 164
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******* startWaitingForDataSourceToLoad found that repository is not loaded! (repo state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Loading repository..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->initializeAndLoadRepository()Z

    :goto_0
    const/4 v0, 0x1

    .line 171
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->setLoadingProgressVisibility(Z)V

    return-void
.end method

.method private stopWaitingForDataSourceToLoad()V
    .locals 2

    .line 179
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 182
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->setLoadingProgressVisibility(Z)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 300
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 48
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 49
    sget v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_InstanceCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_InstanceCount:I

    .line 50
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### FeedItemContentViewPager Created! Current instances: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_InstanceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_InstanceCount:I

    if-le v0, v1, :cond_0

    .line 52
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### Possible FeedItemContentViewPager Leak ######### "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_InstanceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x9

    .line 55
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->supportRequestWindowFeature(I)Z

    .line 57
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->contentThemes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->contentTheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le v0, v1, :cond_1

    const v0, 0x7f110187

    .line 58
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->setTheme(I)V

    .line 60
    :cond_1
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c005e

    .line 62
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->setContentView(I)V

    const v0, 0x7f090172

    .line 64
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_LoadingProgress:Landroid/widget/ProgressBar;

    .line 66
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 69
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbbbbbc

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->buildDataSource(Landroid/content/Intent;Landroid/os/Bundle;)Lmobi/beyondpod/ui/views/contentview/IDataSource;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    if-nez p1, :cond_3

    .line 76
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getItemByIntentOrSavedState(Landroid/content/Intent;Landroid/os/Bundle;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    .line 77
    invoke-virtual {p0, p1, v1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->wireViewPager(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public onFeedContentListViewDataSourceEvent(Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;)V
    .locals 1

    .line 281
    iget p1, p1, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;->type:I

    sget v0, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;->LOAD_COMPLETED:I

    if-ne p1, v0, :cond_0

    .line 286
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->stopWaitingForDataSourceToLoad()V

    .line 287
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_CurrentSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->restorePagerState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onMediaItemSelected()V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->openFullScreenPlayerandFinish()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 92
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 93
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 94
    invoke-super {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->onPause()V

    return-void
.end method

.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 0

    .line 252
    new-instance p1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$2;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;)V

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 1

    .line 234
    new-instance v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$1;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$1;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->restorePagerState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 145
    :cond_1
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_CurrentSavedInstanceState:Landroid/os/Bundle;

    .line 146
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->startWaitingForDataSourceToLoad()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 84
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 85
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 86
    invoke-super {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 119
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#*#*# save Instance State for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->currentWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->currentWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 126
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-interface {v0, p1, v1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->saveCurrentState(Landroid/os/Bundle;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_1
    return-void
.end method

.method public onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 1

    .line 265
    iget p1, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_COMPLETED:I

    if-ne p1, v0, :cond_0

    .line 267
    new-instance p1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$3;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;)V

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
