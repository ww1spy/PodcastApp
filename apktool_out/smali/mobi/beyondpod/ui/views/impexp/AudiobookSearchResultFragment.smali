.class public Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;
.super Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;
.source "AudiobookSearchResultFragment.java"


# static fields
.field static final FILTER_ALL:Ljava/lang/String; = "*"

.field protected static final GENRE_FILTER_TAG:Ljava/lang/String; = "GENRE_FILTER"

.field protected static final LANGUAGE_FILTER_TAG:Ljava/lang/String; = "LANGUAGE_FILTER"

.field private static final TAG:Ljava/lang/String; = "AudiobookSearchResultFragment"


# instance fields
.field protected _FilterSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field protected _GenreFilter:Ljava/lang/String;

.field private _GenreSpinner:Landroid/widget/Spinner;

.field _Header:Landroid/view/View;

.field protected _LanguageFilter:Ljava/lang/String;

.field private _LanguageSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;-><init>()V

    const-string v0, "*"

    .line 53
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    const-string v0, "*"

    .line 54
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    .line 56
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;-><init>(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_FilterSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;)Landroid/widget/Spinner;
    .locals 0

    .line 42
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method private refreshFilter()V
    .locals 6

    .line 160
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 168
    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_1

    .line 170
    aget-object v4, v0, v3

    iget-object v5, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    move v0, v2

    .line 177
    :goto_2
    array-length v4, v1

    if-eq v0, v4, :cond_3

    .line 179
    aget-object v4, v1, v0

    iget-object v5, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 186
    :goto_3
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 187
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 189
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_FilterSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 190
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_FilterSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public DoSearch(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Header:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Query:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->doSearchInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected buildContents(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v0, 0x7f0c0026

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09004e

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Header:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Header:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Header:Landroid/view/View;

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreSpinner:Landroid/widget/Spinner;

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Header:Landroid/view/View;

    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageSpinner:Landroid/widget/Spinner;

    .line 111
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x1090008

    const v3, 0x7f030007

    invoke-static {v0, v3, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v3, 0x1090009

    .line 113
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 114
    iget-object v4, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v4, 0x7f030008

    invoke-static {v0, v4, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 119
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0900f8

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    .line 122
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    new-instance v2, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;-><init>(II)V

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 123
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 124
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 125
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    invoke-virtual {v2, v0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    if-eqz p2, :cond_1

    .line 129
    invoke-super {p0, p2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "GENRE_FILTER"

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    const-string v0, "LANGUAGE_FILTER"

    .line 131
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    .line 132
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Header:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Query:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->refreshFilter()V

    .line 137
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0065

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    invoke-virtual {p2, v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_InfoFooter:Landroid/view/View;

    .line 139
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;

    const v2, 0x7f0c0025

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_SearchResults:Ljava/util/ArrayList;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_InfoFooter:Landroid/view/View;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;ILjava/util/List;Lmobi/beyondpod/ui/core/volley/ImageLoader;Landroid/view/View;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p1
.end method

.method protected callSearch(Ljava/lang/String;ILmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    move-object v0, p0

    .line 150
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v2, v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    iget v5, v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->PAGE_SIZE:I

    move-object v3, p1

    move v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->findByAudioBookQuery(Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v6, v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    iget-object v7, v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    iget-object v8, v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    iget v10, v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->PAGE_SIZE:I

    move v9, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v6 .. v12}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->findByAudioBookCategory(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_0
    return-void
.end method

.method getEmptyText()Ljava/lang/CharSequence;
    .locals 6

    .line 232
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Query:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f100313

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Query:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFooterCount()I
    .locals 1

    .line 241
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->getDisplayFooter()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method itemSelected(Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V
    .locals 3

    .line 224
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getOriginatingFeed()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getOriginatingFeed()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getEpisodeUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 224
    invoke-static {v0, v1, p1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenFeedPreview(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected onAfterDataLoaded(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method onBeforeDataLoaded(ZLjava/lang/String;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Header:Landroid/view/View;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Query:Ljava/lang/String;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 91
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_0

    const-string p2, ""

    .line 95
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->DoSearch(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 196
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "GENRE_FILTER"

    .line 197
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LANGUAGE_FILTER"

    .line 198
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setDisplayFooter(Ljava/lang/Boolean;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;->displayFooter(Ljava/lang/Boolean;)V

    return-void
.end method
