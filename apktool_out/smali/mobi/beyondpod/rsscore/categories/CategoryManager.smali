.class public final Lmobi/beyondpod/rsscore/categories/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# static fields
.field public static AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory; = null

.field public static CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory; = null

.field public static CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory; = null

.field public static final MAX_FEED_CATEGORIES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CategoryManager"

.field public static Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory; = null

.field private static final m_Categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/categories/FeedCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static m_IsModified:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    .line 38
    new-instance v0, Lmobi/beyondpod/rsscore/categories/AllFeedsCategory;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/AllFeedsCategory;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 39
    new-instance v0, Lmobi/beyondpod/rsscore/categories/CategoryNone;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/CategoryNone;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 40
    new-instance v0, Lmobi/beyondpod/rsscore/categories/NullCategory;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/NullCategory;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 41
    new-instance v0, Lmobi/beyondpod/rsscore/categories/HomeCategory;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/HomeCategory;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 48
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCategory(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->assertCategoryValueDoesNotExist(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->addCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void
.end method

.method public static addCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    .line 145
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    .line 148
    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->setIsModified(Z)V

    const/16 p0, 0xc

    .line 149
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyCategoryEvent(I)V

    return-void
.end method

.method private static assertCategoryValueDoesNotExist(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, v1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already exists!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static clear()V
    .locals 2

    .line 257
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "CategoryManager"

    const-string v1, "Categories unloaded"

    .line 258
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 4

    .line 118
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setActiveFeedCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 124
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 126
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setPrimary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 129
    :cond_2
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 130
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setSecondary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    .line 133
    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->setIsModified(Z)V

    const/16 p0, 0xd

    .line 134
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyCategoryEvent(I)V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)V
    .locals 5

    const-string v0, "\\|"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 238
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 240
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 242
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 243
    sget-object v4, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-static {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->deserialize(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCategoriesLoaded(I)V

    .line 248
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 249
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 251
    :cond_2
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 252
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;
    .locals 2

    .line 69
    new-instance v0, Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;-><init>()V

    .line 70
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->addAll(Ljava/util/Collection;)Z

    .line 71
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->remove(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCategoriesForFilter()Lmobi/beyondpod/rsscore/categories/CategoryList;
    .locals 2

    .line 54
    new-instance v0, Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;-><init>()V

    .line 55
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getCategoriesForFilterNoUncategorized()Lmobi/beyondpod/rsscore/categories/CategoryList;
    .locals 2

    .line 61
    new-instance v0, Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;-><init>()V

    .line 62
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->addAll(Ljava/util/Collection;)Z

    .line 63
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCategoriesUserDefined()Lmobi/beyondpod/rsscore/categories/CategoryList;
    .locals 2

    .line 78
    new-instance v0, Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;-><init>()V

    .line 79
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->addAll(Ljava/util/Collection;)Z

    .line 80
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->remove(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->remove(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 4

    .line 88
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p0

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 93
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p0

    .line 96
    :cond_1
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p0

    .line 99
    :cond_2
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 103
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    monitor-exit v0

    return-object v2

    .line 106
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p0

    :catchall_0
    move-exception p0

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static hasCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z
    .locals 4

    .line 297
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 303
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    move v0, v2

    .line 304
    :goto_0
    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 305
    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static hasUserCategories()Z
    .locals 2

    .line 113
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInCategory(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 223
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->isOfCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isModified()Z
    .locals 1

    .line 263
    sget-boolean v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_IsModified:Z

    return v0
.end method

.method public static moveCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    .line 273
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 274
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    .line 277
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->moveCategoryByPos(II)V

    :cond_0
    return-void
.end method

.method private static moveCategoryByPos(II)V
    .locals 1

    .line 282
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 285
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 287
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v0, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    .line 290
    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->setIsModified(Z)V

    const/16 p0, 0xe

    .line 291
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyCategoryEvent(I)V

    :cond_0
    return-void
.end method

.method public static renameCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->assertCategoryValueDoesNotExist(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 158
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->renameTo(Ljava/lang/String;)V

    .line 161
    invoke-static {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->onCategoryRenamed(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 164
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 166
    invoke-static {v1, p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->isInCategory(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->touch()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 171
    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->setActiveFeedCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    :cond_2
    const/4 p0, 0x1

    .line 173
    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->setIsModified(Z)V

    const/16 p0, 0xe

    .line 174
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyCategoryEvent(I)V

    return-void
.end method

.method public static serialize()Ljava/lang/String;
    .locals 4

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :try_start_1
    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_Categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 196
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->serializedData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "CategoryManager"

    const-string v3, "Unable to serialize categories!"

    .line 203
    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCategoryColor(Lmobi/beyondpod/rsscore/categories/FeedCategory;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->setColor(I)V

    const/4 p0, 0x1

    .line 183
    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->setIsModified(Z)V

    const/16 p0, 0xe

    .line 184
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyCategoryEvent(I)V

    return-void
.end method

.method public static setIsModified(Z)V
    .locals 0

    .line 268
    sput-boolean p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->m_IsModified:Z

    return-void
.end method
