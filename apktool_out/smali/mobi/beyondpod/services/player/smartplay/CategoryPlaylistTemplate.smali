.class public Lmobi/beyondpod/services/player/smartplay/CategoryPlaylistTemplate;
.super Ljava/lang/Object;
.source "CategoryPlaylistTemplate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePlaylist(Lmobi/beyondpod/rsscore/categories/FeedCategory;IIILjava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/categories/FeedCategory;",
            "III",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {p3, p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getEpisodesByContentTypeAndCategory(ILmobi/beyondpod/rsscore/categories/FeedCategory;)Ljava/util/List;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 41
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Track;

    .line 44
    invoke-static {v0, p4}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->canIncludeInPlaylist(Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    const/16 p3, 0x64

    if-ne p2, p3, :cond_2

    .line 51
    new-instance p2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Ljava/util/Random;-><init>(J)V

    invoke-static {p0, p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    goto :goto_1

    .line 53
    :cond_2
    new-instance p3, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {p3, p2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    :goto_1
    if-lez p1, :cond_4

    .line 56
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_4

    const/4 p2, 0x0

    .line 57
    invoke-interface {p0, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p0
.end method
