.class final Lmobi/beyondpod/rsscore/repository/FeedRepository$3;
.super Ljava/lang/Object;
.source "FeedRepository.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/TrackFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/repository/FeedRepository;->allResumableDownloads()Lmobi/beyondpod/rsscore/TrackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1186
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
