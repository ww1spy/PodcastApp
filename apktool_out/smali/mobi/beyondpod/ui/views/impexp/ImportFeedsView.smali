.class public Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ImportFeedsView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;


# static fields
.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1f5

.field private static final TAG:Ljava/lang/String; = "ImportFeedsView"


# instance fields
.field private _RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

.field private final _RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 63
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    .line 236
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView$1;-><init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;)Lmobi/beyondpod/rsscore/FeedList;
    .locals 0

    .line 59
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    return-object p0
.end method

.method private openSearch(Ljava/lang/String;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    check-cast v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->searchFor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public importFeedly()V
    .locals 4

    .line 148
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->initialize(ZZ)V

    .line 150
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 153
    sget-object v2, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->TAG:Ljava/lang/String;

    const v3, 0x7f09009f

    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v0, 0x1001

    .line 154
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public importOPML()V
    .locals 4

    .line 160
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;-><init>()V

    .line 161
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 164
    sget-object v2, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->TAG:Ljava/lang/String;

    const v3, 0x7f09009f

    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v0, 0x1001

    .line 165
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 166
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public importVirtualFeed()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 172
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->hasExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->PERMISSIONS_EXT_STORAGE:[Ljava/lang/String;

    const/16 v1, 0x1f5

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 178
    :cond_0
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;-><init>()V

    .line 179
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f09009f

    .line 182
    sget-object v3, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v0, 0x1001

    .line 183
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 184
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 249
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1618

    if-ne p1, v0, :cond_1

    .line 252
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 256
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->onOAuthAccessGranted(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->onOAuthAccessDenied()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 111
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const p1, 0x7f09009f

    .line 113
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 68
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object p1, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->TAG:Ljava/lang/String;

    const-string v0, "Closing view because the repository is not Loaded"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->finish()V

    return-void

    .line 77
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    const-class v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    const v0, 0x7f0c0077

    .line 79
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 84
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-nez p1, :cond_4

    .line 89
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "#TYPE#"

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    .line 102
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->importVirtualFeed()V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->importFeedly()V

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->importOPML()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 228
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    const-class v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 230
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startNewFeedAddedUpdate(Lmobi/beyondpod/rsscore/FeedList;)V

    .line 233
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onFolderSelected(Ljava/io/File;)V
    .locals 0

    .line 222
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->openAddFeedDialog(Ljava/lang/String;)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.SEARCH"

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->openSearch(Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 216
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 212
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_1

    .line 268
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->importVirtualFeed()V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->finish()V

    goto :goto_0

    .line 276
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method openAddFeedDialog(Ljava/lang/String;)Z
    .locals 3

    .line 189
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "feed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 197
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL_KEY"

    .line 198
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedsView;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
