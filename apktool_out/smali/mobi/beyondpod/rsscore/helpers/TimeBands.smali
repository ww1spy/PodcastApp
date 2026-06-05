.class public Lmobi/beyondpod/rsscore/helpers/TimeBands;
.super Ljava/lang/Object;
.source "TimeBands.java"


# static fields
.field public static final DATE_BAND_LAST_MONTH:I = 0x5

.field public static final DATE_BAND_LAST_WEEK:I = 0x4

.field public static final DATE_BAND_OLDER:I = 0x6

.field public static final DATE_BAND_THIS_MONTH:I = 0x2

.field public static final DATE_BAND_THIS_WEEK:I = 0x1

.field public static final DATE_BAND_THIS_YEAR:I = 0x3

.field public static final DATE_BAND_TODAY:I


# instance fields
.field LastMonthStart:Ljava/util/Calendar;

.field LastWeekStart:Ljava/util/Calendar;

.field ThisMonthStart:Ljava/util/Calendar;

.field ThisWeekStart:Ljava/util/Calendar;

.field ThisYearStart:Ljava/util/Calendar;

.field TodayStart:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/rsscore/helpers/TimeBands;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 12

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    .line 30
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x5

    .line 31
    invoke-virtual {p1, v11}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->TodayStart:Ljava/util/Calendar;

    .line 34
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->TodayStart:Ljava/util/Calendar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, v8

    move v3, v10

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisWeekStart:Ljava/util/Calendar;

    .line 37
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisWeekStart:Ljava/util/Calendar;

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 38
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisWeekStart:Ljava/util/Calendar;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisWeekStart:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->LastWeekStart:Ljava/util/Calendar;

    .line 41
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->LastWeekStart:Ljava/util/Calendar;

    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisWeekStart:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisWeekStart:Ljava/util/Calendar;

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisWeekStart:Ljava/util/Calendar;

    .line 42
    invoke-virtual {p1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 41
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 43
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->LastWeekStart:Ljava/util/Calendar;

    const/4 v0, -0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisMonthStart:Ljava/util/Calendar;

    .line 46
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisMonthStart:Ljava/util/Calendar;

    const/4 v4, 0x1

    move v2, v8

    move v3, v10

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->LastMonthStart:Ljava/util/Calendar;

    .line 49
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->LastMonthStart:Ljava/util/Calendar;

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 50
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->LastMonthStart:Ljava/util/Calendar;

    invoke-virtual {p1, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisYearStart:Ljava/util/Calendar;

    .line 53
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisYearStart:Ljava/util/Calendar;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    return-void
.end method


# virtual methods
.method public getDateBand(Ljava/util/Calendar;)I
    .locals 4

    .line 58
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 60
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->TodayStart:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisWeekStart:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 64
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->LastWeekStart:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    const/4 p1, 0x4

    return p1

    .line 66
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisMonthStart:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3

    const/4 p1, 0x2

    return p1

    .line 68
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->LastMonthStart:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    const/4 p1, 0x5

    return p1

    .line 70
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeBands;->ThisYearStart:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_5

    const/4 p1, 0x3

    return p1

    :cond_5
    const/4 p1, 0x6

    return p1
.end method
