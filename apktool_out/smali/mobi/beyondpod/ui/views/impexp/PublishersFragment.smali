.class public Lmobi/beyondpod/ui/views/impexp/PublishersFragment;
.super Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;
.source "PublishersFragment.java"


# static fields
.field protected static final SEARCH_RESULT_ADAPTER_FORMAT_TAG:Ljava/lang/String; = "SEARCH_RESULT_ADAPTER_FORMAT_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildContents(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/16 v0, 0x50

    .line 55
    iput v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->PAGE_SIZE:I

    .line 57
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 58
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const v2, 0x7f0c00b9

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0901e4

    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    .line 63
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    new-instance v3, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;

    invoke-direct {v3, v0, v1}, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;-><init>(II)V

    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 65
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setOrientation(I)V

    .line 67
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 69
    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_CATEGORIES:I

    if-eqz p2, :cond_0

    .line 73
    invoke-super {p0, p2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SEARCH_RESULT_ADAPTER_FORMAT_TYPE"

    .line 74
    sget v1, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_CATEGORIES:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 77
    :cond_0
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_SearchResults:Ljava/util/ArrayList;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-direct {p2, p0, v1, v2, v0}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;Ljava/util/List;Lmobi/beyondpod/ui/core/volley/ImageLoader;I)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p1
.end method

.method protected callSearch(Ljava/lang/String;ILmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    const-string v0, "Publishers"

    .line 85
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_PUBLISHERS:I

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->setResultFormat(I)V

    .line 88
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const/4 v2, 0x2

    iget v4, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->PAGE_SIZE:I

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "Regions"

    .line 90
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_REGIONS:I

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->setResultFormat(I)V

    .line 93
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const/4 v2, 0x3

    iget v4, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->PAGE_SIZE:I

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "Categories"

    .line 95
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_CATEGORIES:I

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->setResultFormat(I)V

    .line 98
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const/4 v2, 0x1

    iget v4, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->PAGE_SIZE:I

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    :cond_2
    const-string v0, "Interests"

    .line 100
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 102
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    sget v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->RESULT_FORMAT_INTERESTS:I

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->setResultFormat(I)V

    .line 103
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const/4 v2, 0x4

    iget v4, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->PAGE_SIZE:I

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->doSearchInternal(Ljava/lang/String;)V

    return-void
.end method

.method getEmptyText()Ljava/lang/CharSequence;
    .locals 4

    .line 143
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_Query:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100313

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFooterCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method itemSelected(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V
    .locals 3

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/impexp/PublisherResultsView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "publisherId"

    .line 134
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "publisherName"

    .line 135
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onAfterDataLoaded(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method onBeforeDataLoaded(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "SECTION"

    .line 47
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "SECTION"

    .line 48
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->doSearch(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SEARCH_RESULT_ADAPTER_FORMAT_TYPE"

    .line 110
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->getResultFormat()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method setDisplayFooter(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method
