.class public Lmobi/beyondpod/schedulercore/ScheduledTask;
.super Ljava/lang/Object;
.source "ScheduledTask.java"


# static fields
.field public static final Default_Min_BatteryLevel:I = 0x6

.field private static TAG:Ljava/lang/String; = "ScheduledTask"


# instance fields
.field protected _Operation:Lmobi/beyondpod/schedulercore/OperationBase;

.field protected _TaskID:Ljava/lang/String;

.field public active:Z

.field public event:Lmobi/beyondpod/schedulercore/Event;

.field private m_IsModified:Z

.field private m_StorageRowID:Ljava/lang/Long;

.field public minBatteryLevelRequired:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->m_IsModified:Z

    const/4 v1, 0x6

    .line 70
    iput v1, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->minBatteryLevelRequired:I

    .line 71
    iput-boolean v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    .line 48
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->_TaskID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/schedulercore/Event;Lmobi/beyondpod/schedulercore/OperationBase;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->m_IsModified:Z

    const/4 v1, 0x6

    .line 70
    iput v1, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->minBatteryLevelRequired:I

    .line 71
    iput-boolean v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    .line 42
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    .line 43
    invoke-virtual {p0, p2}, Lmobi/beyondpod/schedulercore/ScheduledTask;->setOperation(Lmobi/beyondpod/schedulercore/OperationBase;)V

    return-void
.end method

.method public static compare(Lmobi/beyondpod/schedulercore/ScheduledTask;Lmobi/beyondpod/schedulercore/ScheduledTask;)I
    .locals 1

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    .line 147
    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 150
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 156
    :cond_3
    iget-object p0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object p0

    iget-object p1, p1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public checkIfCanExecute()Z
    .locals 7

    .line 90
    iget-boolean v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->TAG:Ljava/lang/String;

    const-string v3, " Task %s is Inactive!"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 96
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDevicePlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 101
    :cond_1
    iget v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->minBatteryLevelRequired:I

    .line 102
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->powerBatteryStrength()I

    move-result v3

    if-ge v3, v0, :cond_2

    .line 106
    sget-object v4, Lmobi/beyondpod/schedulercore/ScheduledTask;->TAG:Ljava/lang/String;

    const-string v5, " Task %s requires battery level of at least %s%%! Current battery level: %s%%! Task was not executed!"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v1

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    .line 106
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 113
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_4

    .line 115
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDeviceIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isWhiteListed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->TAG:Ljava/lang/String;

    const-string v1, "Found the device is Dozing, and we are whitelisted - executing task..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 124
    :cond_3
    sget-object v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->TAG:Ljava/lang/String;

    const-string v2, "Found the device is Dozing, but we are NOT whitelisted - rescheduling task for later"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return v2
.end method

.method public existsOnDevice()Z
    .locals 1

    .line 135
    invoke-static {p0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->hasPendingIntentForTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)Z

    move-result v0

    return v0
.end method

.method public initRowID(Ljava/lang/Long;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->m_StorageRowID:Ljava/lang/Long;

    return-void
.end method

.method public isModified()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->m_IsModified:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/Event;->isModified()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/OperationBase;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public operation()Lmobi/beyondpod/schedulercore/OperationBase;
    .locals 1

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->_Operation:Lmobi/beyondpod/schedulercore/OperationBase;

    return-object v0
.end method

.method public rowID()Ljava/lang/Long;
    .locals 1

    .line 62
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->m_StorageRowID:Ljava/lang/Long;

    return-object v0
.end method

.method public setIsModified(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->m_IsModified:Z

    return-void
.end method

.method public setOperation(Lmobi/beyondpod/schedulercore/OperationBase;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->_Operation:Lmobi/beyondpod/schedulercore/OperationBase;

    .line 82
    invoke-virtual {p1, p0}, Lmobi/beyondpod/schedulercore/OperationBase;->setOwner(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    return-void
.end method

.method public taskID()Ljava/lang/String;
    .locals 3

    .line 53
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->_TaskID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BPT#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->_TaskID:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->_TaskID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s, %s, %s (%s)"

    const/4 v1, 0x4

    .line 141
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, "Inactive!"

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->taskID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
