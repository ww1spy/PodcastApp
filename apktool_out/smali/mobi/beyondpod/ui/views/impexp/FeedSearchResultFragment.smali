.class public Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;
.super Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;
.source "FeedSearchResultFragment.java"


# static fields
.field protected static final CATEGORY_TAG:Ljava/lang/String; = "#CATEGORY:#"

.field static final FILTER_ALL:Ljava/lang/String; = "*"

.field static final FILTER_AUDIO:Ljava/lang/String; = "audio"

.field static final FILTER_TEXT:Ljava/lang/String; = "text"

.field static final FILTER_VIDEO:Ljava/lang/String; = "video"

.field private static final MENU_FILTER_MASTER:I = 0x64

.field private static final MENU_SHOW_ALL:I = 0x65

.field private static final MENU_SHOW_AUDIO_ONLY:I = 0x66

.field private static final MENU_SHOW_VIDEO_ONLY:I = 0x67

.field protected static final PLAIN_SEARCH_TAG:Ljava/lang/String; = "#SEARCH:#"

.field protected static final SEARCH_FILTER_TAG:Ljava/lang/String; = "SEARCH_FILTER"

.field public static final SECTION_CATEGORIES:Ljava/lang/String; = "Categories"

.field public static final SECTION_INTERESTS:Ljava/lang/String; = "Interests"

.field public static final SECTION_PUBLISHERS:Ljava/lang/String; = "Publishers"

.field public static final SECTION_RECOMMENDED:Ljava/lang/String; = "Recommended"

.field public static final SECTION_REGIONS:Ljava/lang/String; = "Regions"

.field public static final SECTION_TRENDING:Ljava/lang/String; = "Trending"


# instance fields
.field private _DisplayFilter:Z

.field protected _FilterTag:Ljava/lang/String;

.field _MediaFilterType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;-><init>()V

    const-string v0, "*"

    .line 78
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_DisplayFilter:Z

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_MediaFilterType:Ljava/lang/String;

    return-void
.end method

.method private applyFilter(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const-string p1, "*"

    .line 354
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    .line 355
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_Query:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->doSearch(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return v0

    :cond_0
    const/16 v1, 0x66

    if-ne p1, v1, :cond_1

    const-string p1, "audio"

    .line 361
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    .line 362
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_Query:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->doSearch(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return v0

    :cond_1
    const/16 v1, 0x67

    if-ne p1, v1, :cond_2

    const-string p1, "video"

    .line 368
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    .line 369
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_Query:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->doSearch(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private formatUserFeeds()Ljava/lang/String;
    .locals 6

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-static {}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getMostUsedFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 129
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/Feed;

    .line 131
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->isInCategory(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v1, v4}, Lmobi/beyondpod/rsscore/FeedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 138
    invoke-virtual {v1, v4}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 144
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 146
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_6

    const-string v4, "|"

    .line 147
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_6
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    if-eqz v3, :cond_7

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v4, 0x3e8

    if-le v2, v4, :cond_4

    .line 153
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_8

    const-string v0, "*"

    return-object v0

    .line 156
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildContents(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->setHasOptionsMenu(Z)V

    const v1, 0x7f0c0066

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0900f8

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    .line 99
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    new-instance v2, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;

    .line 100
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 101
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;-><init>(II)V

    .line 99
    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 102
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 104
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    if-eqz p2, :cond_0

    .line 108
    invoke-super {p0, p2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SEARCH_FILTER"

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0065

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_InfoFooter:Landroid/view/View;

    .line 114
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    const v2, 0x7f0c0067

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_SearchResults:Ljava/util/ArrayList;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_InfoFooter:Landroid/view/View;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;ILjava/util/List;Lmobi/beyondpod/ui/core/volley/ImageLoader;Landroid/view/View;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p1
.end method

.method protected buildFilterForEmptyText()Ljava/lang/String;
    .locals 3

    .line 272
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    const-string v1, "video"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    const-string v1, "audio"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100310

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method protected callSearch(Ljava/lang/String;ILmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    const-string v1, "Publishers"

    .line 173
    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v3, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const/4 v4, 0x2

    iget v6, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->PAGE_SIZE:I

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "Regions"

    .line 176
    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v3, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const/4 v4, 0x3

    iget v6, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->PAGE_SIZE:I

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    :cond_1
    const-string v1, "Interests"

    .line 179
    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    iget-object v3, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const/4 v4, 0x4

    iget v6, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->PAGE_SIZE:I

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    :cond_2
    const-string v1, "Categories"

    .line 182
    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    iget-object v3, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const/4 v4, 0x1

    iget v6, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->PAGE_SIZE:I

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getPublishers(IIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :cond_3
    :goto_0
    const-string v1, "#CATEGORY:#"

    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "#CATEGORY:#"

    const-string v3, ""

    .line 186
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Recommended"

    .line 188
    invoke-static {v3, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    iget-object v4, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->formatUserFeeds()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    iget v8, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->PAGE_SIZE:I

    move/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getRecommendedFeeds(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_1

    :cond_4
    const-string v3, "Trending"

    .line 190
    invoke-static {v3, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    iget-object v2, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const-string v3, ""

    iget-object v4, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    iget v6, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->PAGE_SIZE:I

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getTrendingEpisodes(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_1

    .line 193
    :cond_5
    iget-object v7, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const-string v1, "#CATEGORY:#"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    iget v11, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->PAGE_SIZE:I

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->findByPopularCategory(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_1

    .line 198
    :cond_6
    iget-object v1, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    iget-object v3, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    iget v5, v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->PAGE_SIZE:I

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->findByQuery(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_1
    return-void
.end method

.method public doSearch(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->doSearchInternal(Ljava/lang/String;)V

    return-void
.end method

.method getEmptyText()Ljava/lang/CharSequence;
    .locals 6

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_Query:Ljava/lang/String;

    const-string v4, "#CATEGORY:#"

    const-string v5, ""

    .line 266
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100313

    .line 265
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->buildFilterForEmptyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFooterCount()I
    .locals 1

    .line 283
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->getDisplayFooter()Ljava/lang/Boolean;

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
    .locals 5

    .line 244
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->TAG:Ljava/lang/String;

    const-string v2, "ERROR: Selected feed link is empty. Cannot parse URI."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 253
    sget-object v2, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Cannot parse URI from selected feed link: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error message: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 258
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getOriginatingFeed()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getOriginatingFeed()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getEpisodeUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 257
    invoke-static {v1, v0, p1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenFeedPreview(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public loadCategory(Ljava/lang/String;)V
    .locals 2

    .line 161
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Trending"

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#CATEGORY:#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->doSearch(Ljava/lang/String;)V

    return-void
.end method

.method protected onAfterDataLoaded(ZLjava/lang/String;)V
    .locals 0

    .line 222
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method onBeforeDataLoaded(ZLjava/lang/String;)V
    .locals 0

    .line 230
    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_MediaFilterType:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const/16 v0, 0x64

    .line 297
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 298
    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_DisplayFilter:Z

    if-eqz v1, :cond_0

    const v1, 0x7f10030f

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 300
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0800bc

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x6

    .line 302
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v4, 0x65

    .line 304
    invoke-interface {v0, v3, v4, v3, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x66

    const/4 v4, 0x1

    const v5, 0x7f100310

    .line 305
    invoke-interface {v0, v3, v1, v4, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x67

    const v4, 0x7f100311

    .line 306
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 308
    :cond_0
    invoke-super {p0, p1, p2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 84
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "SECTION"

    .line 86
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "SECTION"

    .line 87
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->loadCategory(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 347
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->applyFilter(I)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/16 v0, 0x64

    .line 314
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 317
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_SearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*"

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_MediaFilterType:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "#SEARCH:#"

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_MediaFilterType:Ljava/lang/String;

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 324
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v1, "audio"

    .line 326
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f100310

    .line 327
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    const-string v1, "video"

    .line 328
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f100311

    .line 329
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    const v1, 0x7f10030f

    .line 331
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 320
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 334
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SEARCH_FILTER"

    .line 217
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_FilterTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected parseJSONResults(Ljava/lang/String;Lorg/json/JSONArray;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    .line 205
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->parseJSONResults(Ljava/lang/String;Lorg/json/JSONArray;[Ljava/lang/Object;)V

    const-string p2, "#CATEGORY:#"

    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "#CATEGORY:#"

    .line 208
    aput-object p1, p3, p2

    goto :goto_0

    :cond_0
    const-string p1, "#SEARCH:#"

    .line 210
    aput-object p1, p3, p2

    :goto_0
    return-void
.end method

.method setDisplayFooter(Ljava/lang/Boolean;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->setDisplayFooter(Ljava/lang/Boolean;)V

    return-void
.end method
