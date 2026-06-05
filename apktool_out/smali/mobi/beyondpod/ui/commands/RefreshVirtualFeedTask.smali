.class public Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;
.super Landroid/os/AsyncTask;
.source "RefreshVirtualFeedTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lmobi/beyondpod/rsscore/Feed;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field _ProgressNotifier:Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->_ProgressNotifier:Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->doInBackground([Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/Void;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 35
    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->refreshVirtualFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 37
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v3

    const/16 v4, 0x28

    const/4 v5, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x14

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    move v4, v1

    .line 40
    :goto_1
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v6

    const/16 v7, 0x64

    if-eq v4, v6, :cond_2

    .line 42
    invoke-virtual {v2, v4}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/beyondpod/rsscore/Track;

    .line 43
    invoke-virtual {v6, v0}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v6, v0}, Lmobi/beyondpod/rsscore/Track;->setContentMimeType(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Track;->ensureTrackHasContentType()V

    .line 49
    rem-int v6, v4, v3

    if-nez v6, :cond_1

    .line 51
    div-int v6, v4, v3

    mul-int/lit8 v6, v6, 0x5

    if-ge v6, v7, :cond_1

    .line 53
    new-array v6, v5, [Ljava/lang/Integer;

    div-int v7, v4, v3

    mul-int/lit8 v7, v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v6}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->publishProgress([Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57
    :cond_2
    new-array v2, v5, [Ljava/lang/Integer;

    const/16 v3, 0x63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->publishProgress([Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositorySync()V

    .line 62
    sget-object v2, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v3, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/16 v4, 0x10

    aget-object p1, p1, v1

    invoke-direct {v3, v4, p1}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(ILmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    .line 65
    new-array p1, v5, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->_ProgressNotifier:Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->_ProgressNotifier:Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;

    invoke-interface {p1}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;->onRefreshCompleted()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->_ProgressNotifier:Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->_ProgressNotifier:Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;

    invoke-interface {v0}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;->onRefreshStarted()V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->_ProgressNotifier:Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->_ProgressNotifier:Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;->onRefreshProgress(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
