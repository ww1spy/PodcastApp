.class Lmobi/beyondpod/ui/views/player/SmartPlayListView$1;
.super Ljava/lang/Object;
.source "SmartPlayListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/SmartPlayListView;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/SmartPlayListView;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$1;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$1;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->access$000(Lmobi/beyondpod/ui/views/player/SmartPlayListView;)Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$1;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->access$000(Lmobi/beyondpod/ui/views/player/SmartPlayListView;)Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->reloadPlaylists()V

    :cond_0
    return-void
.end method
