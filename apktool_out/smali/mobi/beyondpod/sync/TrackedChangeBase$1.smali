.class final Lmobi/beyondpod/sync/TrackedChangeBase$1;
.super Ljava/lang/Object;
.source "TrackedChangeBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/sync/TrackedChangeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmobi/beyondpod/sync/TrackedChangeBase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 266
    check-cast p1, Lmobi/beyondpod/sync/TrackedChangeBase;

    check-cast p2, Lmobi/beyondpod/sync/TrackedChangeBase;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/sync/TrackedChangeBase$1;->compare(Lmobi/beyondpod/sync/TrackedChangeBase;Lmobi/beyondpod/sync/TrackedChangeBase;)I

    move-result p1

    return p1
.end method

.method public compare(Lmobi/beyondpod/sync/TrackedChangeBase;Lmobi/beyondpod/sync/TrackedChangeBase;)I
    .locals 5

    .line 270
    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 272
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
