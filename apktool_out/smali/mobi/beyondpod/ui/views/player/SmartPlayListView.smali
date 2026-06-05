.class public Lmobi/beyondpod/ui/views/player/SmartPlayListView;
.super Landroid/widget/ListView;
.source "SmartPlayListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;
    }
.end annotation


# static fields
.field private static final MENU_ADD_TO_HOME_SCREEN:I = 0x5

.field private static final MENU_DELETE_PLAYLIST:I = 0x3

.field private static final MENU_EDIT_PLAYLIST:I = 0x2

.field private static final MENU_SET_DEFAULT_PLAYLIST:I = 0x4

.field private static final MENU_UPDATE_PLAYLIST:I = 0x1


# instance fields
.field private _Adapter:Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

.field _CanCreateShortcut:Z

.field private _Owner:Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_CanCreateShortcut:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_CanCreateShortcut:Z

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/SmartPlayListView;)Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Adapter:Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/SmartPlayListView;)Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;
    .locals 0

    .line 47
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Owner:Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/player/SmartPlayListView;)I
    .locals 0

    .line 47
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->nextShortcutIconResId()I

    move-result p0

    return p0
.end method

.method private isInitialized()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Owner:Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Adapter:Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextShortcutIconResId()I
    .locals 3

    const/4 v0, 0x4

    .line 219
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 226
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->nextSmartPlayShortcutId()I

    move-result v1

    .line 227
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 231
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setNextSmartPlayShortcutId(I)V

    .line 233
    aget v0, v0, v2

    return v0

    :array_0
    .array-data 4
        0x7f0801e9
        0x7f0801e8
        0x7f0801ea
        0x7f0801e7
    .end array-data
.end method


# virtual methods
.method public initializeView(Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_CanCreateShortcut:Z

    .line 76
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Owner:Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;

    .line 77
    new-instance p1, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/player/SmartPlayListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Adapter:Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->setTextFilterEnabled(Z)V

    .line 80
    invoke-virtual {p0, p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Adapter:Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->reloadList()V

    return-void
.end method

.method public onAfterDeactivate()V
    .locals 0

    return-void
.end method

.method public onBeforeActivate()V
    .locals 0

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

    .line 94
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 95
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Adapter:Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    invoke-virtual {p1, p3}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->getItemAt(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Owner:Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;

    invoke-interface {p2, p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;->onPlaylistSelected(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    :cond_0
    return-void
.end method

.method public openPlaylistOverflow(Landroid/view/View;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
    .locals 5

    .line 131
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 133
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f10003f

    invoke-interface {p1, v2, v1, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 134
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v3, 0x2

    const v4, 0x7f100018

    invoke-interface {p1, v2, v3, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 135
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v3, 0x3

    const v4, 0x7f100012

    invoke-interface {p1, v2, v3, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 137
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->numVisiblePlaylists()I

    move-result p1

    if-le p1, v1, :cond_0

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->primarySmartPlay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p1

    if-eq p2, p1, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f100034

    const/4 v3, 0x4

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 140
    :cond_0
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_CanCreateShortcut:Z

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f100003

    const/4 v3, 0x5

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 143
    :cond_1
    new-instance p1, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;

    invoke-direct {p1, p0, p2}, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;-><init>(Lmobi/beyondpod/ui/views/player/SmartPlayListView;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 214
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public reloadList()V
    .locals 2

    .line 113
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->_Owner:Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;

    new-instance v1, Lmobi/beyondpod/ui/views/player/SmartPlayListView$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView$1;-><init>(Lmobi/beyondpod/ui/views/player/SmartPlayListView;)V

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
