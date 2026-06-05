.class public abstract Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;
.super Landroid/support/v4/app/Fragment;
.source "SearchResultFragmentBase.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;
    }
.end annotation


# static fields
.field protected static final MAX_PAGE_COUNT:I = 0x14

.field protected static final SEARCH_RESULTS_TAG:Ljava/lang/String; = "SEARCH_RESULTS"

.field protected static final SEARCH_RESULT_NO_MORE_RESULTS_TAG:Ljava/lang/String; = "SEARCH_RESULT_NO_MORE_RESULTS"

.field protected static final SEARCH_RESULT_PAGE_TAG:Ljava/lang/String; = "SEARCH_RESULT_PAGE"

.field protected static final SEARCH_RESULT_QUERY_TAG:Ljava/lang/String; = "SEARCH_RESULT_QUERY"

.field public static final TAG:Ljava/lang/String;

.field private static isOfflineShowing:Z = false


# instance fields
.field protected PAGE_SIZE:I

.field protected _Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected _CurrentPage:I

.field private _EmptyProgress:Landroid/view/View;

.field private _EmptyView:Landroid/view/View;

.field private _EmptyViewText:Landroid/widget/TextView;

.field protected _FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

.field protected _ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

.field protected _InfoFooter:Landroid/view/View;

.field protected _IsAppending:Z

.field protected _IsSearching:Z

.field protected _NoMoreResultsExist:Z

.field protected _Query:Ljava/lang/String;

.field protected _ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

.field protected _SearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field protected final _SearchingLock:Ljava/lang/Object;

.field private _errorListener:Lcom/android/volley/Response$ErrorListener;

.field private _successListener:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/16 v0, 0x14

    .line 42
    iput v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->PAGE_SIZE:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchResults:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchingLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_InfoFooter:Landroid/view/View;

    .line 251
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_successListener:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;

    .line 253
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_errorListener:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->toggleProgressFooter(Z)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyProgress:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyViewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 34
    sget-boolean v0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->isOfflineShowing:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 34
    sput-boolean p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->isOfflineShowing:Z

    return p0
.end method

.method private toggleProgressFooter(Z)V
    .locals 3

    .line 218
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_InfoFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 220
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setDisplayFooter(Ljava/lang/Boolean;)V

    .line 221
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    new-instance v0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$3;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method abstract buildContents(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method abstract callSearch(Ljava/lang/String;ILmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;Lcom/android/volley/Response$ErrorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation
.end method

.method protected doSearchInternal(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 342
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Query:Ljava/lang/String;

    .line 343
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyViewText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyProgress:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 347
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 348
    iput v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_CurrentPage:I

    .line 349
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Query:Ljava/lang/String;

    iget v1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_CurrentPage:I

    invoke-virtual {p0, p1, v0, v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->performSearch(Ljava/lang/String;ZI)V

    return-void
.end method

.method abstract getEmptyText()Ljava/lang/CharSequence;
.end method

.method abstract getFooterCount()I
.end method

.method protected isSearching()Z
    .locals 2

    .line 240
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_IsSearching:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract itemSelected(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V
.end method

.method abstract onAfterDataLoaded(ZLjava/lang/String;)V
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 357
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {p1, p0, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 362
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 363
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {p1, p0, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method abstract onBeforeDataLoaded(ZLjava/lang/String;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;

    invoke-interface {p1}, Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;->getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setImageLoader(Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 150
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->buildContents(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900d3

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyView:Landroid/view/View;

    const p2, 0x7f0900d5

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyViewText:Landroid/widget/TextView;

    const p2, 0x7f0900d4

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyProgress:Landroid/view/View;

    .line 155
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyProgress:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_EmptyView:Landroid/view/View;

    invoke-virtual {p2, p3}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->setEmptyView(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 160
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setIsSearching(Z)V

    .line 163
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->toggleProgressFooter(Z)V

    .line 165
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p3}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    .line 167
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->toggleProgressFooter(Z)V

    .line 169
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    new-instance p3, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V

    invoke-virtual {p2, p3}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 204
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    new-instance p3, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$2;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$2;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p3, v0, v1}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 369
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 370
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 1

    .line 376
    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 378
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "SEARCH_RESULT_QUERY"

    .line 387
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Query:Ljava/lang/String;

    const-string v0, "SEARCH_RESULT_PAGE"

    .line 388
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_CurrentPage:I

    const-string v0, "SEARCH_RESULT_NO_MORE_RESULTS"

    .line 389
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_NoMoreResultsExist:Z

    const-string v0, "SEARCH_RESULTS"

    .line 390
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchResults:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 397
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SEARCH_RESULT_QUERY"

    .line 398
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Query:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SEARCH_RESULT_PAGE"

    .line 399
    iget v1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_CurrentPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SEARCH_RESULT_NO_MORE_RESULTS"

    .line 400
    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_NoMoreResultsExist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SEARCH_RESULTS"

    .line 401
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchResults:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected parseJSONResults(Ljava/lang/String;Lorg/json/JSONArray;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    .line 334
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->parseJSONResults(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p3, p2

    return-void
.end method

.method protected performSearch(Ljava/lang/String;ZI)V
    .locals 2

    const/4 v0, 0x1

    .line 298
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setIsSearching(Z)V

    .line 299
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setIsAppending(Z)V

    if-eqz p3, :cond_0

    .line 302
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->toggleProgressFooter(Z)V

    .line 304
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectedToNetwork()Z

    move-result p2

    if-nez p2, :cond_1

    .line 306
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_errorListener:Lcom/android/volley/Response$ErrorListener;

    new-instance p2, Lcom/android/volley/VolleyError;

    const-string p3, "device is Offline!"

    invoke-direct {p2, p3}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void

    .line 312
    :cond_1
    :try_start_0
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_successListener:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->setQuery(Ljava/lang/String;)V

    .line 313
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_successListener:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_errorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {p0, p1, p3, p2, v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->callSearch(Ljava/lang/String;ILmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 317
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f10030c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p3, 0x7f100092

    .line 319
    new-instance v1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$5;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$5;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V

    invoke-virtual {p2, p3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    .line 326
    sget-object p2, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 327
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setIsSearching(Z)V

    .line 328
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->toggleProgressFooter(Z)V

    :goto_0
    return-void
.end method

.method abstract setDisplayFooter(Ljava/lang/Boolean;)V
.end method

.method public setImageLoader(Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 2

    .line 406
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    .line 408
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    if-eqz p1, :cond_0

    .line 409
    new-instance p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicAPIRoot()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;-><init>(Ljava/lang/String;Lcom/android/volley/RequestQueue;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    :cond_0
    return-void
.end method

.method protected setIsAppending(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_IsAppending:Z

    return-void
.end method

.method protected setIsSearching(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_IsSearching:Z

    .line 235
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
