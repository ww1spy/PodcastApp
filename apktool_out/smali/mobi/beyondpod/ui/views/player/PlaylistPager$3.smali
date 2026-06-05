.class Lmobi/beyondpod/ui/views/player/PlaylistPager$3;
.super Ljava/lang/Object;
.source "PlaylistPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistPager;->selectCurrentEpisode(Z)V
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

    .line 127
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$3;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 133
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$3;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$3;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getCurrentItem()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method
