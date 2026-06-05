.class Lmobi/beyondpod/ui/views/player/PlaylistListView$10;
.super Ljava/lang/Object;
.source "PlaylistListView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$10;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 629
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$10;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_PauseRefresh:Z

    .line 630
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$10;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->refreshList()V

    return-void
.end method
