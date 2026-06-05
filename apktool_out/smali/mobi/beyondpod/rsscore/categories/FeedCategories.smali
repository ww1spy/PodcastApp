.class public Lmobi/beyondpod/rsscore/categories/FeedCategories;
.super Ljava/lang/Object;
.source "FeedCategories.java"


# instance fields
.field private m_Modified:Z

.field private m_Primary:Lmobi/beyondpod/rsscore/categories/FeedCategory;

.field private m_Secondary:Lmobi/beyondpod/rsscore/categories/FeedCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    iput-object v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Primary:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 27
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    iput-object v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Secondary:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Modified:Z

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategories;
    .locals 3

    .line 80
    new-instance v0, Lmobi/beyondpod/rsscore/categories/FeedCategories;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;-><init>()V

    .line 81
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\|"

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 86
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 88
    aget-object v1, p0, v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->loadCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Primary:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    :cond_1
    const/4 v1, 0x1

    .line 91
    array-length v2, p0

    if-le v2, v1, :cond_2

    .line 93
    aget-object p0, p0, v1

    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->loadCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p0

    iput-object p0, v0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Secondary:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    :cond_2
    return-object v0
.end method

.method private static loadCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 1

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p0

    .line 105
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne p0, v0, :cond_0

    .line 106
    sget-object p0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getIsModified()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Modified:Z

    return v0
.end method

.method public getIsUnassigned()Z
    .locals 2

    .line 32
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 1

    .line 37
    iget-object v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Primary:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object v0
.end method

.method public getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 1

    .line 47
    iget-object v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Secondary:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object v0
.end method

.method public isOfCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z
    .locals 3

    .line 67
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne p1, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    if-ne v0, p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIsModified(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Modified:Z

    return-void
.end method

.method public setPrimary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Primary:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Modified:Z

    return-void
.end method

.method public setSecondary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Secondary:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategories;->m_Modified:Z

    return-void
.end method
