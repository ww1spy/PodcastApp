.class Lmobi/beyondpod/ui/views/player/PlaylistFragment$1;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->lastUsedSmartplay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->onPlaylistSelected(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    return-void
.end method
