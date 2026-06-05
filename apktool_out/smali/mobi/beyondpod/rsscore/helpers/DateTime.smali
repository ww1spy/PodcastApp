.class public Lmobi/beyondpod/rsscore/helpers/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# static fields
.field public static HOURMINAMPMFORMAT:Ljava/text/SimpleDateFormat;

.field public static HOURMINSECFORMAT:Ljava/text/SimpleDateFormat;

.field public static MONTHDAYFORMAT:Ljava/text/SimpleDateFormat;

.field public static final MaxValue:Ljava/util/Date;

.field public static RFC822DATEFORMAT:Ljava/text/SimpleDateFormat;

.field public static RFC822DATEFORMATUTC:Ljava/text/SimpleDateFormat;

.field private static final TODAY:Ljava/lang/String;

.field static TZ_GMT:Ljava/util/TimeZone;

.field public static final rfc822DateFormats:[Ljava/text/SimpleDateFormat;


# instance fields
.field _date:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 38
    sget v0, Lmobi/beyondpod/R$string;->date_time_today:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->TODAY:Ljava/lang/String;

    const-string v0, "GMT"

    .line 40
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->TZ_GMT:Ljava/util/TimeZone;

    const/16 v0, 0x15

    .line 42
    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, d MMM yy kk:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, d MMM yyyy kk:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'kk:mm:ss\'Z\'"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'kk:mm:ssz"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'kk:mm:ss"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM  d kk:mm:ss zzz yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMMM yyyy kk:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy kk:mm Z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMM yy kk:mm:ss z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd kk:mm:ss.0"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "-yy-MM"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "-yyMM"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yy-MM-dd"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0xd

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0xe

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-D"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0xf

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "-yyMM"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0x10

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0x11

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyMMdd"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0x12

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0x13

    aput-object v1, v0, v4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyD"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0x14

    aput-object v1, v0, v4

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->rfc822DateFormats:[Ljava/text/SimpleDateFormat;

    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->MaxValue:Ljava/util/Date;

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE\', \'dd\' \'MMM\' \'yyyy\' \'HH:mm:ss\' \'z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->RFC822DATEFORMATUTC:Ljava/text/SimpleDateFormat;

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->MONTHDAYFORMAT:Ljava/text/SimpleDateFormat;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE\', \'dd\' \'MMM\' \'yyyy\' \'HH:mm:ss\' \'z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->RFC822DATEFORMAT:Ljava/text/SimpleDateFormat;

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H:mm"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->HOURMINAMPMFORMAT:Ljava/text/SimpleDateFormat;

    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->HOURMINSECFORMAT:Ljava/text/SimpleDateFormat;

    .line 81
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lmobi/beyondpod/rsscore/helpers/DateTime;->TZ_GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/16 v6, 0x802

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v0

    .line 82
    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    .line 83
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/DateTime;->MaxValue:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 85
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/DateTime;->RFC822DATEFORMATUTC:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 87
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->rfc822DateFormats:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v2

    sget-object v1, Lmobi/beyondpod/rsscore/helpers/DateTime;->TZ_GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 89
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->rfc822DateFormats:[Ljava/text/SimpleDateFormat;

    array-length v0, v0

    sub-int/2addr v0, v3

    :goto_0
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/DateTime;->rfc822DateFormats:[Ljava/text/SimpleDateFormat;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 90
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/DateTime;->rfc822DateFormats:[Ljava/text/SimpleDateFormat;

    aget-object v1, v1, v0

    sget-object v2, Lmobi/beyondpod/rsscore/helpers/DateTime;->TZ_GMT:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format24HourTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 106
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/16 p0, 0x81

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/DateTime;->TODAY:Ljava/lang/String;

    return-object p0

    .line 171
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const p0, 0x10008

    .line 171
    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 124
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 127
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 128
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 129
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 135
    iget v3, v1, Landroid/text/format/Time;->year:I

    iget v4, v2, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    const v1, 0x80a14

    goto :goto_0

    .line 139
    :cond_1
    iget v1, v1, Landroid/text/format/Time;->yearDay:I

    iget v2, v2, Landroid/text/format/Time;->yearDay:I

    if-eq v1, v2, :cond_2

    const v1, 0x80a10

    goto :goto_0

    :cond_2
    const v1, 0x80a01

    .line 150
    :goto_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 113
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/DateTime;->TODAY:Ljava/lang/String;

    return-object p0

    .line 116
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 95
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x81

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 101
    :goto_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimeRelative(Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 9

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 282
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v4, v2, v0

    const-wide/32 v0, 0xea60

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    .line 288
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmobi/beyondpod/R$string;->navigator_updated_now:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v6, 0x36ee80

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v4, v0

    goto :goto_0

    :cond_1
    move-wide v4, v6

    .line 292
    :goto_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static primeTimeZones()V
    .locals 2

    .line 272
    :try_start_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->RFC822DATEFORMATUTC:Ljava/text/SimpleDateFormat;

    const-string v1, "Wed, 28 Jan 2009 11:03:42 -0500"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static toLongString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 178
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toRFC822String(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->RFC822DATEFORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toRFC822UTCString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 160
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->RFC822DATEFORMATUTC:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toShortString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 183
    invoke-static {v0, v1}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tryFindFormatOfRFC822Time(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 6

    .line 209
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 214
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DateTime;->rfc822DateFormats:[Ljava/text/SimpleDateFormat;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 216
    invoke-static {p0, v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTimeWithFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static tryParseDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    .line 189
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 194
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    return-object v1

    .line 199
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :catch_0
    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseRFC822Time(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseDateTimeWithFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 0

    .line 257
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tryParseRFC822Time(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 4

    .line 229
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 235
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTimeWithFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    return-object p1

    .line 240
    :cond_2
    sget-object p1, Lmobi/beyondpod/rsscore/helpers/DateTime;->rfc822DateFormats:[Ljava/text/SimpleDateFormat;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 242
    invoke-static {p0, v3}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTimeWithFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method
