.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;

.field final synthetic val$current:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;->val$current:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 437
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 444
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowVideosInPlaylist()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setAllowVideosInPlaylist(Z)V

    .line 445
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLoadCurrentTrack()V

    return v1

    .line 459
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    move-result-object p1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;->val$current:Lmobi/beyondpod/rsscore/Track;

    invoke-interface {p1, v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->openTrackFeed(Lmobi/beyondpod/rsscore/Track;)V

    return v0

    .line 449
    :pswitch_2
    new-instance p1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 450
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;->val$current:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->hasUnLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUnlockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    :goto_0
    return v0

    .line 440
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSharePodcast(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
