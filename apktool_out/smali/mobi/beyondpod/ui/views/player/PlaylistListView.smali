.class public Lmobi/beyondpod/ui/views/player/PlaylistListView;
.super Lcom/mobeta/android/dslv/DragSortListView;
.source "PlaylistListView.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;
    }
.end annotation


# static fields
.field private static final FL_MENU_FIRST:I = 0x1e

.field private static final MENU_DELETE_PODCAST:I = 0x20

.field private static final MENU_MOVE_BOTTOM:I = 0x29

.field private static final MENU_MOVE_TOP:I = 0x28

.field private static final MENU_OPEN_FEED:I = 0x2a

.field private static final MENU_PLAY_IN_EXTERNAL_PLAYER:I = 0x27

.field private static final MENU_PODCAST_INFO:I = 0x25

.field private static final MENU_REMOVE_FROM_PLAYLIST:I = 0x23

.field private static final MENU_RESUME_OR_STOP_DOWNLOAD:I = 0x22

.field private static final MENU_SHARE_PODCAST_URL:I = 0x24

.field private static final MENU_TOGGLE_LOCK_PODCAST:I = 0x26

.field private static final MENU_TOGGLE_PLAYED:I = 0x21

.field private static final OF:Ljava/lang/String;


# instance fields
.field _ActionMode:Landroid/view/ActionMode;

.field private _Adapter:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

.field private _InfoCardHeaderView:Landroid/view/View;

.field _LastTouchTime:J

.field private _Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

.field _PauseRefresh:Z

.field private _PlaylistHeader:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

.field private _SmartPlayHeader:Landroid/view/View;

.field private _SmartPlayShortcut:Landroid/widget/TextView;

.field private mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f10022d

    .line 69
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->OF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_PauseRefresh:Z

    .line 92
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlaylistListView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$1;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_PauseRefresh:Z

    .line 92
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlaylistListView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$1;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/PlaylistListView;Landroid/view/Menu;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->prepareActionModeOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/PlaylistListView;Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/TrackList;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->handleActionModeOptionsMenu(Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/TrackList;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->OF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/player/PlaylistListView;)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Adapter:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/player/PlaylistListView;)Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;
    .locals 0

    .line 67
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    return-object p0
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/player/PlaylistListView;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_InfoCardHeaderView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->updatePlaylistInfo()V

    return-void
.end method

.method private handleActionModeOptionsMenu(Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/TrackList;)Z
    .locals 4

    .line 260
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 263
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 289
    :pswitch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;->openTrackFeed(Lmobi/beyondpod/rsscore/Track;)V

    return v0

    .line 314
    :pswitch_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Lmobi/beyondpod/services/player/PlayList;->moveTracks(Ljava/util/List;I)V

    .line 315
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result p1

    .line 316
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    move v2, p1

    .line 317
    :goto_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 318
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->batchSelect(Landroid/util/SparseBooleanArray;)V

    .line 320
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setSelection(I)V

    return v0

    .line 324
    :pswitch_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lmobi/beyondpod/services/player/PlayList;->moveTracks(Ljava/util/List;I)V

    .line 325
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    move v2, v0

    .line 326
    :goto_1
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 327
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->batchSelect(Landroid/util/SparseBooleanArray;)V

    .line 329
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setSelection(I)V

    return v0

    .line 294
    :pswitch_3
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 295
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :cond_3
    return v1

    .line 282
    :pswitch_4
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->hasUnLocked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 283
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    goto :goto_2

    .line 285
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUnlockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    :goto_2
    return v0

    .line 305
    :pswitch_5
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 307
    new-instance p1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 308
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/PlayList;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    .line 309
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    invoke-interface {v2, p2, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;->openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V

    :cond_5
    return v1

    .line 300
    :pswitch_6
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 301
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSharePodcast(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :cond_6
    return v1

    .line 278
    :pswitch_7
    invoke-static {p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdRemoveFromPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V

    return v1

    .line 335
    :pswitch_8
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 336
    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->onDownload(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_3

    .line 339
    :cond_7
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 340
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowDownloadQueue()V

    goto :goto_3

    .line 342
    :cond_8
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadTracksManually(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    :goto_3
    return v1

    .line 266
    :pswitch_9
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->hasUnPlayed()Z

    move-result p1

    .line 267
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    .line 268
    invoke-static {v1, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetPlayedState(Lmobi/beyondpod/rsscore/Track;Z)V

    goto :goto_4

    :cond_9
    return v0

    .line 273
    :pswitch_a
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 274
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeletePodcasts(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    :cond_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isInitialized()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Adapter:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareActionModeOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 372
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getCheckedItems()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x23

    const v2, 0x7f100030

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 378
    invoke-interface {p1, v4, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x20

    const/4 v2, 0x2

    const v5, 0x7f100011

    .line 382
    invoke-interface {p1, v4, v1, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x21

    .line 385
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->hasUnPlayed()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f100023

    goto :goto_0

    :cond_1
    const v2, 0x7f100025

    :goto_0
    const/4 v5, 0x3

    invoke-interface {p1, v4, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x26

    const/4 v2, 0x4

    .line 390
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->hasUnLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f100020

    goto :goto_1

    :cond_2
    const v6, 0x7f10003d

    .line 389
    :goto_1
    invoke-interface {p1, v4, v1, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 390
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x28

    const/4 v2, 0x5

    const v6, 0x7f100029

    .line 394
    invoke-interface {p1, v4, v1, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x29

    const/4 v2, 0x6

    const v6, 0x7f100028

    .line 396
    invoke-interface {p1, v4, v1, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 398
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v1

    if-eq v1, v5, :cond_3

    const/16 v1, 0x27

    const/4 v2, 0x7

    const v3, 0x7f10002e

    .line 399
    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 400
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 403
    :cond_3
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->hasNotDownloaded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x22

    const/16 v1, 0x8

    const v2, 0x7f100038

    .line 405
    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 406
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    return-void
.end method

.method private showHowToUseDragDropCard()V
    .locals 8

    const/4 v0, 0x6

    .line 217
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance v4, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v4}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    .line 222
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    const v0, 0x7f0801ef

    .line 224
    iput v0, v4, Lmobi/beyondpod/ui/views/notifications/Message;->ImageResourceId:I

    .line 226
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x6

    const/4 v6, 0x2

    new-instance v7, Lmobi/beyondpod/ui/views/player/PlaylistListView$5;

    invoke-direct {v7, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$5;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    .line 245
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 246
    invoke-virtual {v0, v2, v3, v3}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_InfoCardHeaderView:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_InfoCardHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 248
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_InfoCardHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->addHeaderView(Landroid/view/View;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePlaylistInfo()V
    .locals 1

    .line 651
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_PlaylistHeader:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->updatePlaylistInfo()V

    .line 653
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->updateSmartPlayShortcut()V

    return-void
.end method


# virtual methods
.method public batchSelect(Landroid/util/SparseBooleanArray;)V
    .locals 3

    .line 430
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->clearChoices()V

    const/4 v0, 0x0

    .line 431
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 432
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->refreshList()V

    return-void
.end method

.method public cancelActionMode()V
    .locals 1

    .line 645
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_ActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public dismissActionMode()V
    .locals 1

    .line 560
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_ActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public getCheckedItems()Lmobi/beyondpod/rsscore/TrackList;
    .locals 5

    .line 412
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 414
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 415
    :goto_0
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Adapter:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_1

    .line 417
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Adapter:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getTrackAt(I)Lmobi/beyondpod/rsscore/Track;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 421
    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 587
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;

    invoke-interface {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;->getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 582
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public initializeView(Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;)V
    .locals 4

    .line 112
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    .line 113
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Adapter:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setTextFilterEnabled(Z)V

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 117
    invoke-virtual {p0, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x3

    .line 119
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setChoiceMode(I)V

    .line 120
    new-instance v0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 176
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->showHowToUseDragDropCard()V

    const/4 v1, 0x0

    const v2, 0x7f0c00b0

    .line 180
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09022a

    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_SmartPlayHeader:Landroid/view/View;

    .line 182
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_SmartPlayHeader:Landroid/view/View;

    const v3, 0x7f09022b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_SmartPlayShortcut:Landroid/widget/TextView;

    const v2, 0x7f0901c7

    .line 184
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_PlaylistHeader:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    .line 186
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_SmartPlayHeader:Landroid/view/View;

    new-instance v3, Lmobi/beyondpod/ui/views/player/PlaylistListView$3;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$3;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_SmartPlayHeader:Landroid/view/View;

    const v3, 0x7f0901dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 196
    new-instance v3, Lmobi/beyondpod/ui/views/player/PlaylistListView$4;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$4;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_SmartPlayHeader:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_PlaylistHeader:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->refreshHeader()V

    .line 208
    invoke-virtual {p0, v0, v1, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 210
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Adapter:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->reloadList()V

    return-void
.end method

.method isMultiSelecting()Z
    .locals 1

    .line 566
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_ActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAfterDeactivate()V
    .locals 2

    .line 468
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 469
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v0, "ZZZZZZ"

    const-string v1, "Playlist Deactivated"

    .line 471
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBeforeActivate()V
    .locals 2

    const-string v0, "ZZZZZZ"

    const-string v1, "Playlist Activated"

    .line 477
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 480
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public onDownload(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 354
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadTrackManually(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlaylistListView$6;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView$6;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;Lmobi/beyondpod/rsscore/Track;)V

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->warnAboutStartEpisodeDownload(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 441
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Adapter:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    invoke-virtual {p1, p3}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getTrackAt(I)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 445
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result p2

    if-nez p2, :cond_0

    .line 447
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdResumePlayback()V

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 450
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPauseAudioPlayback()V

    goto :goto_0

    .line 453
    :cond_1
    invoke-static {p3}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPosition(I)Z

    :goto_0
    const/4 p1, 0x0

    .line 456
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->shouldAutoOpenPlayer(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 459
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/MasterView;

    if-eqz p1, :cond_2

    .line 460
    iget-object p2, p1, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    if-eqz p2, :cond_2

    .line 461
    iget-object p1, p1, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/Workspace;->autoExpandPlayerOnNextPlay()V

    :cond_2
    return-void
.end method

.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 0

    .line 540
    iget p1, p1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    if-nez p1, :cond_0

    .line 542
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->reloadList()V

    :cond_0
    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 527
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->refreshList()V

    .line 532
    :cond_0
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 534
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->reloadList()V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_LastTouchTime:J

    .line 555
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openShopercutOverflow(Landroid/view/View;)V
    .locals 0

    .line 640
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;->switchToSmartPlay()V

    return-void
.end method

.method public openTrackOverflow(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V
    .locals 6

    .line 595
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 596
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    const v4, 0x7f100011

    invoke-interface {p1, v2, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 597
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x23

    const/4 v4, 0x2

    const v5, 0x7f100030

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 599
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x25

    const/4 v4, 0x3

    const v5, 0x7f10002f

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 601
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 602
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->canSetAsFavorite()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f100020

    goto :goto_0

    :cond_0
    const v3, 0x7f10003d

    :goto_0
    const/16 v4, 0x26

    const/4 v5, 0x4

    .line 601
    invoke-interface {p1, v2, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 604
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x21

    const/4 v4, 0x5

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f100025

    goto :goto_1

    :cond_1
    const v5, 0x7f100023

    :goto_1
    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 606
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 607
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x24

    const/4 v4, 0x6

    const v5, 0x7f10000a

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 609
    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x2a

    const/4 v4, 0x7

    const v5, 0x7f10002a

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 611
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p1

    if-nez p1, :cond_3

    .line 612
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x22

    const/16 v4, 0x8

    const v5, 0x7f100038

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 614
    :cond_3
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlaylistListView$9;

    invoke-direct {p1, p0, p2}, Lmobi/beyondpod/ui/views/player/PlaylistListView$9;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;Lmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 624
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlaylistListView$10;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$10;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 634
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 635
    iput-boolean v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_PauseRefresh:Z

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 548
    invoke-super {p0}, Lcom/mobeta/android/dslv/DragSortListView;->performClick()Z

    move-result v0

    return v0
.end method

.method public refreshList()V
    .locals 2

    .line 503
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_PauseRefresh:Z

    if-eqz v0, :cond_1

    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlaylistListView$8;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$8;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadList()V
    .locals 2

    .line 485
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlaylistListView$7;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$7;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public selectCurrentEpisode()V
    .locals 2

    .line 571
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_Adapter:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getTrackIndex(Lmobi/beyondpod/rsscore/Track;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 576
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method updateSmartPlayShortcut()V
    .locals 2

    .line 658
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->lastUsedSmartplay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_SmartPlayShortcut:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_SmartPlayHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_SmartPlayHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_PlaylistHeader:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->refreshHeader()V

    return-void
.end method
