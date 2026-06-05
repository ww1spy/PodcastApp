.class Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2$1;
.super Ljava/lang/Object;
.source "PlaylistHeaderActionbar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2$1;->this$1:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 115
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowVideosInPlaylist()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setAllowVideosInPlaylist(Z)V

    .line 116
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLoadCurrentTrack()V

    return v1

    .line 103
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2$1;->this$1:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->getAllPlayed()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeletePodcasts(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    return v1

    .line 108
    :pswitch_2
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowDownloadQueue()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2$1;->this$1:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadAllInPlaylistManually(Landroid/content/Context;)V

    :goto_0
    return v1

    .line 99
    :pswitch_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->keepCurrentEpisodeForClearPlaylist()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEmptyPlaylist(ZZ)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
