.class Lmobi/beyondpod/ui/views/player/PlaylistPager$2;
.super Ljava/lang/Object;
.source "PlaylistPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistPager;->reloadList()V
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

    .line 97
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_PagerAdapter:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->reloadTracks()V

    .line 104
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/player/PlaylistPager;->_PagerAdapter:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPager$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->access$000(Lmobi/beyondpod/ui/views/player/PlaylistPager;Z)V

    return-void
.end method
