.class final Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$3;
.super Ljava/lang/Object;
.source "EpisodeHistoryManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 391
    check-cast p1, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    check-cast p2, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$3;->compare(Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;)I

    move-result p1

    return p1
.end method

.method public compare(Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;)I
    .locals 0

    .line 395
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->timeStamp()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->timeStamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
