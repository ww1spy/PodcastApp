.class Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3$1;
.super Ljava/lang/Object;
.source "UpdateAndDownloadManager.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/TrackFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;->processRemoteAndPartiallyDownloadedEpisodes(Ljava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;


# direct methods
.method constructor <init>(Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3$1;->this$0:Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 358
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isRemoteEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->automaticallyReDownloadPartialEpisodes()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
