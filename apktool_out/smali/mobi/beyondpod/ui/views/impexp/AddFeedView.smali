.class public Lmobi/beyondpod/ui/views/impexp/AddFeedView;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AddFeedView.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;
.implements Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;
    }
.end annotation


# static fields
.field private static final MENU_ADD_BY_URL:I = 0x2

.field private static final MENU_IMPORT_FEEDLY:I = 0x7

.field private static final MENU_IMPORT_MASTER:I = 0x6

.field private static final MENU_IMPORT_OPML:I = 0x5

.field private static final MENU_IMPORT_SD_CARD:I = 0x4

.field private static final MENU_OPEN_SEARCH:I = 0x1

.field public static final SEARCH_RESULTS_FRAGMENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AddFeedView"

.field private static final TAG_ACTIVE_RESULT_FRAGMENT:Ljava/lang/String; = "ACTIVE_FRAGMENT"

.field private static final TAG_QUERY:Ljava/lang/String; = "QUERY"

.field public static final TAG_SECTION:Ljava/lang/String; = "SECTION"

.field public static final VIEW_PAGER:I = 0x1


# instance fields
.field private _ActiveResultFragment:I

.field _Query:Ljava/lang/String;

.field private _RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

.field private final _RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

.field _searchView:Landroid/support/v7/widget/SearchView;

.field private mAdapter:Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;

.field private mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

.field private sections:[Ljava/lang/String;

.field private tabStrip:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    .line 144
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_Query:Ljava/lang/String;

    .line 372
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    .line 373
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView$2;-><init>(Lmobi/beyondpod/ui/views/impexp/AddFeedView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/AddFeedView;I)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->showImportOption(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/impexp/AddFeedView;)Lmobi/beyondpod/rsscore/FeedList;
    .locals 0

    .line 64
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/impexp/AddFeedView;)[Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->sections:[Ljava/lang/String;

    return-object p0
.end method

.method private openAddFeedDialog(Ljava/lang/String;)V
    .locals 2

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL_KEY"

    .line 307
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showImportOption(I)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    .line 340
    :pswitch_0
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenImportFeeds(I)V

    .line 341
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->finish()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    .line 346
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenImportFeeds(I)V

    .line 347
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 334
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenImportFeeds(I)V

    .line 335
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "http://"

    .line 328
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->openAddFeedDialog(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->finish()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showImportUsingPopup()V
    .locals 3

    const/4 v0, 0x4

    .line 203
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 204
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 205
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 206
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 208
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100070

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/views/impexp/AddFeedView$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView$1;-><init>(Lmobi/beyondpod/ui/views/impexp/AddFeedView;)V

    .line 209
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showResultsFragment(I)V
    .locals 4

    .line 264
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900f7

    .line 266
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 272
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 273
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->viewPager:Landroid/support/v4/view/ViewPager;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 278
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 281
    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 282
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 283
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->unfocusSearchBox()V

    .line 284
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_ActiveResultFragment:I

    return-void
.end method

.method private togglePopularCategories(Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->tabStrip:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->setVisibility(I)V

    return-void
.end method

.method private unfocusSearchBox()V
    .locals 4

    .line 436
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    new-instance v1, Lmobi/beyondpod/ui/views/impexp/AddFeedView$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView$3;-><init>(Lmobi/beyondpod/ui/views/impexp/AddFeedView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 461
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method checkAndOpenAddFeedDialogFor(Ljava/lang/String;)Z
    .locals 3

    .line 289
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 297
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->openAddFeedDialog(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 452
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeedSearch;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeedSearch;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    .line 455
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    return-object v0
.end method

.method public onCategoryChanged(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_Query:Ljava/lang/String;

    .line 403
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Publishers"

    :cond_0
    const/4 v0, 0x1

    .line 406
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->togglePopularCategories(Z)V

    .line 407
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->showResultsFragment(I)V

    const/4 v0, 0x0

    .line 408
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->sections:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 410
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->sections:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x2

    .line 89
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->supportRequestWindowFeature(I)Z

    .line 90
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object p1, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->TAG:Ljava/lang/String;

    const-string v0, "Closing view because the repository is not Loaded"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->finish()V

    return-void

    .line 99
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    const-class v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    const v0, 0x7f0c0020

    .line 101
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbbbbbc

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    .line 108
    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    sget-object v1, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddFeedView.onCreate() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const v0, 0x7f0901b7

    .line 115
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 116
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;-><init>(Lmobi/beyondpod/ui/views/impexp/AddFeedView;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mAdapter:Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;

    .line 117
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->sections:[Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mAdapter:Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->sections:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;->setTabs([Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mAdapter:Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f0901cf

    .line 120
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->tabStrip:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    .line 121
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->tabStrip:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 122
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->tabStrip:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->setAddFeedView(Lmobi/beyondpod/ui/views/impexp/AddFeedView;)V

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->openFeedSearch(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "Categories"

    .line 134
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->onCategoryChanged(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "QUERY"

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_Query:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_Query:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->togglePopularCategories(Z)V

    const-string v0, "ACTIVE_FRAGMENT"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->showResultsFragment(I)V

    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 171
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    .line 172
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09017a

    .line 174
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    .line 177
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 181
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_Query:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_Query:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 184
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10021a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    :cond_1
    const v0, 0x7f100070

    const/4 v3, 0x3

    const/4 v4, 0x6

    .line 189
    invoke-interface {p1, v2, v4, v3, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    .line 190
    invoke-interface {p1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    const v5, 0x7f0800c3

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 191
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f10006c

    const/4 v4, 0x2

    .line 193
    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x7

    const v5, 0x7f10006d

    .line 194
    invoke-interface {p1, v2, v0, v1, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v5, 0x7f10006f

    .line 195
    invoke-interface {p1, v2, v0, v4, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const v4, 0x7f10006e

    .line 196
    invoke-interface {p1, v2, v0, v3, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .line 361
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    const-class v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 363
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startNewFeedAddedUpdate(Lmobi/beyondpod/rsscore/FeedList;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->release()V

    .line 369
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.SEARCH"

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->openFeedSearch(Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->finish()V

    return v1

    .line 319
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->showImportOption(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 386
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->openFeedSearch(Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    if-eqz p1, :cond_0

    .line 389
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 429
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 430
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->unfocusSearchBox()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 421
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "QUERY"

    .line 422
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_Query:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ACTIVE_FRAGMENT"

    .line 423
    iget v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_ActiveResultFragment:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public openFeedSearch(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 232
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 235
    :cond_1
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->checkAndOpenAddFeedDialogFor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 238
    :cond_2
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_Query:Ljava/lang/String;

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->showResultsFragment(I)V

    .line 241
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->togglePopularCategories(Z)V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->mAdapter:Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;

    .line 245
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 247
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900f7

    .line 248
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 249
    check-cast v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->doSearch(Ljava/lang/String;)V

    const/16 p1, 0x10

    .line 251
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    return-void
.end method
