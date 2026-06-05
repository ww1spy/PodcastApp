.class public Lmobi/beyondpod/schedulercore/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private _IsModified:Z

.field private _RecurrenceInterval:I

.field private _RecurrencePeriod:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

.field private _StartTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILmobi/beyondpod/rsscore/helpers/TimeSpan;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lmobi/beyondpod/schedulercore/Event;->_RecurrenceInterval:I

    .line 39
    invoke-virtual {p0, p2}, Lmobi/beyondpod/schedulercore/Event;->setRecurrenceInterval(I)V

    .line 40
    invoke-virtual {p0, p3}, Lmobi/beyondpod/schedulercore/Event;->setRecurrencePeriod(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    .line 41
    invoke-virtual {p0, p1}, Lmobi/beyondpod/schedulercore/Event;->setUnadjustedStartTime(Ljava/util/Date;)V

    return-void
.end method

.method private nextStartTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 10

    .line 51
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->getUnadjustedStartTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v0

    .line 56
    :cond_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x6

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 61
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->recurrence()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v4

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalSeconds()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 65
    invoke-virtual {v4, v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->addTo(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 73
    iget-object v3, p0, Lmobi/beyondpod/schedulercore/Event;->_StartTime:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0xb

    .line 74
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 76
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private unadjustedStartTimeFor(Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/Event;->_StartTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 102
    iget-object p1, p0, Lmobi/beyondpod/schedulercore/Event;->_StartTime:Ljava/util/Date;

    return-object p1

    .line 104
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lmobi/beyondpod/schedulercore/Event;->_StartTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 109
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    .line 110
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 111
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    const/4 v0, 0x0

    .line 112
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 113
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 115
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/schedulercore/Event;->_StartTime:Ljava/util/Date;

    .line 117
    iget-object p1, p0, Lmobi/beyondpod/schedulercore/Event;->_StartTime:Ljava/util/Date;

    return-object p1
.end method


# virtual methods
.method public getRecurrenceInterval()I
    .locals 1

    .line 187
    iget v0, p0, Lmobi/beyondpod/schedulercore/Event;->_RecurrenceInterval:I

    return v0
.end method

.method public getRecurrencePeriod()Lmobi/beyondpod/rsscore/helpers/TimeSpan;
    .locals 1

    .line 198
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/Event;->_RecurrencePeriod:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    return-object v0
.end method

.method public getUnadjustedStartTime()Ljava/util/Date;
    .locals 1

    .line 96
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/Event;->_StartTime:Ljava/util/Date;

    return-object v0
.end method

.method public isModified()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lmobi/beyondpod/schedulercore/Event;->_IsModified:Z

    return v0
.end method

.method public occursInTheFuture()Z
    .locals 2

    .line 145
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public overlapsWith(Lmobi/beyondpod/schedulercore/Event;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 165
    new-instance p1, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    invoke-direct {p1, v1, v2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    .line 166
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMinutes()D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public recurrence()Lmobi/beyondpod/rsscore/helpers/TimeSpan;
    .locals 5

    .line 88
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->getRecurrencePeriod()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v1

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->getRecurrenceInterval()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    return-object v0
.end method

.method public setIsModified(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lmobi/beyondpod/schedulercore/Event;->_IsModified:Z

    return-void
.end method

.method public setRecurrenceInterval(I)V
    .locals 0

    .line 181
    iput p1, p0, Lmobi/beyondpod/schedulercore/Event;->_RecurrenceInterval:I

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lmobi/beyondpod/schedulercore/Event;->_IsModified:Z

    return-void
.end method

.method public setRecurrencePeriod(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/Event;->_RecurrencePeriod:Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lmobi/beyondpod/schedulercore/Event;->_IsModified:Z

    return-void
.end method

.method public setUnadjustedStartTime(Ljava/util/Date;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/Event;->_StartTime:Ljava/util/Date;

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 129
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xd

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 132
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 134
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/schedulercore/Event;->_StartTime:Ljava/util/Date;

    :goto_0
    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lmobi/beyondpod/schedulercore/Event;->_IsModified:Z

    return-void
.end method

.method public startTime()Ljava/util/Date;
    .locals 1

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lmobi/beyondpod/schedulercore/Event;->nextStartTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 152
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Start: %s and repeat every %d %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->getUnadjustedStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toShortString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "[Not Set]"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 154
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->getRecurrenceInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 155
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->getRecurrencePeriod()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalHours()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->getRecurrencePeriod()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalMinutes()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " minutes"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/Event;->getRecurrencePeriod()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalHours()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " hours"

    goto :goto_1

    :goto_2
    aput-object v4, v2, v3

    .line 152
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
