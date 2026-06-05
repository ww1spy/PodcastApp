.class public Lmobi/beyondpod/services/player/smartplay/FeedPlaylistTemplate;
.super Ljava/lang/Object;
.source "FeedPlaylistTemplate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePlaylist(Lmobi/beyondpod/rsscore/Feed;IIILjava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/Feed;",
            "III",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 38
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    .line 40
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    const/4 v3, -0x2

    if-eq p3, v3, :cond_2

    if-eq v2, p3, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v1, p4}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->canIncludeInPlaylist(Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p0

    if-lez p0, :cond_5

    const/16 p0, 0x64

    if-ne p2, p0, :cond_4

    .line 55
    new-instance p0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    invoke-direct {p0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    goto :goto_1

    .line 57
    :cond_4
    new-instance p0, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {p0, p2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    :goto_1
    if-lez p1, :cond_6

    .line 60
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p0

    if-le p0, p1, :cond_6

    const/4 p0, 0x0

    .line 61
    invoke-virtual {v0, p0, p1}, Lmobi/beyondpod/rsscore/TrackList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method
