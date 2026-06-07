.class public Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PublisherResultsView.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;
.implements Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;


# static fields
.field public static final EXTRA_PUBLISHER_ID:Ljava/lang/String; = "publisherId"

.field public static final EXTRA_PUBLISHER_NAME:Ljava/lang/String; = "publisherName"

.field public static final FRAGMENT_AUDIOBOK:Ljava/lang/String; = "AUDIOBOOKS"

.field public static final FRAGMENT_PUBLISHER:Ljava/lang/String; = "PUBLISHER"

.field private static final MENU_OPEN_SEARCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PublisherResultsView"


# instance fields
.field _PublisherID:Ljava/lang/String;

.field _PublisherName:Ljava/lang/String;

.field private _RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

.field private final _RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

.field _searchView:Landroid/support/v7/widget/SearchView;

.field private mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 183
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    .line 184
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView$1;-><init>(Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;)Lmobi/beyondpod/rsscore/FeedList;
    .locals 0

    .line 51
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    return-object p0
.end method

.method private buildResultsFragment(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 118
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->isAudiobookPublisher()Z

    move-result p2

    const p3, 0x7f09009f

    if-eqz p2, :cond_0

    .line 120
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    invoke-direct {p2}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;-><init>()V

    .line 121
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "AUDIOBOOKS"

    invoke-virtual {p1, p3, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 126
    :cond_0
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;

    invoke-direct {p2}, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;-><init>()V

    .line 127
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "PUBLISHER"

    invoke-virtual {p1, p3, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method private isAudiobookPublisher()Z
    .locals 2

    const-string v0, "69"

    .line 134
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherID:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 232
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 226
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeedSearch;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeedSearch;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    .line 73
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sget-object p1, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->TAG:Ljava/lang/String;

    const-string v0, "Closing view because the repository is not Loaded"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->finish()V

    return-void

    .line 80
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    const-class v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    const v0, 0x7f0c00ba

    .line 82
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 86
    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 87
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbbbbbc

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-nez p1, :cond_3

    .line 92
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "publisherName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherName:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "publisherId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherID:Ljava/lang/String;

    .line 98
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherID:Ljava/lang/String;

    if-eqz p1, :cond_5

    const p1, 0x7f09009f

    .line 99
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherID:Ljava/lang/String;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->buildResultsFragment(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "publisherId"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherID:Ljava/lang/String;

    const-string v0, "publisherName"

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherName:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 106
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->isAudiobookPublisher()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AUDIOBOOKS"

    goto :goto_0

    :cond_4
    const-string v0, "PUBLISHER"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 108
    check-cast p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setImageLoader(Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 111
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 140
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->isAudiobookPublisher()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v2, 0x7f0d0000

    .line 143
    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09017a

    .line 145
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SearchView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_searchView:Landroid/support/v7/widget/SearchView;

    .line 148
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_searchView:Landroid/support/v7/widget/SearchView;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 151
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    :cond_0
    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .line 174
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    const-class v2, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 176
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_RecentlyImportedFeeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startNewFeedAddedUpdate(Lmobi/beyondpod/rsscore/FeedList;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->release()V

    .line 180
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "AUDIOBOOKS"

    .line 206
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    check-cast v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->DoSearch(Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_searchView:Landroid/support/v7/widget/SearchView;

    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "publisherName"

    .line 198
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "publisherId"

    .line 199
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;->_PublisherID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
