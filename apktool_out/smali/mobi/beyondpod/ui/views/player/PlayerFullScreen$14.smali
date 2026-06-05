.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->loadActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 420
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 422
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 425
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f10000a

    const/4 v5, 0x0

    invoke-interface {v3, v2, v2, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 426
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 427
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->canSetAsFavorite()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f100020

    goto :goto_0

    :cond_0
    const v4, 0x7f10003d

    :goto_0
    const/4 v6, 0x2

    .line 426
    invoke-interface {v3, v5, v6, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 428
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f10002a

    invoke-interface {v3, v2, v1, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 431
    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v4, 0x4

    const v5, 0x7f100040

    invoke-interface {v3, v2, v4, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 432
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowVideosInPlaylist()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 433
    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;Lmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 467
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
