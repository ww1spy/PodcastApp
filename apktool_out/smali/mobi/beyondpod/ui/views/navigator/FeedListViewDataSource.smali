.class Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;
.super Ljava/lang/Object;
.source "FeedListViewDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;
    }
.end annotation


# instance fields
.field private _ExpandedCategories:Lmobi/beyondpod/ui/views/navigator/CategoryState;

.field private _FeedCount:I

.field private _HiddenFeedCount:I

.field private _Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lmobi/beyondpod/ui/views/navigator/CategoryState;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_ExpandedCategories:Lmobi/beyondpod/ui/views/navigator/CategoryState;

    .line 67
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_ExpandedCategories:Lmobi/beyondpod/ui/views/navigator/CategoryState;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->initialize()V

    return-void
.end method

.method private addFeedToCategoryGroup(Ljava/util/HashMap;Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lmobi/beyondpod/rsscore/categories/FeedCategory;",
            "Lmobi/beyondpod/rsscore/FeedList;",
            ">;",
            "Lmobi/beyondpod/rsscore/categories/FeedCategory;",
            "Lmobi/beyondpod/rsscore/Feed;",
            ")V"
        }
    .end annotation

    .line 210
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/FeedList;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 215
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    invoke-virtual {v0, p3}, Lmobi/beyondpod/rsscore/FeedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 219
    invoke-virtual {v0, p3}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 59
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_FeedCount:I

    .line 61
    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_HiddenFeedCount:I

    return-void
.end method

.method public expandCollapseCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 261
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->isCategoryExpanded(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    iget-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_ExpandedCategories:Lmobi/beyondpod/ui/views/navigator/CategoryState;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->expand(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    goto :goto_0

    .line 268
    :cond_2
    iget-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_ExpandedCategories:Lmobi/beyondpod/ui/views/navigator/CategoryState;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->collapse(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    :goto_0
    return-void
.end method

.method public expandFirstCategory()V
    .locals 1

    .line 274
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_ExpandedCategories:Lmobi/beyondpod/ui/views/navigator/CategoryState;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->expandFirstCategory()V

    return-void
.end method

.method public feedCount()I
    .locals 1

    .line 236
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_FeedCount:I

    return v0
.end method

.method filterAndGroupByFirstCategory(Lmobi/beyondpod/rsscore/Feed;Z)V
    .locals 9

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 125
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p0, v1, v2}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->expandCollapseCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;Z)V

    .line 127
    :cond_0
    new-instance v1, Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;-><init>()V

    .line 130
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->canNavigateUp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v3}, Lmobi/beyondpod/rsscore/categories/CategoryList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForFilter()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmobi/beyondpod/rsscore/categories/CategoryList;->addAll(Ljava/util/Collection;)Z

    .line 140
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/Feed;

    .line 142
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v5

    .line 143
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v6

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v6

    .line 145
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v5, v7}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v6, v7}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    sget-object v5, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-direct {p0, v0, v5, v4}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->addFeedToCategoryGroup(Ljava/util/HashMap;Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_2

    .line 151
    :cond_2
    sget-object v7, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v5, v7}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 152
    invoke-direct {p0, v0, v5, v4}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->addFeedToCategoryGroup(Ljava/util/HashMap;Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/Feed;)V

    .line 154
    :cond_3
    sget-object v5, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v6, v5}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 155
    invoke-direct {p0, v0, v6, v4}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->addFeedToCategoryGroup(Ljava/util/HashMap;Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/Feed;)V

    .line 158
    :cond_4
    :goto_2
    sget-object v5, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-direct {p0, v0, v5, v4}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->addFeedToCategoryGroup(Ljava/util/HashMap;Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_1

    .line 162
    :cond_5
    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 163
    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v3}, Lmobi/beyondpod/rsscore/categories/CategoryList;->remove(Ljava/lang/Object;)Z

    .line 165
    :cond_6
    new-instance v3, Lmobi/beyondpod/rsscore/FeedSorter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getFeedsSortOrder()I

    move-result v4

    invoke-direct {v3, v4}, Lmobi/beyondpod/rsscore/FeedSorter;-><init>(I)V

    .line 167
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 170
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->canNavigateUp()Z

    move-result v6

    if-nez v6, :cond_8

    .line 172
    iget-object v6, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    new-instance v7, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    invoke-direct {v7, v4, v5}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;-><init>(Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v6, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_ExpandedCategories:Lmobi/beyondpod/ui/views/navigator/CategoryState;

    invoke-virtual {v6, v4}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->isExpanded(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 178
    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/beyondpod/rsscore/FeedList;

    if-nez v6, :cond_9

    goto :goto_3

    .line 182
    :cond_9
    invoke-static {v6, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/FeedList;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/beyondpod/rsscore/Feed;

    if-eqz p2, :cond_b

    .line 186
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->mayHaveUnreadItems()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_5

    .line 193
    :cond_a
    iget v6, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_HiddenFeedCount:I

    add-int/2addr v6, v2

    iput v6, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_HiddenFeedCount:I

    goto :goto_4

    .line 188
    :cond_b
    :goto_5
    iget-object v7, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    new-instance v8, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    invoke-direct {v8, v5, v6}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;-><init>(Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget v6, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_FeedCount:I

    add-int/2addr v6, v2

    iput v6, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_FeedCount:I

    goto :goto_4

    .line 203
    :cond_c
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->canNavigateUp()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 204
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    const/4 p2, 0x0

    new-instance v0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getGoUpPlaceholder()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;-><init>(Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public getAtPosition(I)Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 73
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCategoryIndex(Lmobi/beyondpod/rsscore/categories/FeedCategory;)I
    .locals 4

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    .line 101
    iget-object v3, v2, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getFeedIndex(Lmobi/beyondpod/rsscore/Feed;)I
    .locals 4

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    .line 88
    iget-object v3, v2, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getFeeds()Lmobi/beyondpod/rsscore/FeedList;
    .locals 4

    .line 224
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 225
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    .line 227
    iget-object v3, v2, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v3, :cond_0

    .line 228
    iget-object v2, v2, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasHiddenReadFeeds()Z
    .locals 1

    .line 246
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_HiddenFeedCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadFeeds()Z
    .locals 3

    .line 111
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    .line 113
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->mayHaveUnreadItems()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hiddenFeedCount()I
    .locals 1

    .line 241
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_HiddenFeedCount:I

    return v0
.end method

.method public isCategoryExpanded(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_ExpandedCategories:Lmobi/beyondpod/ui/views/navigator/CategoryState;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->isExpanded(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 80
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
