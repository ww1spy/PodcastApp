.class public Lmobi/beyondpod/ui/views/player/PlaylistPager;
.super Landroid/support/v4/view/ViewPager;
.source "PlaylistPager.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;
    }
.end annotation


# instance fields
.field _CurrentlyPlayingEpisode:Lmobi/beyondpod/rsscore/Track;

.field _LastTouchTime:J

.field _Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;

.field _PagerAdapter:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/PlaylistPager;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->selectCurrentEpisode(Z)V

    return-void
.end method

.method private selectCurrentEpisode(Z)V
    .locals 6

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_LastTouchTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 123
    iget-wide v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_LastTouchTime:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const-wide/32 v2, 0xafc8

    cmp-long p1, v4, v2

    if-lez p1, :cond_1

    .line 125
    :cond_0
    iput-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_LastTouchTime:J

    .line 126
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;

    new-instance v0, Lmobi/beyondpod/ui/views/player/PlaylistPager$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager$3;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistPager;)V

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doCleanup()V
    .locals 2

    const-string v0, "WSX"

    const-string v1, "....PlaylistPager doCleanup"

    .line 195
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected episodePlayPause(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdResumePlayback()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPosition(I)Z

    .line 150
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;->togglePlaylistPager(Z)V

    :cond_2
    return-void
.end method

.method public getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 48
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 162
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setVisibility(I)V

    .line 163
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->onDeActivated()V

    return-void
.end method

.method onActivated()V
    .locals 2

    const-string v0, "WSX"

    const-string v1, "----PlaylistPager Activated"

    .line 168
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 171
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    const-wide/16 v0, 0x1

    .line 172
    iput-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_LastTouchTime:J

    .line 173
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->reloadList()V

    return-void
.end method

.method public onDeActivated()V
    .locals 2

    const-string v0, "WSX"

    const-string v1, "----PlaylistPager DeActivated"

    .line 178
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 181
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 54
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onFinishInflate()V

    .line 56
    new-instance v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistPager;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_PagerAdapter:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setClipToPadding(Z)V

    .line 61
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 62
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 64
    invoke-virtual {p0, v1, v0, v2, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setPadding(IIII)V

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_PagerAdapter:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 0

    .line 214
    iget p1, p1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    if-nez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->reloadList()V

    :cond_0
    return-void
.end method

.method public onPlayerSlide(F)V
    .locals 1

    const v0, 0x3f733333    # 0.95f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 188
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    .line 190
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->reloadList()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 201
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->refreshList()V

    .line 206
    :cond_0
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 208
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->reloadList()V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_LastTouchTime:J

    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public refreshList()V
    .locals 2

    .line 70
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistPager;)V

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadList()V
    .locals 2

    .line 96
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlaylistPager$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager$2;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistPager;)V

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPlayerOwner(Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->onActivated()V

    return-void
.end method
