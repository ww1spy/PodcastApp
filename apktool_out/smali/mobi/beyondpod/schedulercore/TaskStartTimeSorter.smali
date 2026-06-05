.class public Lmobi/beyondpod/schedulercore/TaskStartTimeSorter;
.super Ljava/lang/Object;
.source "TaskStartTimeSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmobi/beyondpod/schedulercore/ScheduledTask;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lmobi/beyondpod/schedulercore/ScheduledTask;

    check-cast p2, Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/schedulercore/TaskStartTimeSorter;->compare(Lmobi/beyondpod/schedulercore/ScheduledTask;Lmobi/beyondpod/schedulercore/ScheduledTask;)I

    move-result p1

    return p1
.end method

.method public compare(Lmobi/beyondpod/schedulercore/ScheduledTask;Lmobi/beyondpod/schedulercore/ScheduledTask;)I
    .locals 1

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 36
    :cond_0
    invoke-static {p1, p2}, Lmobi/beyondpod/schedulercore/ScheduledTask;->compare(Lmobi/beyondpod/schedulercore/ScheduledTask;Lmobi/beyondpod/schedulercore/ScheduledTask;)I

    move-result p1

    return p1
.end method
