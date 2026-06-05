.class public Lmobi/beyondpod/rsscore/FeedSorter;
.super Ljava/lang/Object;
.source "FeedSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmobi/beyondpod/rsscore/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field private _SortOrder:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lmobi/beyondpod/rsscore/FeedSorter;->_SortOrder:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lmobi/beyondpod/rsscore/Feed;

    check-cast p2, Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/rsscore/FeedSorter;->compare(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/Feed;)I

    move-result p1

    return p1
.end method

.method public compare(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/Feed;)I
    .locals 6

    .line 40
    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 43
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p2

    .line 49
    iget v3, p0, Lmobi/beyondpod/rsscore/FeedSorter;->_SortOrder:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    packed-switch v3, :pswitch_data_0

    return v5

    :pswitch_0
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    return v1

    :cond_1
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    return v4

    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    return v5

    .line 73
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1

    :pswitch_1
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    return v1

    :cond_4
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    return v4

    :cond_5
    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    return v5

    .line 61
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1

    :pswitch_2
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    return v1

    :cond_7
    if-eqz p2, :cond_8

    if-nez p1, :cond_8

    return v4

    :cond_8
    if-nez p2, :cond_9

    if-eqz p1, :cond_9

    return v5

    .line 99
    :cond_9
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_3
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_b

    if-nez p2, :cond_b

    return v4

    :cond_b
    if-nez p1, :cond_c

    if-eqz p2, :cond_c

    return v5

    .line 86
    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
