.class public Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;
.super Lmobi/beyondpod/schedulercore/OperationBase;
.source "OperationUpdateSmartplayFeeds.java"


# static fields
.field public static final OperationID:Ljava/util/UUID;

.field private static TAG:Ljava/lang/String; = "OperationUpdateSmartplayFeeds"


# instance fields
.field _OnUpdateAndDownloadHandler:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

.field private _SmartPlayToUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "F1B1C1D1-0C02-4314-B8C4-4FEDE4C83C80"

    .line 40
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->OperationID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const-string v0, "BeyondPod Update Smartplay feeds"

    const-string v1, "BeyondPod Update Smartplay feeds"

    .line 45
    sget-object v2, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->OperationID:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2}, Lmobi/beyondpod/schedulercore/OperationBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->_SmartPlayToUpdate:Ljava/lang/String;

    .line 92
    new-instance v0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds$1;-><init>(Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;)V

    iput-object v0, p0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->_OnUpdateAndDownloadHandler:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;
    .locals 0

    .line 117
    new-instance p1, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;

    invoke-direct {p1}, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;-><init>()V

    return-object p1
.end method

.method public execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V
    .locals 6

    .line 51
    invoke-super {p0, p1}, Lmobi/beyondpod/schedulercore/OperationBase;->execute(Lmobi/beyondpod/schedulercore/OperationBase$OperationCompletedCallback;)V

    .line 53
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result p1

    if-nez p1, :cond_3

    .line 55
    new-instance p1, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {p1}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 57
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->_SmartPlayToUpdate:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylistByName(Ljava/lang/String;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->primarySmartPlay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 67
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeeds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/FeedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 72
    sget-object p1, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->TAG:Ljava/lang/String;

    const-string v0, "SmartPlay list has no feeds! Nothing to do!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->onOperationCompleted()V

    return-void

    .line 77
    :cond_2
    sget-object v0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->TAG:Ljava/lang/String;

    const-string v1, "Starting the update of %s feeds in SmartPlay"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->_OnUpdateAndDownloadHandler:Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;

    const-class v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, v1, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 82
    invoke-static {p1, v2}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdUpdateFeeds(Lmobi/beyondpod/rsscore/FeedList;Z)V

    goto :goto_1

    .line 87
    :cond_3
    sget-object p1, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->TAG:Ljava/lang/String;

    const-string v0, "SmartPlay update found another update is already in progress! Skipping update!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->onOperationCompleted()V

    :goto_1
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->_Name:Ljava/lang/String;

    return-object v0
.end method

.method public setSmartPlayToUpdate(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lmobi/beyondpod/schedulercore/OperationUpdateSmartplayFeeds;->_SmartPlayToUpdate:Ljava/lang/String;

    return-void
.end method
