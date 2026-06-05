.class Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$2;
.super Landroid/os/Handler;
.source "VisualizerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 148
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 150
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->startVisualizerAnimation()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->pauseVisualizerAnimation()V

    .line 155
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$2;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->access$200(Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;J)V

    :cond_1
    return-void
.end method
