.class Lmobi/beyondpod/ui/views/player/PlaylistListView$3;
.super Ljava/lang/Object;
.source "PlaylistListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistListView;->initializeView(Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;)V
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

    .line 187
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$3;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$3;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$400(Lmobi/beyondpod/ui/views/player/PlaylistListView;)Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->lastUsedSmartplay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;->onPlaylistSelected(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    return-void
.end method
