.class Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$1;
.super Ljava/lang/Object;
.source "MyEpisodesHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 365
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesHolder;->PodcastList:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->refreshContent()V

    return-void
.end method
