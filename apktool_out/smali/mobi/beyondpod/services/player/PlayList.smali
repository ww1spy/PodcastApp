.class public Lmobi/beyondpod/services/player/PlayList;
.super Ljava/lang/Object;
.source "PlayList.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;


# static fields
.field public static final MOVE_BOTTOM:I = 0x2

.field public static final MOVE_TOP:I = 0x1

.field public static final PLAYLIST_END_ACTION_Clear_Playlist:I = 0x1

.field public static final PLAYLIST_END_ACTION_Do_Nothing:I = 0x0

.field public static final PLAYLIST_END_ACTION_StartSmartPlay:I = 0x2

.field public static final PLAYLIST_SLEEP_TO_END_OF_TRACK_VALUE:I = -0x80000000

.field public static final TAG:Ljava/lang/String; = "PlayList"

.field private static final _syncObj:Ljava/lang/Object;


# instance fields
.field private _CurrentTrack:Lmobi/beyondpod/rsscore/Track;

.field private _IsManuallyModified:Z

.field public final _PlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation
.end field

.field private _PlaylistIsSaving:Z

.field private _PlaylistSaveRunnable:Ljava/lang/Runnable;

.field private _TrackToDelete:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmobi/beyondpod/services/player/PlayList;->_syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    .line 688
    new-instance v1, Lmobi/beyondpod/services/player/PlayList$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/services/player/PlayList$1;-><init>(Lmobi/beyondpod/services/player/PlayList;)V

    iput-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlaylistSaveRunnable:Ljava/lang/Runnable;

    .line 703
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlaylistIsSaving:Z

    .line 69
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/services/player/PlayList;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveToFileInternal()V

    return-void
.end method

.method private addTrackInternal(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lmobi/beyondpod/services/player/PlayList;->canPlayStreamableTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    if-nez v0, :cond_0

    .line 406
    iput-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    sget-object v0, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v1, "failed to append to playlist!"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static allowStreaming(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 3

    .line 362
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 364
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowEpisodeStreaming()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    return v2

    .line 367
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowEpisodeStreaming()I

    move-result p0

    if-ne p0, v0, :cond_1

    .line 368
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isWiFiConnected()Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public static canAddToPlaylist(Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/Track;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 351
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 354
    :cond_1
    invoke-static {p0}, Lmobi/beyondpod/services/player/PlayList;->canPlayStreamableTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 357
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static canPlayStreamableTrack(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 2

    .line 418
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowEpisodeStreaming()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private clearPlayedIfNeeded()V
    .locals 5

    .line 120
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->removePlayedFromPlaylist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 129
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 136
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/PlayList;->removeTracks(Ljava/util/List;)V

    .line 137
    sget-object v1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " played episodes."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 132
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private executeActionDeleteCurrentTrackIfAllowed()V
    .locals 1

    .line 309
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    iput-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_TrackToDelete:Lmobi/beyondpod/rsscore/Track;

    :cond_0
    return-void
.end method

.method private getNextPlayableTrack()Lmobi/beyondpod/rsscore/Track;
    .locals 4

    .line 232
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 235
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 237
    iget-object v2, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 238
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isCurrentlyPlaying()Z
    .locals 2

    .line 872
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isEmpty()Z
    .locals 1

    .line 878
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isManuallyModified()Z
    .locals 1

    .line 883
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    iget-boolean v0, v0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    return v0
.end method

.method private notifyPlaylistChanged()V
    .locals 3

    .line 866
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveIndexOfCurrentPlaylistTrackInPlaylist()V

    .line 867
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;-><init>(Lmobi/beyondpod/services/player/PlayList;I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method private prepareNextPosition(Z)I
    .locals 4

    .line 197
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v0

    if-ltz v0, :cond_3

    .line 199
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 208
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->getNextPlayableTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 211
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->clearPlayed()V

    .line 217
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->removePlayedFromPlaylist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iput-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    .line 220
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->clearPlayedIfNeeded()V

    .line 221
    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result v0

    .line 222
    sget-object v1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found next playable episode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at position: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private removeTrackInternal(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 1

    if-eqz p1, :cond_3

    .line 647
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    if-ne p1, v0, :cond_1

    .line 653
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdStopPlayback()V

    .line 655
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->getNextTrackPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 658
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/PlayList;->setCurrentTrack(I)Lmobi/beyondpod/rsscore/Track;

    .line 659
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadCurrentTrack()V

    .line 663
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 665
    iget-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 666
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->clearCurrentTrack()V

    :cond_2
    const/4 p1, 0x1

    .line 668
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private saveIndexOfCurrentPlaylistTrackInPlaylist()V
    .locals 4

    .line 680
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v0

    .line 681
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->indexOfCurrentPlaylistTrackInPlaylist()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 683
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setIndexOfCurrentPlaylistTrackInPlaylist(I)V

    .line 684
    sget-object v1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved index of current Playlist track in Playlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveToFileAsync()V
    .locals 2

    .line 699
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlaylistSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 700
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlaylistSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveToFileInternal()V
    .locals 8

    .line 707
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-boolean v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlaylistIsSaving:Z

    if-eqz v1, :cond_0

    .line 710
    monitor-exit v0

    return-void

    .line 712
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistFilePath()Ljava/lang/String;

    move-result-object v1

    .line 714
    iget-boolean v2, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setIsCurrentPlaylistManuallyModified(Z)V

    .line 715
    iget-object v2, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setPlaylistSizeOnSave(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 720
    :try_start_1
    iput-boolean v3, p0, Lmobi/beyondpod/services/player/PlayList;->_PlaylistIsSaving:Z

    .line 722
    iget-object v3, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 724
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 726
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 728
    :cond_1
    sget-object v1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v3, "Deleted empty playlist file"

    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 765
    :try_start_2
    iput-boolean v4, p0, Lmobi/beyondpod/services/player/PlayList;->_PlaylistIsSaving:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 732
    :cond_2
    :try_start_3
    sget-object v3, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " playlist entries..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 735
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v2, v4

    .line 737
    :goto_0
    :try_start_4
    iget-object v5, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 739
    iget-object v5, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/rsscore/Track;

    .line 740
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 743
    :cond_3
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 744
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_4

    .line 757
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 761
    :try_start_6
    sget-object v2, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v3, "Unable to save Playlist file"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 765
    :cond_4
    :goto_1
    iput-boolean v4, p0, Lmobi/beyondpod/services/player/PlayList;->_PlaylistIsSaving:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    .line 749
    :goto_2
    :try_start_7
    sget-object v3, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v5, "Unable to save Playlist file"

    invoke-static {v3, v5, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_4

    .line 757
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catch_3
    move-exception v1

    .line 761
    :try_start_9
    sget-object v2, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v3, "Unable to save Playlist file"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 767
    :goto_3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    :goto_4
    if-eqz v2, :cond_5

    .line 757
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    :catch_4
    move-exception v2

    .line 761
    :try_start_b
    sget-object v3, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v5, "Unable to save Playlist file"

    invoke-static {v3, v5, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 765
    :cond_5
    :goto_5
    iput-boolean v4, p0, Lmobi/beyondpod/services/player/PlayList;->_PlaylistIsSaving:Z

    throw v1

    :catchall_2
    move-exception v1

    .line 767
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1
.end method

.method private setCurrentTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 571
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 575
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    .line 576
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v0, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;-><init>(Lmobi/beyondpod/services/player/PlayList;I)V

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    .line 579
    iget-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_TrackToDelete:Lmobi/beyondpod/rsscore/Track;

    if-eqz p1, :cond_1

    .line 581
    iget-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_TrackToDelete:Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackAsync(Lmobi/beyondpod/rsscore/Track;)V

    const/4 p1, 0x0

    .line 582
    iput-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_TrackToDelete:Lmobi/beyondpod/rsscore/Track;

    .line 586
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveIndexOfCurrentPlaylistTrackInPlaylist()V

    return-void
.end method


# virtual methods
.method public addTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->addTrackInternal(Lmobi/beyondpod/rsscore/Track;)V

    const/4 p1, 0x1

    .line 379
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    .line 380
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->notifyPlaylistChanged()V

    .line 381
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveToFileAsync()V

    return-void
.end method

.method public addTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)V"
        }
    .end annotation

    .line 386
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Track;

    .line 388
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/PlayList;->addTrackInternal(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 391
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    .line 392
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->notifyPlaylistChanged()V

    .line 393
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveToFileAsync()V

    return-void
.end method

.method public canAddToPlaylist(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 1

    .line 343
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/PlayList;->canAddToPlaylist(Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 675
    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/services/player/PlayList;->loadTracks(Ljava/util/Collection;Z)V

    return-void
.end method

.method public clearCurrentTrack()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/PlayList;->setCurrentTrack(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method public currentTrack()Lmobi/beyondpod/rsscore/Track;
    .locals 2

    .line 451
    sget-object v0, Lmobi/beyondpod/services/player/PlayList;->_syncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 454
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeActionDoNothing()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->clearCurrentTrack()V

    .line 144
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->clearPlayedIfNeeded()V

    .line 145
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;-><init>(Lmobi/beyondpod/services/player/PlayList;I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method public executeActionPlayNextPosition(I)V
    .locals 4

    .line 151
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defferAutoSyncSmartPlay()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->clearCurrentTrack()V

    .line 154
    sget-object p1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v0, "SmartPlay sync - Detected pending deferred rebuild at the end of playback. SmartPlay will be restarted."

    .line 155
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setDefferAutoSyncSmartPlay(Z)V

    .line 159
    invoke-virtual {p0, v2, v1, v1}, Lmobi/beyondpod/services/player/PlayList;->rebuildSmartPlay(ZZZ)V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v0

    .line 164
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->removePlayedFromPlaylist()Z

    move-result v3

    invoke-direct {p0, v3}, Lmobi/beyondpod/services/player/PlayList;->prepareNextPosition(Z)I

    move-result v3

    if-ltz v3, :cond_1

    .line 168
    invoke-static {v3}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdPlayPosition(I)Z

    .line 169
    sget-object p1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting playback of the next track:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 176
    sget-object p1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v0, "Playlist ended and will be cleared!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1, v2}, Lmobi/beyondpod/services/player/PlayList;->loadTracks(Ljava/util/Collection;Z)V

    .line 178
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v0, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;-><init>(Lmobi/beyondpod/services/player/PlayList;I)V

    .line 179
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->clearCurrentTrack()V

    .line 184
    sget-object p1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v0, "Playlist ended and SmartPlay will be restarted!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v2, v1, v2}, Lmobi/beyondpod/services/player/PlayList;->rebuildSmartPlay(ZZZ)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->clearPlayedIfNeeded()V

    :goto_0
    return-void
.end method

.method public getAllPlayed()Lmobi/beyondpod/rsscore/TrackList;
    .locals 5

    .line 938
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 940
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v1

    .line 942
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 944
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 945
    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 947
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentPlayingTrackPosition()I
    .locals 1

    .line 464
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNextTrackPosition()I
    .locals 2

    .line 472
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 478
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNextVideoTrack(Lmobi/beyondpod/rsscore/Track;)Lmobi/beyondpod/rsscore/Track;
    .locals 4

    .line 486
    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 494
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_3

    .line 496
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v0

    .line 498
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 500
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    .line 501
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 502
    monitor-exit v0

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 504
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreviousTrackPosition()I
    .locals 1

    .line 538
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 544
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getPreviousVideoTrack(Lmobi/beyondpod/rsscore/Track;)Lmobi/beyondpod/rsscore/Track;
    .locals 4

    .line 512
    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result p1

    if-gez p1, :cond_0

    .line 516
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 520
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_3

    .line 522
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v0

    :goto_1
    if-ltz p1, :cond_2

    .line 526
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    .line 527
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 528
    monitor-exit v0

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 530
    :cond_2
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrackAtPosition(I)Lmobi/beyondpod/rsscore/Track;
    .locals 1

    if-ltz p1, :cond_0

    .line 552
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 553
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I
    .locals 1

    .line 459
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getTracks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v0

    .line 564
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 565
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasEpisodesToDownload()Z
    .locals 3

    .line 888
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v0

    .line 890
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 892
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 893
    monitor-exit v0

    return v1

    .line 895
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasPlayed()Z
    .locals 3

    .line 954
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v0

    .line 956
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 958
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 959
    monitor-exit v0

    return v1

    .line 961
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasTrack(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 1

    .line 423
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadFromFile()V
    .locals 9

    .line 774
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    .line 783
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 785
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 793
    invoke-static {v4}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1

    .line 796
    :try_start_3
    invoke-static {v4}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->patchRootPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v6

    move-object v5, v6

    :cond_1
    if-nez v5, :cond_2

    .line 799
    sget-object v6, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!! Playlist track: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was not found in the repository! Ignoring..."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-object v5, v2

    :catch_1
    :cond_2
    :goto_1
    if-eqz v5, :cond_0

    .line 812
    :try_start_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 815
    :catch_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 817
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 819
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 820
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->indexOfCurrentPlaylistTrackInPlaylist()I

    move-result v0

    .line 821
    sget-object v1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read Current Playlist track Position as: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_3

    .line 823
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 825
    :cond_3
    sget-object v0, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v1, "Found invalid curent playlist track position. Setting to 0"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 830
    :cond_4
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/PlayList;->setCurrentTrack(I)Lmobi/beyondpod/rsscore/Track;

    .line 831
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->notifyPlaylistChanged()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    if-eqz v3, :cond_7

    .line 844
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_4
    move-exception v0

    .line 836
    :goto_2
    :try_start_6
    sget-object v1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load Playlist file. reason: "

    invoke-static {v1, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_7

    .line 844
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 848
    sget-object v1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load Smart Playlist file. reason: "

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_3
    if-eqz v3, :cond_6

    .line 844
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    move-exception v1

    .line 848
    sget-object v2, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load Smart Playlist file. reason: "

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    :cond_6
    :goto_4
    throw v0

    .line 854
    :cond_7
    :goto_5
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isCurrentPlaylistManuallyModified()Z

    move-result v0

    iput-boolean v0, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    .line 856
    sget-object v0, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tracks into the Playlist file. (Last saved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistSizeOnSave()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 856
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistSizeOnSave()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 860
    sget-object v0, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v1, "###### Playlist size on load does not match last saved playlist size!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public loadTracks(Ljava/util/Collection;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;Z)V"
        }
    .end annotation

    .line 315
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdStopPlayback()V

    .line 316
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 322
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Track;

    .line 324
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/PlayList;->canAddToPlaylist(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    sget-object v0, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string v1, "failed to append to playlist!"

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    .line 334
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->setCurrentTrack(Lmobi/beyondpod/rsscore/Track;)V

    .line 336
    iput-boolean p2, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    .line 337
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->notifyPlaylistChanged()V

    .line 338
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveToFileAsync()V

    return-void
.end method

.method public moveTrack(II)V
    .locals 1

    if-ne p1, p2, :cond_0

    return-void

    .line 905
    :cond_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackAtPosition(I)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 906
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 908
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 909
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 911
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    .line 912
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->notifyPlaylistChanged()V

    .line 913
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveToFileAsync()V

    :cond_1
    return-void
.end method

.method public moveTracks(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;I)V"
        }
    .end annotation

    .line 919
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 922
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 923
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    invoke-interface {v0, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 925
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    .line 926
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->notifyPlaylistChanged()V

    .line 927
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveToFileAsync()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 592
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 597
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    .line 598
    iget-object p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->removeTrack(Lmobi/beyondpod/rsscore/Track;)V

    .line 599
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/PlayList;->_IsManuallyModified:Z

    :cond_0
    return-void
.end method

.method public onTrackPlayStateChanged(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 933
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v0, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;-><init>(Lmobi/beyondpod/services/player/PlayList;I)V

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method public onTrackPlaybackComplete(Z)V
    .locals 2

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V

    .line 94
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playlistEndAction()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 98
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getMediaEndAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 100
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->executeActionDoNothing()V

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getMediaEndAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 104
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/PlayList;->executeActionPlayNextPosition(I)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getMediaEndAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 108
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->executeActionDeleteCurrentTrackIfAllowed()V

    .line 109
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/PlayList;->executeActionPlayNextPosition(I)V

    goto :goto_0

    .line 111
    :cond_4
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getMediaEndAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 113
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->executeActionDeleteCurrentTrackIfAllowed()V

    .line 114
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->executeActionDoNothing()V

    :cond_5
    :goto_0
    return-void
.end method

.method public playlistSize()I
    .locals 1

    .line 428
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public playlistTotalTime()Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;
    .locals 10

    .line 433
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;-><init>()V

    .line 435
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    .line 439
    iget-wide v4, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getSizeOnDisk()J

    move-result-wide v6

    add-long v8, v4, v6

    iput-wide v8, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    .line 440
    iget-wide v4, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTime:J

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v6

    add-long v8, v4, v6

    iput-wide v8, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTime:J

    .line 441
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const/4 v3, 0x1

    .line 442
    iput-boolean v3, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTimeIsApproximate:Z

    goto :goto_0

    .line 444
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rebuildSmartPlay(ZZZ)V
    .locals 5

    if-eqz p3, :cond_0

    .line 248
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->primarySmartPlay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->lastUsedSmartplay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p3

    :goto_0
    if-nez p3, :cond_1

    .line 252
    sget-object p1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string p2, "Trying to restart SmartPlay but SmartPlay is not configured! Ignoring..."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_1
    sget-object v0, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to restart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SmartPlay..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->generatePlaylist()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 263
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 264
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isPartialyPlayed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 267
    sget-object v2, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting SmartPlay and keeping the current playing track \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' at the top."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 273
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->clear()V

    .line 276
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 278
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 279
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdStopPlayback()V

    .line 281
    :cond_4
    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/services/player/PlayList;->loadTracks(Ljava/util/Collection;Z)V

    .line 282
    invoke-virtual {p0, v1}, Lmobi/beyondpod/services/player/PlayList;->setCurrentTrack(I)Lmobi/beyondpod/rsscore/Track;

    .line 285
    invoke-static {p3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->setLastUsedSmartPlay(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    .line 287
    sget-object p1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartPlaylist replaced! New Playlist size: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 291
    sget-object p1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string p2, "Starting automatic playback of the first track"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {v1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdPlayPosition(I)Z

    goto :goto_2

    .line 296
    :cond_5
    sget-object p1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string p2, "Loading the first track from the new playlist into the player"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadCurrentTrack()V

    goto :goto_2

    .line 302
    :cond_6
    sget-object p1, Lmobi/beyondpod/services/player/PlayList;->TAG:Ljava/lang/String;

    const-string p2, "SmartPlaylist is empty! Clearing the playlist..."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->clear()V

    :goto_2
    return-void
.end method

.method public removeTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 605
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->removeTrackInternal(Lmobi/beyondpod/rsscore/Track;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 607
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->notifyPlaylistChanged()V

    .line 608
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveToFileAsync()V

    :cond_0
    return-void
.end method

.method public removeTracks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 614
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 617
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Track;

    .line 619
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    if-ne v0, v1, :cond_2

    .line 621
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdStopPlayback()V

    .line 624
    :cond_2
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_PlayList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 630
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/PlayList;->clearCurrentTrack()V

    goto :goto_1

    .line 634
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result p1

    if-gez p1, :cond_5

    const/4 p1, 0x0

    .line 636
    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->setCurrentTrack(I)Lmobi/beyondpod/rsscore/Track;

    .line 637
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadCurrentTrack()V

    .line 641
    :cond_5
    :goto_1
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->notifyPlaylistChanged()V

    .line 642
    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayList;->saveToFileAsync()V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public setCurrentTrack(I)Lmobi/beyondpod/rsscore/Track;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackAtPosition(I)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->setCurrentTrack(Lmobi/beyondpod/rsscore/Track;)V

    .line 83
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/PlayList;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    return-object p1
.end method
