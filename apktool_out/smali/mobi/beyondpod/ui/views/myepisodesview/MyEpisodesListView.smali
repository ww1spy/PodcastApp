.class public Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;
.super Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListView;
.source "MyEpisodesListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;
.implements Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;
.implements Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;,
        Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;
    }
.end annotation


# static fields
.field private static final BEYOND_POD_FAQ:Ljava/lang/String;

.field private static final EPISODES_SELECTED:Ljava/lang/String;

.field private static final FREE:Ljava/lang/String;

.field private static final MENU_ADD_TO_PLAYLIST:I = 0x27

.field private static final MENU_DELETE_PODCAST:I = 0x22

.field private static final MENU_OPEN_EPISODE_FEED:I = 0x2e

.field private static final MENU_PLAY_IN_EXTERNAL_PLAYER:I = 0x2b

.field private static final MENU_PODCAST_INFO:I = 0x25

.field private static final MENU_REMOVE_FROM_PLAYLIST:I = 0x28

.field private static final MENU_RESUME_OR_STOP_DOWNLOAD:I = 0x26

.field private static final MENU_SELECT_ALL:I = 0x2d

.field private static final MENU_SELECT_PLAYED:I = 0x2c

.field private static final MENU_SHARE_PODCAST_URL:I = 0x29

.field private static final MENU_TOGGLE_LOCK_PODCAST:I = 0x2a

.field private static final MENU_TOGGLE_PLAYED:I = 0x23

.field private static final MENU_TOGGLE_PLAYLIST:I = 0x24

.field public static final MULTISELECT_ALL:I = 0x1

.field public static final MULTISELECT_NONE:I = 0x2

.field public static final MULTISELECT_PLAYED:I = 0x3

.field public static final MULTISELECT_TOP_LARGEST:I = 0x5

.field public static final MULTISELECT_TOP_OLDEST:I = 0x4

.field private static final NUM_LARGEST_TO_GET:I = 0x3

.field private static final NUM_OLDEST_TO_GET:I = 0x3

.field private static final OF:Ljava/lang/String;

.field public static final VIEW_MENU_GROUP:I = 0x20


# instance fields
.field public ViewIsScrolling:Z

.field _ActionMode:Landroid/view/ActionMode;

.field private _Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

.field private _Footer1:Landroid/widget/TextView;

.field private _Footer2:Landroid/widget/TextView;

.field _Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

.field public _PauseRefresh:Z

.field _ScrollLocation:Ljava/lang/String;

.field _ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

.field _SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

.field private _Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

.field _actionModeListener:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1002e7

    .line 93
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->BEYOND_POD_FAQ:Ljava/lang/String;

    const v0, 0x7f10022d

    .line 94
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->OF:Ljava/lang/String;

    const v0, 0x7f10029c

    .line 96
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->EPISODES_SELECTED:Ljava/lang/String;

    const v0, 0x7f1002ec

    .line 97
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->FREE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->ViewIsScrolling:Z

    .line 99
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_PauseRefresh:Z

    .line 102
    new-instance p1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    .line 104
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;

    .line 178
    new-instance p1, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    invoke-direct {p1}, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    .line 434
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$3;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->ViewIsScrolling:Z

    .line 99
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_PauseRefresh:Z

    .line 102
    new-instance p1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    .line 104
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;

    .line 178
    new-instance p1, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    invoke-direct {p1}, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    .line 434
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$3;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;Landroid/view/MenuItem;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->handleActionModeOptionsMenu(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->OF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)I
    .locals 0

    .line 67
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->visibleListSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->EPISODES_SELECTED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->FREE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)I
    .locals 0

    .line 67
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->totalListSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;Lmobi/beyondpod/rsscore/Track;Landroid/view/MenuItem;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->handleCardMenu(Lmobi/beyondpod/rsscore/Track;Landroid/view/MenuItem;)V

    return-void
.end method

.method private addAsSelectedItem(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private buildCardMenu(Landroid/view/Menu;Lmobi/beyondpod/rsscore/Track;)V
    .locals 5

    const/16 v0, 0x20

    const/16 v1, 0x22

    const/4 v2, 0x1

    const v3, 0x7f100011

    .line 836
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 838
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f100020

    goto :goto_0

    :cond_0
    const v1, 0x7f10003d

    :goto_0
    const/4 v2, 0x4

    const/16 v3, 0x2a

    invoke-interface {p1, v0, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x23

    .line 842
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f100025

    goto :goto_1

    :cond_1
    const v3, 0x7f100023

    :goto_1
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 847
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x29

    const/4 v2, 0x6

    const v3, 0x7f10000a

    .line 848
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 851
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->episodeCardSize()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const/16 v1, 0x24

    const/4 v3, 0x2

    .line 853
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f100030

    goto :goto_2

    :cond_3
    const v4, 0x7f100002

    :goto_2
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 856
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/16 v3, 0x25

    const v4, 0x7f10002f

    .line 857
    invoke-interface {p1, v1, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 860
    :cond_4
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x2e

    const/4 v1, 0x7

    const v2, 0x7f10002a

    .line 861
    invoke-interface {p1, v0, p2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method private handleActionModeOptionsMenu(Landroid/view/MenuItem;)Z
    .locals 1

    .line 254
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->handleOptionsMenu(Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/TrackList;)Z

    move-result p1

    return p1
.end method

.method private handleCardMenu(Lmobi/beyondpod/rsscore/Track;Landroid/view/MenuItem;)V
    .locals 1

    .line 866
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 867
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-direct {p0, p2, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->handleOptionsMenu(Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/TrackList;)Z

    return-void
.end method

.method private handleOptionsMenu(Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/TrackList;)Z
    .locals 3

    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 317
    :pswitch_0
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 318
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p2

    invoke-interface {p1, p2, v0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    :cond_0
    return v1

    .line 267
    :pswitch_1
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->multiSelectTracks(I)V

    return v0

    :pswitch_2
    const/4 p1, 0x3

    .line 263
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->multiSelectTracks(I)V

    return v0

    .line 305
    :pswitch_3
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 306
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :cond_1
    return v1

    .line 298
    :pswitch_4
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->hasUnLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 299
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUnlockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    :goto_0
    return v0

    .line 311
    :pswitch_5
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 312
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSharePodcast(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :cond_3
    return v1

    .line 294
    :pswitch_6
    invoke-static {p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdRemoveFromPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V

    return v1

    .line 290
    :pswitch_7
    invoke-static {p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddToPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V

    return v1

    .line 283
    :pswitch_8
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 284
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowDownloadQueue()V

    goto :goto_1

    .line 286
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadTracksManually(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    :goto_1
    return v1

    .line 331
    :pswitch_9
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 332
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    const/4 v2, 0x0

    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllEpisodes()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    invoke-interface {p1, v2, p2, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->openTrackPropertiesDialog(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V

    :cond_5
    return v1

    .line 324
    :pswitch_a
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 325
    invoke-virtual {p2, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->onAddRemovePlaylist(Lmobi/beyondpod/rsscore/Track;)V

    :cond_6
    return v1

    .line 271
    :pswitch_b
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->hasUnPlayed()Z

    move-result p1

    .line 272
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    .line 273
    invoke-static {v1, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetPlayedState(Lmobi/beyondpod/rsscore/Track;Z)V

    goto :goto_2

    :cond_7
    return v0

    .line 278
    :pswitch_c
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 279
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeletePodcasts(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    :cond_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_c
        :pswitch_b
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

.method private openFeedContent(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 636
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 637
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setItemFilter(I)V

    .line 639
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    return-void
.end method

.method private removeAsSelectedItem(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private totalListSize()I
    .locals 1

    .line 466
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getTotalEpisodeCount()I

    move-result v0

    return v0
.end method

.method private visibleListSize()I
    .locals 1

    .line 471
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getVisibleEpisodeCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAllPlayedEpisodes()Lmobi/beyondpod/rsscore/TrackList;
    .locals 1

    .line 899
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllPlayedEpisodes()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedSizeOnDiskFor(Lmobi/beyondpod/rsscore/TrackList;)Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;
    .locals 8

    .line 586
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;-><init>()V

    .line 588
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    .line 589
    iget-wide v2, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getSizeOnDisk()J

    move-result-wide v4

    add-long v6, v2, v4

    iput-wide v6, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 692
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 695
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;

    invoke-interface {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;->getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 644
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getViewTitle()Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;
    .locals 4

    .line 414
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->subTitle:Ljava/lang/String;

    .line 416
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 420
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 421
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    iput-object v2, v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->primaryTitle:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iput v1, v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->selectorType:I

    goto :goto_1

    .line 426
    :cond_2
    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->primaryTitle:Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    iput v1, v2, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->selectorType:I

    .line 431
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    return-object v0
.end method

.method public hasPlayedEpisodes()Z
    .locals 1

    .line 537
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->hasPlayedEpisodes()Z

    move-result v0

    return v0
.end method

.method initializeView(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;)V
    .locals 4

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setHeaderDividersEnabled(Z)V

    .line 196
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setFooterDividersEnabled(Z)V

    const/high16 v1, 0x2000000

    .line 198
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setScrollBarStyle(I)V

    .line 200
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->appBarScrollAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 201
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 203
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    .line 204
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    .line 206
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c005d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f09010e

    .line 207
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f09010f

    .line 208
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Footer1:Landroid/widget/TextView;

    const v3, 0x7f090110

    .line 209
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Footer2:Landroid/widget/TextView;

    .line 210
    invoke-virtual {p0, p1, v2, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 212
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$2;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setTextFilterEnabled(Z)V

    .line 228
    invoke-virtual {p0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 532
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->visibleListSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isItemSelected(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 1

    .line 249
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMultiSelecting()Z
    .locals 1

    .line 751
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiSelectTracks(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 620
    :pswitch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    .line 621
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getLargestPodcasts()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p1

    .line 622
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 624
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 613
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    .line 614
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getOldestEpisodes()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p1

    .line 615
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 616
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 608
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    .line 609
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllPlayedEpisodes()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 599
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    goto :goto_0

    .line 603
    :pswitch_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    .line 604
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllEpisodes()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    .line 628
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->refreshContent()V

    .line 630
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->isMultiSelecting()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 631
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;Lmobi/beyondpod/rsscore/Track;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyCardSizeChanged()V
    .locals 2

    .line 477
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getItemIdForPosition(I)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->serialize(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocation:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 480
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 904
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->onActivityDestroy()V

    :cond_0
    return-void
.end method

.method public onAdapterDataLoaded(II)V
    .locals 7

    .line 649
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->refreshActiveViewTitle()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez p1, :cond_2

    if-ge p1, p2, :cond_1

    .line 659
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f030025

    .line 660
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveMediaFilter()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 659
    invoke-static {p1, p2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexInNumArray(Landroid/content/Context;ILjava/lang/Object;)I

    move-result p1

    .line 662
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1002e2

    new-array v4, v0, [Ljava/lang/Object;

    .line 664
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    aget-object p1, v5, p1

    aput-object p1, v4, v1

    .line 662
    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1002e4

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 668
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 669
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 671
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1002e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 672
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1002e3

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p1, v2

    move-object p2, p1

    .line 676
    :goto_1
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 678
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Footer1:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Footer2:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Footer2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 684
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Footer1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Footer2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Footer2:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public onAddRemovePlaylist(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 802
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddRemoveToPlaylist(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method public onAfterActivate()V
    .locals 1

    .line 342
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->onAfterActivate()V

    :cond_0
    return-void
.end method

.method public onAfterDeactivate()V
    .locals 1

    .line 348
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 351
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->onAfterDeactivate()V

    :cond_1
    return-void
.end method

.method public onBeforeActivate()V
    .locals 1

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->ViewIsScrolling:Z

    .line 363
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    return-void
.end method

.method public onDownload(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 783
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 786
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadTrackManually(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 789
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$6;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$6;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;Lmobi/beyondpod/rsscore/Track;)V

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->warnAboutStartEpisodeDownload(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onEmptyViewSelected()V
    .locals 3

    .line 701
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->totalListSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 703
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    .line 705
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->updateAndDownloadHelpFileURL()Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->BEYOND_POD_FAQ:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 708
    :cond_0
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->openFeedContent(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 712
    :cond_1
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setActiveMediaFilter(I)V

    .line 713
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    :goto_0
    return-void
.end method

.method public onItemLongPressed(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 757
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 760
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->addAsSelectedItem(Lmobi/beyondpod/rsscore/Track;)V

    .line 761
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;Lmobi/beyondpod/rsscore/Track;)V

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 720
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->isItemSelected(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->removeAsSelectedItem(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 727
    :cond_0
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->addAsSelectedItem(Lmobi/beyondpod/rsscore/Track;)V

    const/4 v0, 0x1

    .line 731
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 733
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return-void

    .line 737
    :cond_1
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_2

    .line 738
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 740
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-interface {p1, v0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_1

    .line 744
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllEpisodes()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->openTrackPropertiesDialog(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V

    :goto_1
    return-void
.end method

.method public onPlayPause(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 770
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 771
    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetPlayedState(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 773
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v1, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->generatePlaylist(Lmobi/beyondpod/rsscore/Track;)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPauseTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z

    move-result p1

    .line 775
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->shouldAutoOpenPlayer(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 776
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->autoExpandPlayerOnNextPlay()V

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 574
    :pswitch_0
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->ViewIsScrolling:Z

    goto :goto_0

    .line 570
    :pswitch_1
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->ViewIsScrolling:Z

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 555
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->ViewIsScrolling:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareActionModeOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .line 368
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    .line 370
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->hasPlayedEpisodes()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    const/16 v4, 0xa

    const v5, 0x7f100267

    .line 371
    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const/16 v1, 0x2d

    const/16 v4, 0xc

    const v5, 0x7f100266

    .line 374
    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 377
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 381
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->hasNotDownloaded()Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x26

    const v5, 0x7f100038

    .line 383
    invoke-interface {p1, v3, v1, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v5, 0x7f0800b9

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    const/16 v1, 0x22

    const v5, 0x7f100011

    const/4 v6, 0x1

    .line 388
    invoke-interface {p1, v3, v1, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v5, 0x7f0800da

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 392
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->hasNotInPlaylist()Z

    move-result v1

    const/4 v5, 0x4

    if-eqz v1, :cond_3

    const/16 v1, 0x27

    const v7, 0x7f100002

    .line 393
    invoke-interface {p1, v3, v1, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x28

    const v7, 0x7f100030

    .line 396
    invoke-interface {p1, v3, v1, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 397
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    const/16 v1, 0x23

    .line 399
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->hasUnPlayed()Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f100023

    goto :goto_1

    :cond_4
    const v5, 0x7f100025

    :goto_1
    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f0800d7

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 402
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    if-ne v0, v6, :cond_5

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/16 v0, 0x2b

    const/4 v1, 0x5

    const v2, 0x7f10002e

    .line 403
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method public refreshContent()V
    .locals 2

    .line 516
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_PauseRefresh:Z

    if-eqz v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$5;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$5;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadContent()V
    .locals 2

    .line 485
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 0

    .line 461
    iget-object p1, p1, Lmobi/beyondpod/ui/core/MasterViewState;->podcastsFirstVisibleItem:Ljava/lang/String;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocation:Ljava/lang/String;

    return-void
.end method

.method public saveState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 3

    .line 454
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getItemIdForPosition(I)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->serialize(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmobi/beyondpod/ui/core/MasterViewState;->podcastsFirstVisibleItem:Ljava/lang/String;

    const-string p1, "QQQQ"

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showCardMenu(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 807
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 809
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->buildCardMenu(Landroid/view/Menu;Lmobi/beyondpod/rsscore/Track;)V

    .line 811
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$7;

    invoke-direct {p1, p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$7;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;Lmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 820
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$8;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$8;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 830
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    const/4 p1, 0x1

    .line 831
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_PauseRefresh:Z

    return-void
.end method
