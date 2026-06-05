.class public Lmobi/beyondpod/ui/views/navigator/CategoryState;
.super Ljava/lang/Object;
.source "CategoryState.java"


# static fields
.field public static final ALL_FEEDS_TAG:Ljava/lang/String; = "#!ALL#"

.field private static final _List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/categories/FeedCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _SaveCategoriesRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lmobi/beyondpod/ui/views/navigator/CategoryState$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/navigator/CategoryState$1;-><init>(Lmobi/beyondpod/ui/views/navigator/CategoryState;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_SaveCategoriesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/navigator/CategoryState;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->saveCategoriesInternal()V

    return-void
.end method

.method private loadCategories()V
    .locals 5

    .line 96
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getExpandedCategories()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "\\|"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    sget-object v1, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 104
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 106
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "#!ALL#"

    .line 110
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    goto :goto_1

    .line 113
    :cond_1
    invoke-static {v3}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    .line 115
    :goto_1
    sget-object v4, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v4, v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 116
    sget-object v4, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private saveAsync()V
    .locals 4

    .line 67
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_SaveCategoriesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_SaveCategoriesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveCategoriesInternal()V
    .locals 5

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    sget-object v1, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v2, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 86
    sget-object v4, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v4, v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "#!ALL#"

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 89
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setExpandedCategories(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 89
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public collapse(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    .line 73
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->saveAsync()V

    return-void
.end method

.method public expand(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    .line 56
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->saveAsync()V

    return-void
.end method

.method public expandFirstCategory()V
    .locals 2

    .line 46
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->expand(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForFilterNoUncategorized()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->expand(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->loadCategories()V

    .line 35
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 38
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForFilterNoUncategorized()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/CategoryState;->expand(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    :cond_1
    return-void
.end method

.method public isExpanded(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z
    .locals 1

    .line 62
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/CategoryState;->_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
