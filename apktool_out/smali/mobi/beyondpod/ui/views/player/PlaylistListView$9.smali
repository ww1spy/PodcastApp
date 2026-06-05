.class Lmobi/beyondpod/ui/views/player/PlaylistListView$9;
.super Ljava/lang/Object;
.source "PlaylistListView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistListView;->openTrackOverflow(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

.field final synthetic val$track:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$9;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$9;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 618
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 619
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$9;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$9;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-static {v1, p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$100(Lmobi/beyondpod/ui/views/player/PlaylistListView;Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/TrackList;)Z

    move-result p1

    return p1
.end method
