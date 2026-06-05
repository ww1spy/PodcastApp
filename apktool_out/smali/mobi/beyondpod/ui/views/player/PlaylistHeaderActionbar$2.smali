.class Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;
.super Ljava/lang/Object;
.source "PlaylistHeaderActionbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 76
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 78
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x65

    const v4, 0x7f1002db

    invoke-interface {p1, v2, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 81
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->hasPlayed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x67

    const/4 v4, 0x2

    const v5, 0x7f10000d

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 84
    :cond_1
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->hasEpisodesToDownload()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x66

    const/4 v4, 0x3

    .line 86
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f10003a

    goto :goto_0

    :cond_2
    const v5, 0x7f100014

    .line 85
    :goto_0
    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 89
    :cond_3
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v3, 0x68

    const/16 v4, 0x1e

    const v5, 0x7f100040

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 90
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowVideosInPlaylist()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 92
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2$1;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 123
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
