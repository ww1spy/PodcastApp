.class public Lmobi/beyondpod/rsscore/TrackSorter;
.super Ljava/lang/Object;
.source "TrackSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmobi/beyondpod/rsscore/Track;",
        ">;"
    }
.end annotation


# instance fields
.field public SortOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lmobi/beyondpod/rsscore/TrackSorter;->SortOrder:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lmobi/beyondpod/rsscore/TrackSorter;->SortOrder:I

    .line 33
    iput p1, p0, Lmobi/beyondpod/rsscore/TrackSorter;->SortOrder:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/rsscore/TrackSorter;->compare(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Track;)I

    move-result p1

    return p1
.end method

.method public compare(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Track;)I
    .locals 15

    .line 43
    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 46
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    .line 47
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    .line 49
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->getSizeOnDisk()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 56
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->getSizeOnDisk()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v9, p0

    .line 60
    iget v10, v9, Lmobi/beyondpod/rsscore/TrackSorter;->SortOrder:I

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    packed-switch v10, :pswitch_data_0

    return v14

    :pswitch_0
    if-nez v7, :cond_1

    if-nez v8, :cond_1

    return v1

    :cond_1
    if-eqz v8, :cond_2

    if-nez v7, :cond_2

    return v13

    :cond_2
    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    return v14

    .line 204
    :cond_3
    invoke-virtual {v8, v7}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0

    :pswitch_1
    if-nez v5, :cond_4

    if-nez v6, :cond_4

    return v1

    :cond_4
    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    return v13

    :cond_5
    if-nez v6, :cond_6

    if-eqz v5, :cond_6

    return v14

    .line 191
    :cond_6
    invoke-virtual {v6, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_2
    if-nez v5, :cond_7

    if-nez v6, :cond_7

    return v1

    :cond_7
    if-eqz v5, :cond_8

    if-nez v6, :cond_8

    return v13

    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_9

    return v14

    .line 178
    :cond_9
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 152
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v0

    .line 153
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v2

    const v3, 0x7fffffff

    if-eqz v0, :cond_a

    if-ne v0, v14, :cond_b

    :cond_a
    move v0, v3

    :cond_b
    if-eqz v2, :cond_c

    if-ne v2, v14, :cond_d

    :cond_c
    move v2, v3

    :cond_d
    if-ne v2, v0, :cond_e

    return v1

    :cond_e
    if-le v0, v2, :cond_f

    goto :goto_0

    :cond_f
    move v13, v14

    :goto_0
    return v13

    .line 136
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const v4, 0x3f8ccccd    # 1.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f8147ae    # 1.01f

    if-nez v3, :cond_10

    move v0, v6

    goto :goto_1

    :cond_10
    cmpl-float v3, v0, v5

    if-nez v3, :cond_11

    move v0, v4

    :cond_11
    :goto_1
    cmpl-float v2, v1, v2

    if-nez v2, :cond_12

    move v1, v6

    goto :goto_2

    :cond_12
    cmpl-float v2, v1, v5

    if-nez v2, :cond_13

    move v1, v4

    .line 145
    :cond_13
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    cmp-long v4, v2, v11

    const v2, 0x3f828f5c    # 1.02f

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    if-lez v4, :cond_14

    goto :goto_3

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    goto :goto_3

    :cond_15
    move v0, v2

    .line 146
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v4

    cmp-long v6, v4, v11

    if-lez v6, :cond_16

    goto :goto_4

    :cond_16
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_4

    :cond_17
    move v1, v2

    .line 148
    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0

    .line 125
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    cmp-long v0, v2, v11

    const-wide/32 v2, -0x80000000

    if-lez v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v4

    goto :goto_5

    :cond_18
    move-wide v4, v2

    .line 126
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v6

    cmp-long v0, v6, v11

    if-lez v0, :cond_19

    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    :cond_19
    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    cmp-long v0, v2, v4

    if-lez v0, :cond_1b

    goto :goto_6

    :cond_1b
    move v13, v14

    :goto_6
    return v13

    .line 115
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    cmp-long v0, v2, v11

    const-wide/32 v2, 0x7fffffff

    if-lez v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v4

    goto :goto_7

    :cond_1c
    move-wide v4, v2

    .line 116
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v6

    cmp-long v0, v6, v11

    if-lez v0, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    :cond_1d
    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    return v1

    :cond_1e
    cmp-long v0, v4, v2

    if-lez v0, :cond_1f

    goto :goto_8

    :cond_1f
    move v13, v14

    :goto_8
    return v13

    :pswitch_7
    if-nez v0, :cond_20

    if-nez v2, :cond_20

    return v1

    :cond_20
    if-eqz v2, :cond_21

    if-nez v0, :cond_21

    return v13

    :cond_21
    if-nez v2, :cond_22

    if-eqz v0, :cond_22

    return v14

    .line 84
    :cond_22
    invoke-virtual {v2, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0

    :pswitch_8
    if-nez v0, :cond_23

    if-nez v2, :cond_23

    return v1

    :cond_23
    if-eqz v0, :cond_24

    if-nez v2, :cond_24

    return v13

    :cond_24
    if-nez v0, :cond_25

    if-eqz v2, :cond_25

    return v14

    .line 72
    :cond_25
    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0

    :pswitch_9
    if-nez v3, :cond_26

    if-nez v4, :cond_26

    return v1

    :cond_26
    if-eqz v4, :cond_27

    if-nez v3, :cond_27

    return v13

    :cond_27
    if-nez v4, :cond_28

    if-eqz v3, :cond_28

    return v14

    .line 110
    :cond_28
    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_a
    if-nez v3, :cond_29

    if-nez v4, :cond_29

    return v1

    :cond_29
    if-eqz v3, :cond_2a

    if-nez v4, :cond_2a

    return v13

    :cond_2a
    if-nez v3, :cond_2b

    if-eqz v4, :cond_2b

    return v14

    .line 97
    :cond_2b
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
