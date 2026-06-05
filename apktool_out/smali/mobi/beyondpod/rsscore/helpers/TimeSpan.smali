.class public Lmobi/beyondpod/rsscore/helpers/TimeSpan;
.super Ljava/lang/Object;
.source "TimeSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmobi/beyondpod/rsscore/helpers/TimeSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private duration:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    mul-long/2addr p1, v0

    .line 44
    :cond_0
    iput-wide p1, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 11

    const-wide/16 v1, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    .line 54
    invoke-direct/range {v0 .. v10}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 11

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 65
    invoke-direct/range {v0 .. v10}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 17

    move-object/from16 v0, p0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v7, 0x0

    .line 74
    iput-wide v7, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    cmp-long v9, p1, v7

    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x3c

    if-lez v9, :cond_0

    .line 76
    iget-wide v7, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    mul-long v1, p1, v10

    mul-long/2addr v1, v12

    mul-long/2addr v1, v12

    const-wide/16 v14, 0x18

    mul-long/2addr v1, v14

    add-long v12, v7, v1

    iput-wide v12, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    move-wide v1, v7

    :goto_0
    cmp-long v7, p3, v1

    if-lez v7, :cond_1

    .line 80
    iget-wide v7, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    mul-long v3, p3, v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v3, v12

    mul-long/2addr v3, v12

    add-long v12, v7, v3

    iput-wide v12, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    :cond_1
    cmp-long v3, p5, v1

    if-lez v3, :cond_2

    .line 84
    iget-wide v3, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    mul-long v5, p5, v10

    const-wide/16 v7, 0x3c

    mul-long/2addr v5, v7

    add-long v7, v3, v5

    iput-wide v7, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    :cond_2
    cmp-long v3, p7, v1

    if-lez v3, :cond_3

    .line 88
    iget-wide v1, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    mul-long v3, p7, v10

    add-long v5, v1, v3

    iput-wide v5, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    .line 91
    :cond_3
    iget-wide v1, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    add-long v5, v1, p9

    iput-wide v5, v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    return-void
.end method

.method public static fromDays(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;
    .locals 3

    .line 182
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    double-to-long p0, p0

    const-wide/32 v1, 0x5265c00

    mul-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    return-object v0
.end method

.method public static fromHours(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;
    .locals 3

    .line 189
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    double-to-long p0, p0

    const-wide/32 v1, 0x36ee80

    mul-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    return-object v0
.end method

.method public static fromMinutes(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;
    .locals 3

    .line 196
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    double-to-long p0, p0

    const-wide/32 v1, 0xea60

    mul-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    return-object v0
.end method

.method public static fromSeconds(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;
    .locals 3

    .line 203
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    double-to-long p0, p0

    const-wide/16 v1, 0x3e8

    mul-long/2addr p0, v1

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public add(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)Lmobi/beyondpod/rsscore/helpers/TimeSpan;
    .locals 7

    .line 175
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    iget-wide v1, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    iget-wide v3, p1, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    add-long v5, v1, v3

    invoke-direct {v0, v5, v6}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    return-object v0
.end method

.method public addTo(Ljava/util/Date;)Ljava/util/Date;
    .locals 5

    .line 271
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 272
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 274
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v1

    const-wide v3, 0x4076d00000000000L    # 365.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    div-double/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    double-to-int p1, v1

    const/4 v1, 0x1

    .line 277
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x6

    .line 278
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getDays()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    const/16 p1, 0xa

    .line 279
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getHours()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    const/16 p1, 0xc

    .line 280
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMinutes()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    const/16 p1, 0xd

    .line 281
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    .line 283
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->compareTo(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)I
    .locals 6

    .line 211
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    iget-wide v2, p1, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    sub-long v4, v0, v2

    long-to-int p1, v4

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 219
    instance-of v0, p1, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 222
    :cond_0
    check-cast p1, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    iget-wide v2, p1, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    iget-wide v4, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDays()J
    .locals 4

    .line 105
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getHours()J
    .locals 4

    .line 112
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public getMilliseconds()J
    .locals 4

    .line 133
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public getMinutes()J
    .locals 4

    .line 119
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public getSeconds()J
    .locals 4

    .line 126
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalDays()D
    .locals 2

    .line 140
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    long-to-float v0, v0

    const v1, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getTotalHours()D
    .locals 2

    .line 147
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    long-to-float v0, v0

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getTotalMilliseconds()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    return-wide v0
.end method

.method public getTotalMinutes()D
    .locals 2

    .line 154
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    long-to-float v0, v0

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getTotalSeconds()D
    .locals 2

    .line 161
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getYears()J
    .locals 4

    .line 98
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    const-wide/16 v2, 0x16d

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 230
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    iget-wide v2, p0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->duration:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long v4, v0, v2

    long-to-int v0, v4

    return v0
.end method

.method public subtractFrom(Ljava/util/Date;)Ljava/util/Date;
    .locals 5

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 257
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v1

    const-wide v3, 0x4076d00000000000L    # 365.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    div-double/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    double-to-int p1, v1

    const/4 v1, 0x1

    mul-int/lit8 p1, p1, -0x1

    .line 260
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x6

    .line 261
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getDays()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    mul-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    const/16 p1, 0xa

    .line 262
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getHours()J

    move-result-wide v1

    mul-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    const/16 p1, 0xc

    .line 263
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMinutes()J

    move-result-wide v1

    mul-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    const/16 p1, 0xd

    .line 264
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getSeconds()J

    move-result-wide v1

    mul-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    .line 266
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getDays()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 240
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getDays()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "."

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getHours()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMinutes()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getSeconds()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMilliseconds()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 246
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, ".%03d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getMilliseconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
