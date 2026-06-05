.class Lmobi/beyondpod/ui/views/player/SmartPlayListView$2$1;
.super Ljava/lang/Object;
.source "SmartPlayListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2$1;->this$1:Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 166
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2$1;->this$1:Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-static {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->deleteSmartPlaylist(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    .line 167
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->saveToDatabase()V

    .line 168
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2$1;->this$1:Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->reloadList()V

    .line 169
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2$1;->this$1:Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->access$100(Lmobi/beyondpod/ui/views/player/SmartPlayListView;)Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;

    move-result-object p1

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView$IPlayListOwner;->onSmartPlaylistDeleted()V

    return-void
.end method
