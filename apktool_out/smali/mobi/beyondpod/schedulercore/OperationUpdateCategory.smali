.class public Lmobi/beyondpod/schedulercore/OperationUpdateCategory;
.super Lmobi/beyondpod/schedulercore/OperationBase;
.source "OperationUpdateCategory.java"


# static fields
.field public static final OperationID:Ljava/util/UUID;

.field private static TAG:Ljava/lang/String; = "OperationUpdateCategory"


# instance fields
.field private _CategoryToUpdate:Ljava/lang/String;

.field _OnUpdateAndDownloadHandler:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ABC76FEC-0C02-4314-B8C4-4FEDE4C83C80"

    .line 41
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->OperationID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const-string v0, "BeyondPod Update Category"

    const-string v1, "BeyondPod Update Category"

    .line 46
    sget-object v2, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->OperationID:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/schedulercore/OperationBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    const-string v0, "Favorites"

    .line 42
    iput-object v0, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->_CategoryToUpdate:Ljava/lang/String;

    .line 100
    new-instance v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory$1;-><init>(Lmobi/beyondpod/schedulercore/OperationUpdateCategory;)V

    iput-object v0, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->_OnUpdateAndDownloadHandler:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;
    .locals 1

    .line 120
    new-instance v0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-direct {v0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;-><init>()V

    .line 121
    invoke-virtual {v0, p1}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->setCategoryToUpdate(Ljava/lang/String;)V

    return-object v0
.end method

.method public execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V
    .locals 6

    .line 58
    invoke-super {p0, p1}, Lmobi/beyondpod/schedulercore/OperationBase;->execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V

    .line 60
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result p1

    if-nez p1, :cond_4

    .line 62
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    .line 64
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne p1, v0, :cond_0

    .line 66
    sget-object p1, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist! Nothing to do!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->onOperationCompleted()V

    return-void

    .line 71
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 72
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 74
    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->isInCategory(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 80
    sget-object p1, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no feeds! Nothing to do!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->onOperationCompleted()V

    return-void

    .line 85
    :cond_3
    sget-object v1, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->TAG:Ljava/lang/String;

    const-string v2, "Starting the update of %s feeds in category %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->_OnUpdateAndDownloadHandler:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

    const-class v2, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {p1, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 90
    invoke-static {v0, v4}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdUpdateFeeds(Lmobi/beyondpod/rsscore/FeedList;Z)V

    goto :goto_1

    .line 95
    :cond_4
    sget-object p1, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->TAG:Ljava/lang/String;

    const-string v0, "Another update is already in progress! Skipping update!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->onOperationCompleted()V

    :goto_1
    return-void
.end method

.method public getCategoryToUpdate()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->_CategoryToUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializedData()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCategoryToUpdate(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->_CategoryToUpdate:Ljava/lang/String;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->m_IsModified:Z

    return-void
.end method

.method public startTimeBias()J
    .locals 4

    .line 147
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    const-wide/16 v2, 0x7530

    .line 148
    invoke-virtual {p0, v0, v1, v2, v3}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->generateRandomOffest(JJ)J

    move-result-wide v0

    return-wide v0

    .line 149
    :cond_0
    invoke-super {p0}, Lmobi/beyondpod/schedulercore/OperationBase;->startTimeBias()J

    move-result-wide v0

    return-wide v0
.end method
