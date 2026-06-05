.class Lmobi/beyondpod/ui/views/player/PlaylistListView$7;
.super Ljava/lang/Object;
.source "PlaylistListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistListView;->reloadList()V
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

    .line 489
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$7;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 493
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$7;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$300(Lmobi/beyondpod/ui/views/player/PlaylistListView;)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$7;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$300(Lmobi/beyondpod/ui/views/player/PlaylistListView;)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->reloadTracks()V

    .line 496
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$7;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$600(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V

    return-void
.end method
