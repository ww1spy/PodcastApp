.class Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$1;
.super Ljava/lang/Object;
.source "PlaylistPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->loadItemData(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

.field final synthetic val$episode:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$1;->val$episode:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->access$000(Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;)Lmobi/beyondpod/ui/views/player/PlaylistPager;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$1;->val$episode:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->episodePlayPause(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method
