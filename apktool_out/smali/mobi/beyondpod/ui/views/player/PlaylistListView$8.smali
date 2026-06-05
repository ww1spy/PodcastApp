.class Lmobi/beyondpod/ui/views/player/PlaylistListView$8;
.super Ljava/lang/Object;
.source "PlaylistListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistListView;->refreshList()V
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

    .line 510
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$8;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 514
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$8;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$300(Lmobi/beyondpod/ui/views/player/PlaylistListView;)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$8;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->isDragIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$8;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$300(Lmobi/beyondpod/ui/views/player/PlaylistListView;)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->refresh()V

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$8;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    iget-wide v2, v2, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_LastTouchTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x4e20

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 518
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$8;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->selectCurrentEpisode()V

    :cond_0
    return-void
.end method
