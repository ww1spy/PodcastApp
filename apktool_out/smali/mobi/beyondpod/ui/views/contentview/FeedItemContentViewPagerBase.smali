.class public Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FeedItemContentViewPagerBase.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/IWebViewOwner;
.implements Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;
.implements Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;
    }
.end annotation


# static fields
.field public static ACTIVITY_REQUEST_ContentViewPager:I = 0x772

.field private static final FL_MENU_FIRST:I = 0x5a

.field protected static final FOCUS_NODE_HREF:I = 0x66

.field private static final MENU_ADD_TO_MY_EPISODES:I = 0x66

.field private static final MENU_ADD_TO_PLAYLIST:I = 0x62

.field private static final MENU_DELETE_EPISODE:I = 0x67

.field private static final MENU_DISPLAY_SETTINGS:I = 0x63

.field private static final MENU_DOWNLOAD:I = 0x64

.field private static final MENU_PLAY_POST_PODCAST:I = 0x61

.field private static final MENU_SET_AS_FAVORITE:I = 0x65

.field private static final MENU_SHARE_LINK:I = 0x5c

.field private static final MENU_TOGGLE_READ:I = 0x5e

.field private static final MENU_TOGGLE_STAR:I = 0x5f

.field protected static final TAG:Ljava/lang/String;

.field protected static _InstanceCount:I


# instance fields
.field private _AllowVibrate:Z

.field private _ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field _CurrentItemChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field protected _CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

.field private _CustomTabConnected:Z

.field protected _DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

.field private _DataSourceItemCount:I

.field protected _Handler:Landroid/os/Handler;

.field protected _IsPageSwitching:Z

.field private _MinScroll:I

.field private _MinSpeed:I

.field private _PagerAdapter:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

.field private _PrefetchOnConnect:Z

.field private _UnderlinePageIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

.field private _ViewPager:Landroid/support/v4/view/ViewPager;

.field private _customTabActivityHelper:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;

.field private _theMenu:Landroid/view/Menu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const-class v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 86
    new-instance v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$1;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_Handler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$2;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_IsPageSwitching:Z

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_AllowVibrate:Z

    .line 166
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CustomTabConnected:Z

    .line 167
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_PrefetchOnConnect:Z

    .line 170
    new-instance v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentItemChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Ljava/lang/CharSequence;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Landroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->startIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->changeCurrentItemReadStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->preFetchCurrentItemLink()V

    return-void
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_AllowVibrate:Z

    return p0
.end method

.method static synthetic access$402(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_AllowVibrate:Z

    return p1
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->startHtmlViewActivityInternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;I)I
    .locals 0

    .line 77
    iput p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSourceItemCount:I

    return p1
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;
    .locals 0

    .line 77
    iget-object p0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_PagerAdapter:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->refreshPages()V

    return-void
.end method

.method private changeCurrentItemReadStatus(Z)V
    .locals 2

    .line 398
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setRead(Z)V

    .line 401
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 404
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private changeCurrentStarredStatus(Z)V
    .locals 2

    .line 410
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setStarred(Z)V

    .line 413
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 416
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private copyToClipboard(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "clipboard"

    .line 431
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, ""

    .line 432
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method public static doOpenOriginalSource(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .line 269
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 276
    :try_start_0
    invoke-static {p2}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->useExternalBrowser()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    invoke-static {p2}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p3, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->startHtmlViewActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/CharSequence;Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private indicateEnd()V
    .locals 1

    .line 499
    sget v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->VIBRATE_SHORT:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->vibrate(I)V

    return-void
.end method

.method private openNextPrevItem(I)Z
    .locals 2

    .line 386
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-interface {v0, p1, v1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getNextPrevItem(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v1, p1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getIndexOf(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private pausePlugins()V
    .locals 4

    .line 553
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 555
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 557
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 558
    instance-of v2, v1, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 560
    sget-object v2, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    const-string v3, "Pausing webviews..."

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private playEpisode()V
    .locals 3

    .line 369
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v1, v0}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->generatePlaylistStartingFrom(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPauseTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->openFullScreenPlayerandFinish()V

    :cond_1
    return-void
.end method

.method private preFetchCurrentItemLink()V
    .locals 4

    .line 215
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CustomTabConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_PrefetchOnConnect:Z

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_customTabActivityHelper:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 230
    sget-object v1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chrome custom tab is pre-fetching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    const-string v1, "Unable to pre-fetching custom tab link! "

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private refreshPages()V
    .locals 3

    .line 867
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 869
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 871
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 872
    instance-of v2, v1, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 874
    iget-object v2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_PagerAdapter:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->reloadContent(Landroid/webkit/WebView;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static startChromeCustomTabActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/CharSequence;Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;)Z
    .locals 5

    .line 309
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGUseChromeTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 312
    :cond_0
    new-instance v0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0, p3}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;-><init>(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;)V

    const p3, 0x7f06002c

    .line 313
    invoke-static {p0, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v0, p3}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;

    const/4 p3, 0x1

    .line 314
    invoke-virtual {v0, p3}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;

    .line 316
    new-instance v2, Landroid/content/Intent;

    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lmobi/beyondpod/ui/core/customtabs/ShareBroadcastReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f100009

    .line 320
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;->addMenuItem(Ljava/lang/String;Landroid/app/PendingIntent;)Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;

    .line 322
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800dc

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;->setCloseButtonIcon(Landroid/graphics/Bitmap;)Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;

    .line 325
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent$Builder;->build()Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$4;

    invoke-direct {v1, p0, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$4;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 324
    invoke-static {p0, v0, p1, v1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->openCustomTab(Landroid/app/Activity;Lmobi/beyondpod/ui/core/customtabs/CustomTabsIntent;Landroid/net/Uri;Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$CustomTabFallback;)V

    return p3
.end method

.method private static startHtmlViewActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/CharSequence;Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;)Z
    .locals 0

    .line 296
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->startChromeCustomTabActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/CharSequence;Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    .line 299
    :cond_0
    invoke-static {p0, p1, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->startHtmlViewActivityInternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static startHtmlViewActivityInternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 341
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/views/HtmlViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "title"

    .line 343
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p1, "IsFeedContentLink"

    const/4 p2, 0x1

    .line 344
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private startIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1075
    :try_start_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1079
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open URL!\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1080
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private toggleActionBar(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 899
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    :cond_0
    if-nez p1, :cond_1

    .line 902
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 903
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_1
    return-void
.end method


# virtual methods
.method currentWebView()Landroid/webkit/WebView;
    .locals 2

    .line 422
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 425
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const-string v0, "audio"

    .line 441
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 443
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 444
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 446
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->volumeControlsNavigationType()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->volumeControlsNavigationType()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    .line 469
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    if-nez v2, :cond_3

    .line 463
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    invoke-virtual {p1, v4}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->adjustVolume(I)Z

    return v0

    :pswitch_1
    if-nez v2, :cond_3

    .line 455
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    invoke-virtual {p1, v5}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->adjustVolume(I)Z

    return v0

    :cond_3
    const-string v0, "window"

    .line 473
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/16 v3, 0x18

    if-ne v1, v3, :cond_7

    if-nez v2, :cond_6

    if-eqz v0, :cond_5

    if-ne v0, v5, :cond_4

    goto :goto_0

    :cond_4
    move v4, v5

    .line 479
    :cond_5
    :goto_0
    invoke-direct {p0, v4}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->openNextPrevItem(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 480
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->indicateEnd()V

    :cond_6
    return v5

    :cond_7
    const/16 v3, 0x19

    if-ne v1, v3, :cond_b

    if-nez v2, :cond_a

    if-eqz v0, :cond_8

    if-ne v0, v5, :cond_9

    :cond_8
    move v4, v5

    .line 488
    :cond_9
    invoke-direct {p0, v4}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->openNextPrevItem(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 489
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->indicateEnd()V

    :cond_a
    return v5

    .line 494
    :cond_b
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 539
    iput-boolean v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_AllowVibrate:Z

    .line 541
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 941
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    sget v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_InstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_InstanceCount:I

    .line 944
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######### FeedItemContentViewPager FINALIZED! Remaining instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getDataSource()Lmobi/beyondpod/ui/views/contentview/IDataSource;
    .locals 1

    .line 358
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    return-object v0
.end method

.method getDataSourceCount()I
    .locals 1

    .line 364
    iget v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSourceItemCount:I

    return v0
.end method

.method public onCastDeviceDetected()V
    .locals 0

    return-void
.end method

.method public onConnectedToDevice(Ljava/lang/String;)V
    .locals 4

    .line 1144
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f1002d4

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1145
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConnectionRefused()V
    .locals 2

    const v0, 0x7f1002fa

    const/4 v1, 0x1

    .line 1157
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 241
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102eb

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 247
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_MinScroll:I

    .line 248
    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_MinSpeed:I

    .line 250
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 254
    new-instance p1, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;

    invoke-direct {p1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_customTabActivityHelper:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;

    .line 255
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_customTabActivityHelper:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;

    invoke-virtual {p1, p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->setConnectionCallback(Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;)V

    .line 257
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "DiscoveryFragment"

    .line 258
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;-><init>()V

    .line 261
    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->setOwner(Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;)V

    .line 262
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 263
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v1, "DiscoveryFragment"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 953
    check-cast p2, Landroid/webkit/WebView;

    .line 954
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 960
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p3

    if-nez p3, :cond_1

    .line 963
    sget-object p1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    const-string p2, "We should not show context menu when nothing is touched"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x9

    if-ne p3, v0, :cond_2

    return-void

    .line 976
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    .line 977
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 980
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f090008

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 981
    :goto_0
    invoke-interface {p1, v0, v1}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    const v0, 0x7f090003

    const/4 v1, 0x4

    if-ne p3, v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    .line 982
    :goto_1
    invoke-interface {p1, v0, v1}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    const v0, 0x7f090005

    const/4 v1, 0x3

    if-ne p3, v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    .line 983
    :goto_2
    invoke-interface {p1, v0, v1}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    const v0, 0x7f090006

    const/16 v1, 0x8

    const/4 v4, 0x5

    if-eq p3, v4, :cond_7

    if-ne p3, v1, :cond_6

    goto :goto_3

    :cond_6
    move v5, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v3

    .line 984
    :goto_4
    invoke-interface {p1, v0, v5}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    const v0, 0x7f090001

    const/4 v5, 0x7

    if-eq p3, v5, :cond_9

    if-ne p3, v1, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    :goto_5
    move v1, v3

    .line 986
    :goto_6
    invoke-interface {p1, v0, v1}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    packed-switch p3, :pswitch_data_0

    .line 1066
    :pswitch_0
    sget-object p1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    const-string p2, "We should not get here."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1031
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109000e

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1034
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    const v0, 0x7f0901b1

    .line 1037
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v0, 0x7f0900aa

    .line 1038
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1040
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1041
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "text/plain"

    .line 1042
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000

    .line 1044
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const v1, 0x7f090228

    .line 1045
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_a

    move v2, v3

    :cond_a
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1046
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    if-ne p3, v5, :cond_b

    goto/16 :goto_7

    :cond_b
    :pswitch_2
    if-ne p3, v4, :cond_c

    .line 1057
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_c
    const p3, 0x7f0902a7

    .line 1060
    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1061
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1009
    :pswitch_3
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const p3, 0x7f0900d2

    .line 1011
    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1012
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1013
    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const p3, 0x7f0900ab

    .line 1015
    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p3, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;

    invoke-direct {p3, p0, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Ljava/lang/CharSequence;)V

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1019
    :pswitch_4
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1021
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f090175

    .line 1022
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:0,0?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1023
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v1, v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1024
    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const p3, 0x7f0900a9

    .line 1026
    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p3, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;

    invoke-direct {p3, p0, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Ljava/lang/CharSequence;)V

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    .line 993
    :pswitch_5
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const p3, 0x7f0900c1

    .line 995
    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 996
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 997
    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 999
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "phone"

    .line 1000
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.item/contact"

    .line 1001
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f090036

    .line 1002
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ContextItemSelectedListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1003
    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const p3, 0x7f0900ac

    .line 1005
    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p3, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;

    invoke-direct {p3, p0, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Ljava/lang/CharSequence;)V

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 612
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_theMenu:Landroid/view/Menu;

    const v0, 0x7f100027

    .line 613
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 614
    new-instance v1, Landroid/support/v7/app/MediaRouteActionProvider;

    invoke-direct {v1, p0}, Landroid/support/v7/app/MediaRouteActionProvider;-><init>(Landroid/content/Context;)V

    .line 615
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteActionProvider;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 616
    new-instance v2, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;

    invoke-direct {v2}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteActionProvider;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    .line 617
    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 618
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x0

    const/16 v2, 0x61

    const v3, 0x7f100019

    .line 620
    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0800c8

    .line 621
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v2, 0x1

    const/16 v3, 0x5e

    const v4, 0x7f100023

    .line 623
    invoke-interface {p1, v0, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 624
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v3, 0x64

    const v4, 0x7f1002f2

    .line 626
    invoke-interface {p1, v0, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0800b9

    .line 627
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v3, 0x62

    const/4 v4, 0x3

    const v5, 0x7f100002

    .line 629
    invoke-interface {p1, v0, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0800c9

    .line 630
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v3, 0x7f100020

    const/16 v4, 0x5f

    const/4 v5, 0x4

    .line 632
    invoke-interface {p1, v0, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x5c

    const/4 v4, 0x5

    const v5, 0x7f100009

    .line 634
    invoke-interface {p1, v0, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f0800d1

    .line 635
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x65

    const/4 v4, 0x6

    .line 637
    invoke-interface {p1, v0, v1, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x66

    const/4 v3, 0x7

    const v4, 0x7f1002f1

    .line 638
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x63

    const/16 v3, 0x8

    const v4, 0x7f100013

    .line 639
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x67

    const/16 v3, 0x9

    const v4, 0x7f100011

    .line 640
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v2
.end method

.method public onCustomTabsConnected()V
    .locals 2

    .line 1087
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    const-string v1, "Chrome custom tab service connected"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CustomTabConnected:Z

    .line 1090
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_PrefetchOnConnect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1092
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_PrefetchOnConnect:Z

    .line 1093
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->preFetchCurrentItemLink()V

    :cond_0
    return-void
.end method

.method public onCustomTabsDisconnected()V
    .locals 2

    .line 1100
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    const-string v1, "Chrome custom tab service disconnected"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1101
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CustomTabConnected:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 589
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 590
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_customTabActivityHelper:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->setConnectionCallback(Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$ConnectionCallback;)V

    .line 593
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->setCollectionChangedListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;)V

    .line 596
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 598
    :cond_1
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 600
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 601
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 603
    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDisconnectFromDevice()V
    .locals 0

    return-void
.end method

.method public onDoubleTap(FFI)V
    .locals 2

    const/4 p1, 0x5

    if-ne p3, p1, :cond_0

    .line 911
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 912
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->currentWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$8;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$8;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 921
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->currentWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$9;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$9;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onIncompatiblePlayServices()V
    .locals 1

    const/4 v0, 0x1

    .line 1169
    invoke-static {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->checkGooglePlayServices(Landroid/app/Activity;Z)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 740
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x5c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6

    const v1, 0x102002c

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 820
    :pswitch_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {p0, v0, v3, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    invoke-static {}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v3

    .line 827
    invoke-virtual {v3, v0}, Lmobi/beyondpod/services/player/PlayList;->removeTrack(Lmobi/beyondpod/rsscore/Track;)V

    .line 829
    new-instance v3, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v3}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 830
    invoke-virtual {v3, v0}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    const-string v0, "CmdDeleteEpisodes"

    .line 834
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    new-instance v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$7;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$7;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Landroid/view/MenuItem;)V

    invoke-static {p0, v3, v0}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->showDialog(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 794
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {p0, p1, v3, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    :cond_0
    :goto_0
    return v1

    .line 848
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz p1, :cond_1

    .line 850
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 853
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {p0, p1, v3, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 855
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Track;->setLocked(Z)V

    :cond_1
    return v3

    .line 766
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 768
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {p0, v0, p1, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadEnclosure(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Z)V

    :cond_2
    return v3

    .line 798
    :pswitch_4
    new-instance p1, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    new-instance v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$6;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V

    invoke-direct {p1, p0, v0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;)V

    const v0, 0x1020002

    .line 816
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->show(Landroid/view/View;)V

    return v3

    .line 761
    :pswitch_5
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 762
    invoke-static {p0, p1, v1, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    .line 761
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddRemoveToPlaylist(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    return v3

    .line 757
    :pswitch_6
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->playEpisode()V

    return v3

    .line 752
    :pswitch_7
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz p1, :cond_3

    .line 753
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getStarred()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->changeCurrentStarredStatus(Z)V

    :cond_3
    return v3

    .line 747
    :pswitch_8
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz p1, :cond_4

    .line 748
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->changeCurrentItemReadStatus(Z)V

    :cond_4
    return v3

    .line 743
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->finish()V

    return v3

    .line 772
    :cond_6
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz p1, :cond_9

    .line 776
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 778
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 779
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    .line 778
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPathOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    .line 783
    invoke-static {p0, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSharePodcast(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_1

    .line 786
    :cond_8
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 788
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {p0, p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSharePost(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_9
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .line 547
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->pausePlugins()V

    .line 548
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x61

    .line 648
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x62

    .line 649
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x5e

    .line 650
    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x5f

    .line 651
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x64

    .line 652
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x65

    .line 653
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const/16 v8, 0x5c

    .line 654
    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x66

    .line 655
    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/16 v10, 0x67

    .line 656
    invoke-interface {v1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 658
    iget-object v10, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v10, :cond_0

    .line 660
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 661
    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 662
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 663
    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 664
    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v11

    :cond_0
    const/4 v10, 0x0

    .line 672
    invoke-static {}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v13

    invoke-virtual {v13}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v13

    .line 674
    iget-object v14, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v14, :cond_2

    .line 676
    iget-object v14, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v14}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 680
    iget-object v10, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v10}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v10

    invoke-virtual {v10}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v10

    .line 682
    iget-object v14, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v14}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1

    if-nez v10, :cond_1

    move-object v15, v10

    move v10, v11

    goto :goto_0

    :cond_1
    move-object v15, v10

    move v14, v11

    move v10, v12

    goto :goto_1

    :cond_2
    move-object v15, v10

    move v10, v12

    :goto_0
    move v14, v10

    :goto_1
    xor-int/lit8 v12, v10, 0x1

    .line 690
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v2, :cond_4

    if-nez v10, :cond_3

    if-eqz v14, :cond_3

    move v1, v11

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 694
    :goto_2
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    if-eqz v3, :cond_7

    if-nez v10, :cond_5

    if-eqz v14, :cond_5

    move v1, v11

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 700
    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v15, :cond_6

    .line 701
    invoke-virtual {v13, v15}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0800ca

    goto :goto_4

    :cond_6
    const v1, 0x7f0800c9

    :goto_4
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_7
    if-eqz v6, :cond_b

    if-nez v10, :cond_a

    if-eqz v15, :cond_8

    .line 706
    invoke-virtual {v15}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    if-nez v15, :cond_a

    if-eqz v14, :cond_a

    :cond_9
    move v1, v11

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    if-eqz v9, :cond_d

    if-nez v15, :cond_c

    if-eqz v14, :cond_c

    move v1, v11

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    .line 712
    :goto_6
    invoke-interface {v9, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 715
    :cond_d
    iget-object v1, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v1

    .line 716
    iget-object v2, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v2}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->allowStarring()Z

    move-result v2

    if-eqz v1, :cond_e

    const v1, 0x7f0800d7

    goto :goto_7

    :cond_e
    const v1, 0x7f0800d9

    .line 718
    :goto_7
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    xor-int/lit8 v1, v14, 0x1

    .line 719
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 721
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 722
    iget-object v1, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getStarred()Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x7f0800d6

    goto :goto_8

    :cond_f
    const v1, 0x7f0800d5

    :goto_8
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    if-eqz v7, :cond_12

    if-nez v10, :cond_10

    if-eqz v14, :cond_10

    move v1, v11

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    .line 726
    :goto_9
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v15, :cond_12

    .line 728
    invoke-virtual {v15}, Lmobi/beyondpod/rsscore/Track;->canSetAsFavorite()Z

    move-result v1

    if-nez v1, :cond_11

    const v1, 0x7f10003d

    goto :goto_a

    :cond_11
    const v1, 0x7f100020

    :goto_a
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_12
    if-eqz v8, :cond_14

    if-eqz v14, :cond_13

    const v1, 0x7f10000a

    goto :goto_b

    :cond_13
    const v1, 0x7f100009

    .line 732
    :goto_b
    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_14
    return v11
.end method

.method protected onResume()V
    .locals 3

    .line 570
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 572
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 574
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 575
    instance-of v2, v1, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 577
    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->invalidateOptionsMenu()V

    .line 583
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1128
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 1129
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGUseChromeTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_customTabActivityHelper:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->bindCustomTabsService(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1136
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 1137
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGUseChromeTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_customTabActivityHelper:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->unbindCustomTabsService(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onVerticalScroll(II)V
    .locals 2

    .line 884
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_MinSpeed:I

    if-ge v0, v1, :cond_0

    return-void

    .line 887
    :cond_0
    iget v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_MinScroll:I

    if-lt p1, v0, :cond_2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    if-lez p2, :cond_3

    const/4 p1, 0x0

    .line 893
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->toggleActionBar(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 889
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->toggleActionBar(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method onWebPageProgress(Landroid/webkit/WebView;I)V
    .locals 1

    .line 934
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->currentWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 935
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {p1, v0, p2}, Landroid/view/Window;->setFeatureInt(II)V

    :cond_0
    return-void
.end method

.method protected openFullScreenPlayerandFinish()V
    .locals 1

    const/4 v0, -0x1

    .line 380
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->setResult(I)V

    .line 381
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->finish()V

    return-void
.end method

.method public openItemContentLink(Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "Loading..."

    .line 1106
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_customTabActivityHelper:Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper;->getSession()Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->startHtmlViewActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/CharSequence;Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;)Z

    move-result p1

    return p1
.end method

.method protected wireViewPager(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f0902ae

    .line 504
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    .line 505
    new-instance v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    invoke-direct {v0, p0, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Landroid/os/Bundle;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_PagerAdapter:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    .line 507
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {p2}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getCount()I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSourceItemCount:I

    .line 508
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_PagerAdapter:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const p2, 0x7f09029f

    .line 510
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_UnderlinePageIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    .line 511
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_UnderlinePageIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 512
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_UnderlinePageIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_PagerAdapter:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setVisibility(I)V

    .line 513
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_UnderlinePageIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentItemChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 515
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {p2, p1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getIndexOf(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I

    move-result p1

    .line 517
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    new-instance v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$5;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V

    invoke-interface {p2, v0}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->setCollectionChangedListener(Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;)V

    if-lez p1, :cond_1

    .line 531
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_ViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 533
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentItemChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p1, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :goto_1
    return-void
.end method
