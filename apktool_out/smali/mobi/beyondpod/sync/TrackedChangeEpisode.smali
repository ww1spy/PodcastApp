.class public Lmobi/beyondpod/sync/TrackedChangeEpisode;
.super Lmobi/beyondpod/sync/TrackedChangeBase;
.source "TrackedChangeEpisode.java"


# static fields
.field private static final BLOB_CURR_POS:I = 0x3

.field private static final BLOB_EPISODE_URL:I = 0x2

.field private static final BLOB_FEED_URL:I = 0x0

.field private static final BLOB_FILE_NAME:I = 0x1

.field private static final BLOB_MARKED_PLAYED:I = 0x6

.field private static final BLOB_START_POS:I = 0x4

.field private static final BLOB_TOTAL_DURATION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TrackedChangeEpisode"


# instance fields
.field _CurrentPosition:I

.field _EpisodeUrl:Ljava/lang/String;

.field _FeedUrl:Ljava/lang/String;

.field _FileName:Ljava/lang/String;

.field _MarkedPlayed:Z

.field _PlaybackStartPosition:I

.field _TotalDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lmobi/beyondpod/sync/TrackedChangeBase;-><init>(I)V

    .line 50
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_CurrentPosition:I

    .line 52
    iget p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_CurrentPosition:I

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_PlaybackStartPosition:I

    .line 53
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_TotalDuration:I

    .line 54
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FileName:Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p1

    iput-boolean p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MarkedPlayed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JIILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p6}, Lmobi/beyondpod/sync/TrackedChangeBase;-><init>(Ljava/lang/Long;JIILjava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->parseBlob()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 65
    :goto_0
    array-length p3, p1

    if-eq p2, p3, :cond_0

    .line 66
    aget-object p3, p1, p2

    invoke-virtual {p0, p2, p3}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->loadFromBlob(ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findLocalTrack()Lmobi/beyondpod/rsscore/Track;
    .locals 1

    .line 329
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->episodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FileName:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getLocalTrack(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    return-object v0
.end method

.method private handleEpisodeDeleted()V
    .locals 3

    .line 189
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->findLocalTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    .line 191
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->allowRemoteEpisodeDeletions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote EPISODE DELETED. Remote Deletions are not allowed! Ingoring deletion of episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto/16 :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 200
    iput-boolean v1, v0, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    .line 204
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackSync(Lmobi/beyondpod/rsscore/Track;)V

    .line 205
    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V

    .line 207
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote EPISODE DELETED. Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 212
    :cond_1
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote EPISODE DELETED. Local episode is currently \'LOCKED\'! Ingoring deletion of episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 219
    :cond_2
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote EPISODE DELETED. Episode does not exist! Ignoring... Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_0
    const/4 v0, 0x4

    .line 224
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->updateSyncStatusTo(I)V

    return-void
.end method

.method private handleEpisodeDownloaded()V
    .locals 3

    .line 171
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->findLocalTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote EPISODE DOWNLOADED. Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 179
    :cond_0
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote EPISODE DOWNLOADED. Episode does not exist! Ignoring... Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_0
    const/4 v0, 0x4

    .line 184
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->updateSyncStatusTo(I)V

    return-void
.end method

.method private handleEpisodePlayed()V
    .locals 17

    move-object/from16 v0, p0

    .line 229
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->findLocalTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v7

    .line 231
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->allowRemoteEpisodeModifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    sget-object v1, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   --- APPLY remote EPISODE PLAYED. Remote modifications are not allowed! Ignoring... Episode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto/16 :goto_4

    :cond_0
    if-eqz v7, :cond_9

    .line 239
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v8

    .line 240
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v10

    .line 241
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v12

    .line 243
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->currentPosition()I

    move-result v1

    int-to-long v1, v1

    .line 244
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSSyncFurthestPlayedPositionOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    cmp-long v3, v1, v8

    if-gez v3, :cond_1

    move-wide v13, v8

    goto :goto_0

    :cond_1
    move-wide v13, v1

    :goto_0
    const-wide/16 v15, 0x0

    cmp-long v1, v10, v15

    if-nez v1, :cond_2

    .line 250
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->totalDuration()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->totalDuration()I

    move-result v1

    int-to-long v1, v1

    move-wide v4, v1

    goto :goto_1

    :cond_2
    move-wide v4, v10

    .line 252
    :goto_1
    iget-boolean v6, v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MarkedPlayed:Z

    move-object v1, v7

    move-wide v2, v13

    invoke-virtual/range {v1 .. v6}, Lmobi/beyondpod/rsscore/Track;->initializePlayedTimes(JJZ)V

    cmp-long v1, v13, v15

    if-gtz v1, :cond_3

    .line 254
    iget-boolean v1, v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MarkedPlayed:Z

    if-eqz v1, :cond_4

    .line 255
    :cond_3
    invoke-static {v7}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->addEpisodePlayedHistoryEntry(Lmobi/beyondpod/rsscore/Track;)V

    :cond_4
    const/4 v1, 0x0

    .line 259
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-ne v2, v7, :cond_6

    .line 263
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 264
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadCurrentTrack()V

    :cond_5
    move v1, v3

    .line 267
    :cond_6
    sget-object v2, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   --- APPLY remote EPISODE PLAYED. Episode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Play Position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static {v10, v11}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), Played: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    const-string v1, ", CPT"

    goto :goto_2

    :cond_7
    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->currentPosition()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v13, v4

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Received pos: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->currentPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->currentPosition()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") was ignored because it was before the current position"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    const-string v1, ""

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v2, v1, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 279
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 280
    invoke-static {v7}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_4

    .line 284
    :cond_9
    sget-object v1, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   --- APPLY remote EPISODE PLAYED. Episode does not exist! Ignoring... Episode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :cond_a
    :goto_4
    const/4 v1, 0x4

    .line 289
    invoke-virtual {v0, v1}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->updateSyncStatusTo(I)V

    return-void
.end method

.method private handleEpisodeUpdated()V
    .locals 10

    .line 294
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->findLocalTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v6

    .line 296
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->allowRemoteEpisodeModifications()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote EPISODE UPDATED. Remote modifications are not allowed! Ignoring... Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto/16 :goto_0

    :cond_0
    if-eqz v6, :cond_1

    .line 304
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v1

    .line 305
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v7

    .line 306
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v9

    .line 308
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->totalDuration()I

    move-result v0

    int-to-long v3, v0

    move-object v0, v6

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lmobi/beyondpod/rsscore/Track;->initializePlayedTimes(JJZ)V

    .line 310
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote EPISODE UPDATED. Episode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), Played: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote EPISODE UPDATED. Episode does not exist! Ignoring... Episode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :goto_0
    const/4 v0, 0x4

    .line 324
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->updateSyncStatusTo(I)V

    return-void
.end method


# virtual methods
.method public applyRemoteChange()V
    .locals 3

    .line 138
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->syncStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    sget-object v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   --- APPLY remote change for invalid episode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Change ignored!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    const/4 v0, 0x4

    .line 145
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->updateSyncStatusTo(I)V

    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->changeType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->handleEpisodeDeleted()V

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->handleEpisodePlayed()V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->handleEpisodeDownloaded()V

    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->handleEpisodeUpdated()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public currentPosition()I
    .locals 1

    .line 99
    iget v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_CurrentPosition:I

    return v0
.end method

.method public episodeUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public fileName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FileName:Ljava/lang/String;

    return-object v0
.end method

.method public friendlyName()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_CurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_CurrentPosition:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Dur: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_TotalDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_TotalDuration:I

    int-to-long v1, v1

    .line 82
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MarkedPlayed:Z

    if-eqz v1, :cond_0

    const-string v1, " - Played"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    .line 84
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FileName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->findLocalTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected loadFromBlob(ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    .line 367
    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move p1, v0

    :cond_0
    iput-boolean p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MarkedPlayed:Z

    goto :goto_0

    .line 363
    :pswitch_1
    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_TotalDuration:I

    goto :goto_0

    .line 359
    :pswitch_2
    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_PlaybackStartPosition:I

    goto :goto_0

    .line 355
    :pswitch_3
    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_CurrentPosition:I

    goto :goto_0

    .line 351
    :pswitch_4
    iput-object p2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    goto :goto_0

    .line 347
    :pswitch_5
    iput-object p2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FileName:Ljava/lang/String;

    goto :goto_0

    .line 343
    :pswitch_6
    iput-object p2, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public markedPlayed()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MarkedPlayed:Z

    return v0
.end method

.method public messageId()Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MessageId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FileName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MessageId:Ljava/lang/String;

    .line 75
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MessageId:Ljava/lang/String;

    return-object v0
.end method

.method public playbackStartPosition()I
    .locals 1

    .line 104
    iget v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_PlaybackStartPosition:I

    return v0
.end method

.method public prepareForSave()V
    .locals 3

    const/4 v0, 0x7

    .line 375
    new-array v0, v0, [Ljava/lang/String;

    .line 376
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FeedUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 377
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FileName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 378
    iget-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 379
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_CurrentPosition:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 380
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_PlaybackStartPosition:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 381
    iget v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_TotalDuration:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 382
    iget-boolean v1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MarkedPlayed:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 384
    invoke-virtual {p0, v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->saveToBlob([Ljava/lang/String;)V

    return-void
.end method

.method public totalDuration()I
    .locals 1

    .line 109
    iget v0, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_TotalDuration:I

    return v0
.end method

.method public updateTo(Lmobi/beyondpod/sync/TrackedChangeBase;)V
    .locals 3

    .line 119
    instance-of v0, p1, Lmobi/beyondpod/sync/TrackedChangeEpisode;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to update TrackedChangeEpisode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    move-object v0, p1

    check-cast v0, Lmobi/beyondpod/sync/TrackedChangeEpisode;

    .line 125
    invoke-super {p0, p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->updateTo(Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 127
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->episodeUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_EpisodeUrl:Ljava/lang/String;

    .line 128
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->playbackStartPosition()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_PlaybackStartPosition:I

    .line 129
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->currentPosition()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_CurrentPosition:I

    .line 130
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->totalDuration()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_TotalDuration:I

    .line 131
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->fileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_FileName:Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Lmobi/beyondpod/sync/TrackedChangeEpisode;->markedPlayed()Z

    move-result p1

    iput-boolean p1, p0, Lmobi/beyondpod/sync/TrackedChangeEpisode;->_MarkedPlayed:Z

    return-void
.end method
