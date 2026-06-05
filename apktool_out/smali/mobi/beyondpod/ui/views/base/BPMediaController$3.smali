.class Lmobi/beyondpod/ui/views/base/BPMediaController$3;
.super Ljava/lang/Object;
.source "BPMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 400
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$400(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->getDuration()I

    move-result p1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr p1, v0

    const-wide/16 v2, 0x3e8

    .line 425
    div-long/2addr p1, v2

    .line 426
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$400(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/widget/VideoView;

    move-result-object p3

    long-to-int v4, p1

    invoke-virtual {p3, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 428
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$500(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v0, p1

    div-long/2addr v5, v2

    const/4 v0, 0x1

    invoke-static {v5, v6, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object p3, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$600(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/widget/TextView;

    move-result-object p3

    div-long/2addr p1, v2

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 403
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    .line 405
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$202(Lmobi/beyondpod/ui/views/base/BPMediaController;Z)Z

    .line 412
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$300(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 434
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$202(Lmobi/beyondpod/ui/views/base/BPMediaController;Z)Z

    .line 435
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$700(Lmobi/beyondpod/ui/views/base/BPMediaController;)I

    .line 436
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$800(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    .line 437
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    .line 442
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$3;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$300(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
