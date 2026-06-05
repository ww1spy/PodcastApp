.class public Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;
.super Ljava/lang/Object;
.source "HomeScreenContentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionInfo"
.end annotation


# instance fields
.field public EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

.field public SectionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
