.class public Lmobi/beyondpod/schedulercore/OperationBase;
.super Ljava/lang/Object;
.source "OperationBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "OperationBase"

.field static _Random:Ljava/util/Random;


# instance fields
.field protected _Description:Ljava/lang/String;

.field protected _ID:Ljava/util/UUID;

.field protected _Name:Ljava/lang/String;

.field _OnOperationCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

.field private _Owner:Lmobi/beyondpod/schedulercore/ScheduledTask;

.field protected m_IsModified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 150
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lmobi/beyondpod/schedulercore/OperationBase;->_Random:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    .line 40
    iput-object v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_Description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_ID:Ljava/util/UUID;

    const-string v0, "Unknown"

    .line 42
    iput-object v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_Name:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_Description:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_Name:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_ID:Ljava/util/UUID;

    return-void
.end method

.method public static compare(Lmobi/beyondpod/schedulercore/OperationBase;Lmobi/beyondpod/schedulercore/OperationBase;)Z
    .locals 0

    .line 132
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationBase;->description()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/OperationBase;->description()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;
    .locals 0

    return-object p0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_Description:Ljava/lang/String;

    return-object v0
.end method

.method public execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationBase;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onBPScheduledTaskStarted(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lmobi/beyondpod/schedulercore/OperationBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#=> Executing operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationBase;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_OnOperationCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

    return-void
.end method

.method protected generateRandomOffest(JJ)J
    .locals 1

    .line 153
    sget-object v0, Lmobi/beyondpod/schedulercore/OperationBase;->_Random:Ljava/util/Random;

    invoke-static {p1, p2, p3, p4, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->generateRandomNumber(JJLjava/util/Random;)J

    move-result-wide p1

    return-wide p1
.end method

.method public id()Ljava/util/UUID;
    .locals 1

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_ID:Ljava/util/UUID;

    return-object v0
.end method

.method public isConfigurable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->m_IsModified:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_Name:Ljava/lang/String;

    return-object v0
.end method

.method protected onOperationCompleted()V
    .locals 3

    .line 107
    sget-object v0, Lmobi/beyondpod/schedulercore/OperationBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*=> operation Execution completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationBase;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_OnOperationCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_OnOperationCompleted:Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;

    invoke-interface {v0}, Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;->onOperationComplete()V

    :cond_0
    return-void
.end method

.method public owner()Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 1

    .line 73
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_Owner:Lmobi/beyondpod/schedulercore/ScheduledTask;

    return-object v0
.end method

.method public serializedData()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public setIsModified(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lmobi/beyondpod/schedulercore/OperationBase;->m_IsModified:Z

    return-void
.end method

.method public setOwner(Lmobi/beyondpod/schedulercore/ScheduledTask;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/OperationBase;->_Owner:Lmobi/beyondpod/schedulercore/ScheduledTask;

    return-void
.end method

.method public startTimeBias()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationBase;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
