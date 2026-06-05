.class public Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "OpmlListViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;


# static fields
.field private static final BEYOND_POD_IS_LOADING_S:Ljava/lang/String;

.field private static final CONNECTING:Ljava/lang/String;

.field private static final DOWNLOADED:Ljava/lang/String;

.field private static final ERROR:Ljava/lang/String;

.field private static final LOADING:Ljava/lang/String;

.field private static final MENU_IMPORT_SELECTED:I = 0x2

.field private static final MENU_OPEN_SEARCH:I = 0x1

.field private static final MENU_SELECT_ALL:I = 0x3

.field private static final MENU_SELECT_NONE:I = 0x4

.field private static final NUM_FEEDS:Ljava/lang/String;

.field private static final SEARCH:Ljava/lang/String;

.field private static final SELECTED_DIRECTORY_IS_CURRENTLY_UNAVAILABLE_PLEASE_TRY_AGAIN_LATER:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "OpmlListViewFragment"

.field private static final UPDATE_CANCELED:Ljava/lang/String;

.field private static final UPDATE_FAILED:Ljava/lang/String;


# instance fields
.field private _Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

.field _Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

.field _CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

.field private _FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

.field _Handler:Landroid/os/Handler;

.field _LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

.field _ListView:Landroid/widget/ListView;

.field _LoaderThread:Ljava/lang/Thread;

.field _ProgressDialog:Landroid/app/ProgressDialog;

.field _SearchFeed:Lmobi/beyondpod/rsscore/Feed;

.field _SelectCategoryDialog:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

.field _StartupFeed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f10002c

    .line 61
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->SEARCH:Ljava/lang/String;

    const v0, 0x7f1002b4

    .line 63
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->UPDATE_CANCELED:Ljava/lang/String;

    const v0, 0x7f1002af

    .line 64
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->CONNECTING:Ljava/lang/String;

    const v0, 0x7f1002b0

    .line 65
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->DOWNLOADED:Ljava/lang/String;

    const v0, 0x7f1002b1

    .line 66
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->ERROR:Ljava/lang/String;

    const v0, 0x7f1002b5

    .line 67
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->UPDATE_FAILED:Ljava/lang/String;

    const v0, 0x7f1002ae

    .line 69
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->BEYOND_POD_IS_LOADING_S:Ljava/lang/String;

    const v0, 0x7f1002b3

    .line 71
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->SELECTED_DIRECTORY_IS_CURRENTLY_UNAVAILABLE_PLEASE_TRY_AGAIN_LATER:Ljava/lang/String;

    const v0, 0x7f1002b2

    .line 72
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->LOADING:Ljava/lang/String;

    const v0, 0x7f1000d2

    .line 73
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->NUM_FEEDS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Handler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    .line 336
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$7;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->loadCurrentFeedInternal()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->BEYOND_POD_IS_LOADING_S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->CONNECTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->UPDATE_CANCELED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->refreshTitle()V

    return-void
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->onCacheAvailable()V

    return-void
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->UPDATE_FAILED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->ERROR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->DOWNLOADED:Ljava/lang/String;

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 4

    .line 257
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$4;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$4;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getCheckedFeeds()Lmobi/beyondpod/rsscore/FeedList;
    .locals 4

    .line 548
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 549
    new-instance v1, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    const/4 v2, 0x0

    .line 550
    :goto_0
    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 552
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {v3, v2}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private loadCurrentFeedInternal()V
    .locals 5

    .line 204
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_SearchFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 209
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "file"

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 234
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 235
    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->hasCachedFileFor(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->getCachedAgeFor(Lmobi/beyondpod/rsscore/Feed;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 237
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->updateFeed(Lmobi/beyondpod/rsscore/Feed;Z)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->onCacheAvailable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->showToast(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->dismissProgressDialog()V

    .line 252
    :cond_3
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->ERROR:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private onCacheAvailable()V
    .locals 3

    .line 277
    :try_start_0
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->LOADING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    .line 279
    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;-><init>(I)V

    .line 280
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->loadFromCache(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 281
    iget-object v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v1, :cond_0

    iget v1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 283
    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->Feed:Lmobi/beyondpod/rsscore/Feed;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_SearchFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 284
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_SearchFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 288
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->SELECTED_DIRECTORY_IS_CURRENTLY_UNAVAILABLE_PLEASE_TRY_AGAIN_LATER:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->showToast(Ljava/lang/String;)V

    .line 296
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->dismissProgressDialog()V

    .line 298
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private refreshTitle()V
    .locals 5

    .line 441
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getCheckedFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    .line 442
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->numCheckableFeeds()I

    move-result v1

    if-nez v1, :cond_1

    .line 445
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->ERROR:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%s/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->NUM_FEEDS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getCheckedFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->numCheckableFeeds()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 449
    :cond_2
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->NUM_FEEDS:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->numCheckableFeeds()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V

    .line 451
    :goto_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$5;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$5;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public batchImport()V
    .locals 5

    .line 497
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getCheckedFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 506
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->rootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->rootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->canNavigateUp()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Video"

    .line 511
    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Audio"

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->rootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    .line 518
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result v2

    if-nez v2, :cond_3

    .line 520
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->addSubscriptionsInCategory(Lmobi/beyondpod/rsscore/FeedList;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    .line 521
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 522
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->notifyDataSetChanged()V

    return-void

    .line 526
    :cond_3
    new-instance v2, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$8;

    invoke-direct {v4, p0, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$8;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Lmobi/beyondpod/rsscore/FeedList;)V

    invoke-direct {v2, v3, v4}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;)V

    iput-object v2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_SelectCategoryDialog:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    .line 542
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_SelectCategoryDialog:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->createDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_4
    return-void
.end method

.method public initialize(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method

.method public loadCurrentFeed()V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$1;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LoaderThread:Ljava/lang/Thread;

    .line 160
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LoaderThread:Ljava/lang/Thread;

    const-string v1, "OPML Loader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {p1, p0, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 139
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {p1, p0, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 475
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const v1, 0x7f10002b

    .line 477
    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0800d0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    .line 478
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f10001f

    .line 480
    invoke-interface {p1, v0, v2, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0800c3

    .line 481
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x6

    .line 482
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0c00a3

    const/4 p3, 0x0

    .line 103
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901b3

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    .line 107
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0700c3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 108
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 110
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 111
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 113
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-direct {p2, v0, v1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    .line 114
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    invoke-virtual {p2, v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->setFeedUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;)V

    .line 118
    invoke-virtual {p0, p3}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setHasOptionsMenu(Z)V

    .line 120
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->loadCurrentFeed()V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 174
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LoaderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 145
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 146
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 378
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {p1, p3}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 380
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz p1, :cond_2

    .line 382
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->canNavigateUp()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getGoUpPlaceholder()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p4

    invoke-virtual {p2, p4}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 386
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 387
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0

    .line 389
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 391
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 392
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0

    .line 394
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->isFeedImportable(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 396
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 402
    :cond_2
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->refreshTitle()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 408
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 430
    :pswitch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->clearChoices()V

    .line 431
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->notifyDataSetChanged()V

    .line 432
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->refreshTitle()V

    return v1

    .line 419
    :goto_0
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 421
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 422
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {v2, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->isFeedImportable(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 423
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->notifyDataSetChanged()V

    .line 426
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->refreshTitle()V

    return v1

    .line 411
    :pswitch_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->batchImport()V

    return v1

    .line 415
    :pswitch_3
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x2

    .line 457
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 462
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getCheckedFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 1

    .line 562
    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 564
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->refresh()V

    .line 567
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->refreshTitle()V

    return-void
.end method

.method rootFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 333
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    return-object v0
.end method

.method public searchFor(Ljava/lang/String;)V
    .locals 1

    .line 166
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;

    invoke-direct {v0, p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_SearchFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->searchForFeeds(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 318
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$6;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$6;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Lmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$2;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$2;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
