.class Lmobi/beyondpod/ui/views/player/PlaylistPager$1;
.super Ljava/lang/Object;
.source "PlaylistPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistPager;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistPager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 75
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_PagerAdapter:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    move v1, v0

    .line 77
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getChildCount()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 79
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09006e

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    if-eqz v2, :cond_0

    .line 82
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iget-object v3, v3, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_PagerAdapter:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v4, v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->loadItemData(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 86
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iget-object v2, v2, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_CurrentlyPlayingEpisode:Lmobi/beyondpod/rsscore/Track;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iget-object v2, v2, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_CurrentlyPlayingEpisode:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 87
    :cond_3
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iput-object v1, v2, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_CurrentlyPlayingEpisode:Lmobi/beyondpod/rsscore/Track;

    .line 89
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->access$000(Lmobi/beyondpod/ui/views/player/PlaylistPager;Z)V

    return-void
.end method
