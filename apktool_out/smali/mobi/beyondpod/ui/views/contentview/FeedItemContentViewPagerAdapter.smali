.class public Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FeedItemContentViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$WebChrome;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedItemContentViewPagerAdapter"

.field private static final TITLE_TAG:Ljava/lang/String; = "@@@@@"


# instance fields
.field private _Owner:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

.field private _RecycledWebViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private _SavedInstanceState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_SavedInstanceState:Landroid/os/Bundle;

    .line 48
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    .line 49
    iput-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_SavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;)Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;
    .locals 0

    .line 38
    iget-object p0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createWebView()Lmobi/beyondpod/ui/views/base/WebViewEx;
    .locals 3

    .line 124
    new-instance v0, Lmobi/beyondpod/ui/views/base/WebViewEx;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/base/WebViewEx;-><init>(Landroid/content/Context;)V

    .line 125
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowMarginNavigationInFeedItemContentDialog()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/WebViewEx;->initialize(Lmobi/beyondpod/ui/views/base/IWebViewOwner;Z)V

    .line 127
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->registerForContextMenu(Landroid/view/View;)V

    .line 130
    new-instance v1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$WebChrome;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$WebChrome;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 131
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 135
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 137
    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/base/WebViewEx;->setScrollBarStyle(I)V

    .line 139
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->contentThemeBackgroundColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->setBackgroundColor(I)V

    .line 146
    :cond_0
    new-instance v1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$1;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 277
    new-instance v1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$2;-><init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-object v0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 3

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 102
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollX(I)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollY(I)V

    .line 104
    iget-object v2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-object v0

    .line 111
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->createWebView()Lmobi/beyondpod/ui/views/base/WebViewEx;

    move-result-object v0

    return-object v0
.end method

.method private loadItemContent(Landroid/webkit/WebView;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 13

    .line 364
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v2, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    .line 367
    invoke-static {p2}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->constructEpisodeDocument(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, p1

    .line 366
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v8, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    const/4 v0, 0x0

    .line 373
    invoke-static {p2, v0}, Lmobi/beyondpod/htmlbuilder/FeedHtmlContentProvider;->constructItemDocument(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, "text/html"

    const-string v11, "utf-8"

    const/4 v12, 0x0

    move-object v7, p1

    .line 372
    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private loadItemData(Landroid/webkit/WebView;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 330
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 339
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_SavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_SavedInstanceState:Landroid/os/Bundle;

    const-string v1, "CurrentRSSItemID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_SavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    const/4 p1, 0x0

    .line 345
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_SavedInstanceState:Landroid/os/Bundle;

    return-void

    .line 351
    :cond_0
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->loadItemContent(Landroid/webkit/WebView;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_1
    return-void
.end method

.method private putWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    const-string v0, "about:blank"

    .line 117
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    move-object p2, p3

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    check-cast p3, Landroid/webkit/WebView;

    invoke-direct {p0, p3}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->putWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method public generatePlaylist(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/Track;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getDataSource()Lmobi/beyondpod/ui/views/contentview/IDataSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->generatePlaylistStartingFrom(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getDataSourceCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getDataSource()Lmobi/beyondpod/ui/views/contentview/IDataSource;

    move-result-object v1

    invoke-interface {v1, p2}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getItemAtPosition(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p2

    .line 65
    invoke-direct {p0, v0, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->loadItemData(Landroid/webkit/WebView;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/4 p2, 0x0

    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reloadContent(Landroid/webkit/WebView;)V
    .locals 1

    .line 380
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->loadItemContent(Landroid/webkit/WebView;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
