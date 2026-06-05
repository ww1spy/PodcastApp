.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;
.super Landroid/media/session/MediaSession$Callback;
.source "RemoteControlLP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method private callServiceFor(Ljava/lang/String;J)V
    .locals 3

    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    .line 329
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "seekToLocation"

    .line 331
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "seekToLocation"

    .line 332
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 334
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/BeyondPodApplication;->sendCommandToVideoPlayer(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 335
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 336
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void
.end method

.method private cyclePlaybackSpeed()V
    .locals 4

    .line 346
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeedNormal()F

    move-result v0

    const-string v1, "setPlaybackSpeedNormal"

    .line 349
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultPlaybackSpeed()F

    move-result v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeedNormal()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 351
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed1()F

    move-result v0

    const-string v1, "setPlaybackSpeedSpeed1"

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultPlaybackSpeed()F

    move-result v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed1()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 357
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed2()F

    move-result v0

    const-string v1, "setPlaybackSpeedSpeed2"

    .line 361
    :cond_1
    :goto_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setDefaultPlaybackSpeed(F)V

    const-wide/16 v2, 0x0

    .line 362
    invoke-direct {p0, v1, v2, v3}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 306
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** BPMediaSession command CustomAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x642aeb60

    if-eq p2, v0, :cond_3

    const v0, -0x8838d96

    if-eq p2, v0, :cond_2

    const v0, 0x3762b2b5

    if-eq p2, v0, :cond_1

    const v0, 0x40798548

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "mobi.beyondpod.auto.SEEK_BACKWARD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "mobi.beyondpod.auto.SKIP_TO_END"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string p2, "mobi.beyondpod.auto.PLAYBACKSPEED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const-string p2, "mobi.beyondpod.auto.SEEK_FORWARD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 319
    :pswitch_0
    invoke-direct {p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->cyclePlaybackSpeed()V

    goto :goto_2

    :pswitch_1
    const-string p1, "skipforward"

    .line 316
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    goto :goto_2

    :pswitch_2
    const-string p1, "skipbackword"

    .line 313
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    goto :goto_2

    :pswitch_3
    const-string p1, "skiptoend"

    .line 310
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFastForward()V
    .locals 3

    .line 276
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** BPMediaSession command FastForward"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTNextButtonAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "skipbackword"

    goto :goto_0

    :cond_0
    const-string v0, "skipforward"

    :goto_0
    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 254
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** BPMediaSession command Pause"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pause"

    const-wide/16 v1, -0x1

    .line 255
    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    .line 256
    invoke-super {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    return-void
.end method

.method public onPlay()V
    .locals 3

    .line 107
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** BPMediaSession command Play"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resume"

    const-wide/16 v1, -0x1

    .line 108
    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 114
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** BPMediaSession  PlayFromMediaId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "__SMARTPLAYS__"

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 119
    invoke-static {p1}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getSmartplayIdFromMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 120
    invoke-static {p1}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getSmartplayTrackPathFromMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-lez p2, :cond_9

    .line 123
    invoke-static {p2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->generatePlaylist()Ljava/util/List;

    move-result-object p2

    .line 124
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    .line 125
    invoke-virtual {v1, p2, v0}, Lmobi/beyondpod/services/player/PlayList;->loadTracks(Ljava/util/Collection;Z)V

    const/4 p2, 0x0

    .line 128
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_2

    .line 134
    invoke-virtual {v1, p2}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {v1, p2}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result v0

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v1, p2}, Lmobi/beyondpod/services/player/PlayList;->addTrack(Lmobi/beyondpod/rsscore/Track;)V

    .line 141
    invoke-virtual {v1, p2}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/services/player/PlayList;->moveTrack(II)V

    .line 145
    :cond_2
    :goto_0
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 146
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdPlayPosition(I)Z

    goto/16 :goto_3

    :cond_3
    const-string p2, "__FEEDS__"

    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 152
    invoke-static {p1}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getFeedIdFromMediaId(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    .line 153
    invoke-static {p1}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getFeedTrackPathFromMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    .line 156
    invoke-static {v1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 159
    invoke-static {p2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadPlaylistAndPlayTrack(Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V

    goto/16 :goto_3

    .line 165
    :cond_4
    invoke-static {p1}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getFeedUIDFromMediaId(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 168
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 171
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p2

    .line 172
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 174
    new-instance v1, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>()V

    .line 175
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLocalOrInheritedTrackSortOrder()I

    move-result p1

    iput p1, v1, Lmobi/beyondpod/rsscore/TrackSorter;->SortOrder:I

    .line 176
    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    invoke-static {p2, p1, v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadPlaylistAndPlayTrack(Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V

    goto/16 :goto_3

    :cond_5
    const-string p2, "__CATEGORIES__"

    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 185
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-static {p1}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getCategoryIdFromMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {p1}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getCategoryTrackPathFromMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 191
    invoke-static {v1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    .line 192
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 194
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 197
    :cond_6
    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 200
    invoke-static {p2, p1, v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadPlaylistAndPlayTrack(Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V

    goto :goto_3

    .line 206
    :cond_7
    invoke-static {p1}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getCategoryNameFromMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 210
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    .line 211
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 213
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 216
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 218
    new-instance p1, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v1

    invoke-direct {p1, v1}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    invoke-static {p2, p1, v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadPlaylistAndPlayTrack(Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 229
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** BPMediaSession  PlayFromSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/BeyondPodApplication;->playFromQuery(Ljava/lang/String;)Z

    .line 231
    invoke-super {p0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewind()V
    .locals 3

    .line 284
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** BPMediaSession command Rewind"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTPreviousButtonAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "skipforward"

    goto :goto_0

    :cond_0
    const-string v0, "skipbackword"

    :goto_0
    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 3

    .line 299
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** BPMediaSession command SeekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "seekToLocation"

    .line 300
    invoke-direct {p0, v0, p1, p2}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 3

    .line 262
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** BPMediaSession command SkipToNext"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTNextButtonAction()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->translateCommand(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 3

    .line 269
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** BPMediaSession command SkipToPrevious"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTPreviousButtonAction()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->translateCommand(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 6

    .line 237
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 238
    :goto_0
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 240
    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/PlayList;->getTrackAtPosition(I)Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 243
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "*** BPMediaSession Queue track selected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {v1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdPlayPosition(I)Z

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** BPMediaSession  SkipToQueueItem is unable to find track for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 292
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** BPMediaSession command stop"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pause"

    const-wide/16 v1, -0x1

    .line 293
    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$1;->callServiceFor(Ljava/lang/String;J)V

    return-void
.end method
