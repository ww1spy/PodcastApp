.class public Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;
.super Ljava/util/ArrayList;
.source "HomeScreenContentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeScreenSections"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .line 35
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;

    .line 37
    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public numEpisodes()I
    .locals 4

    .line 48
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;

    .line 50
    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    iget-object v2, v2, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method
