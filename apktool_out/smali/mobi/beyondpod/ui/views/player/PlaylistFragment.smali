.class public Lmobi/beyondpod/ui/views/player/PlaylistFragment;
.super Landroid/support/v4/app/Fragment;
.source "PlaylistFragment.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;
.implements Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlaylistFragment"


# instance fields
.field _Expander:Landroid/widget/ImageView;

.field private _IsInitialized:Z

.field _PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

.field _SmartPlayList:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

.field private _SmartPlayOffset:I

.field _SmartPlayPanel:Landroid/view/View;

.field private _SmartPlayShortcut:Landroid/widget/TextView;

.field _SplBottom:Landroid/view/View;

.field _SplTop:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_IsInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/PlaylistFragment;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->switchToPlaylist(Z)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->refreshSmartPlays()V

    return-void
.end method

.method private refreshSmartPlays()V
    .locals 1

    .line 241
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->updateSmartPlayShortcut()V

    .line 242
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->updateSmartPlayShortcut()V

    .line 243
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->numVisiblePlaylists()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->switchToPlaylist(Z)V

    :cond_0
    return-void
.end method

.method private switchToPlaylist(Z)V
    .locals 8

    .line 290
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayPanel:Landroid/view/View;

    .line 291
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 296
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayPanel:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayList:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 301
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayList:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x10e0000

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 308
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 309
    new-array v3, v2, [Landroid/animation/Animator;

    new-instance v4, Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayList:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-direct {v4, v5}, Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;-><init>(Landroid/view/View;)V

    new-array v5, v2, [Ljava/lang/Object;

    .line 310
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getSmartPlayHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_Expander:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 311
    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v7

    .line 309
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 312
    new-instance v0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment$5;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v2, p1

    .line 326
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 327
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 329
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->updateSmartPlayShortcut()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3ccc0000    # -180.0f
    .end array-data
.end method


# virtual methods
.method public closeSmartPlayListIfNeeded()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 342
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->switchToPlaylist(Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOwnerActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 198
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method getSmartPlayHeight()I
    .locals 2

    .line 249
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getHeight()I

    move-result v0

    iget v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public notifyDrawerClosed()V
    .locals 1

    .line 334
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->cancelActionMode()V

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->switchToPlaylist(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700f0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 67
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayOffset:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const p3, 0x7f0c00ad

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901c4

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/player/PlaylistListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    .line 76
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->registerForContextMenu(Landroid/view/View;)V

    const p2, 0x7f090241

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayPanel:Landroid/view/View;

    .line 79
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayPanel:Landroid/view/View;

    const p3, 0x7f09023e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayList:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    .line 81
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayPanel:Landroid/view/View;

    const p3, 0x7f09021e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 82
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0600d3

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f090240

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SplBottom:Landroid/view/View;

    const p2, 0x7f090263

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SplTop:Landroid/view/View;

    const p2, 0x7f09022a

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09022b

    .line 90
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayShortcut:Landroid/widget/TextView;

    .line 92
    new-instance p3, Lmobi/beyondpod/ui/views/player/PlaylistFragment$1;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment$1;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0901dd

    .line 101
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_Expander:Landroid/widget/ImageView;

    .line 102
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_Expander:Landroid/widget/ImageView;

    const p3, 0x7f0800f7

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_Expander:Landroid/widget/ImageView;

    new-instance p3, Lmobi/beyondpod/ui/views/player/PlaylistFragment$2;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment$2;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09003c

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 114
    new-instance p3, Lmobi/beyondpod/ui/views/player/PlaylistFragment$3;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment$3;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 174
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 167
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->onAfterDeactivate()V

    .line 168
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onPlaylistSelected(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
    .locals 1

    .line 204
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->autoPlaySmartPlaylists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result p1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlaySmartPlayList(ILandroid/content/Context;)Z

    .line 207
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 209
    check-cast p1, Lmobi/beyondpod/ui/views/MasterView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/Workspace;->autoExpandPlayerOnNextPlay()V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result p1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLoadSmartPlayList(ILandroid/content/Context;)V

    .line 216
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->updateSmartPlayShortcut()V

    const/4 p1, 0x1

    .line 217
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->switchToPlaylist(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->onBeforeActivate()V

    .line 155
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_IsInitialized:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->reloadList()V

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayList:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->reloadList()V

    .line 159
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->refreshSmartPlays()V

    .line 161
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public onSmartPlaylistDeleted()V
    .locals 0

    .line 236
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->refreshSmartPlays()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->dismissActionMode()V

    .line 147
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public openTrackFeed(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    check-cast v0, Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MasterView;->requestDrawersClose()V

    .line 228
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lmobi/beyondpod/ui/views/MasterView;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    :cond_0
    return-void
.end method

.method public openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenEpisodeNotes(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->initializeView(Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;)V

    .line 137
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayList:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {p1, p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->initializeView(Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;)V

    .line 138
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->selectCurrentEpisode()V

    .line 139
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->updateSmartPlayShortcut()V

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_IsInitialized:Z

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 192
    :cond_0
    sget-object p1, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->TAG:Ljava/lang/String;

    const-string v0, "Activity is null. Cannot run on UI thread."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public switchToSmartPlay()V
    .locals 9

    .line 255
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayPanel:Landroid/view/View;

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 261
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 262
    new-array v3, v2, [Landroid/animation/Animator;

    new-instance v4, Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayList:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-direct {v4, v5}, Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;-><init>(Landroid/view/View;)V

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 263
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->getSmartPlayHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_Expander:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 264
    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v8

    .line 262
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 265
    new-instance v2, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v2, v0

    .line 284
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 285
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method updateSmartPlayShortcut()V
    .locals 2

    .line 128
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->lastUsedSmartplay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayShortcut:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
