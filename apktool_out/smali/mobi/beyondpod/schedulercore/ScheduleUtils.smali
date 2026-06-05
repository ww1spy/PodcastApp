.class public Lmobi/beyondpod/schedulercore/ScheduleUtils;
.super Ljava/lang/Object;
.source "ScheduleUtils.java"


# static fields
.field private static _startTimeSorter:Lmobi/beyondpod/schedulercore/TaskStartTimeSorter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lmobi/beyondpod/schedulercore/TaskStartTimeSorter;

    invoke-direct {v0}, Lmobi/beyondpod/schedulercore/TaskStartTimeSorter;-><init>()V

    sput-object v0, Lmobi/beyondpod/schedulercore/ScheduleUtils;->_startTimeSorter:Lmobi/beyondpod/schedulercore/TaskStartTimeSorter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEarliestTask(Ljava/util/ArrayList;)Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/schedulercore/ScheduledTask;",
            ">;)",
            "Lmobi/beyondpod/schedulercore/ScheduledTask;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduleUtils;->_startTimeSorter:Lmobi/beyondpod/schedulercore/TaskStartTimeSorter;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/schedulercore/ScheduledTask;

    return-object p0
.end method

.method public static getScheduledTaskForCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 4

    .line 32
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->tasks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 34
    invoke-virtual {v1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v2

    .line 36
    instance-of v3, v2, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSingleSchedule()Z
    .locals 3

    .line 59
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v0}, Lmobi/beyondpod/schedulercore/ScheduleUtils;->getScheduledTaskForCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 60
    iget-boolean v0, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->activeTaskCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method
