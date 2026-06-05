.class Lmobi/beyondpod/ui/views/base/BPMediaController$10;
.super Landroid/os/Handler;
.source "BPMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/BPMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$10;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 603
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$10;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$700(Lmobi/beyondpod/ui/views/base/BPMediaController;)I

    move-result p1

    .line 607
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$10;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$200(Lmobi/beyondpod/ui/views/base/BPMediaController;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$10;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$1100(Lmobi/beyondpod/ui/views/base/BPMediaController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$10;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$400(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/BPMediaController$10;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 610
    rem-int/lit16 p1, p1, 0x3e8

    rsub-int p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPMediaController$10;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method
