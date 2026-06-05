.class public Lmobi/beyondpod/rsscore/rss/LocalEnclosureSorter;
.super Ljava/lang/Object;
.source "LocalEnclosureSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private _Sorter:Lmobi/beyondpod/rsscore/TrackSorter;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {v0, p1}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/LocalEnclosureSorter;->_Sorter:Lmobi/beyondpod/rsscore/TrackSorter;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    check-cast p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/rsscore/rss/LocalEnclosureSorter;->compare(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I
    .locals 3

    .line 40
    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->equals(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 47
    :goto_0
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    .line 51
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/LocalEnclosureSorter;->_Sorter:Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-virtual {p2, p1, v2}, Lmobi/beyondpod/rsscore/TrackSorter;->compare(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Track;)I

    move-result p1

    return p1

    :cond_3
    if-nez p1, :cond_4

    if-nez v2, :cond_4

    return v1

    :cond_4
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, -0x1

    return p1
.end method
