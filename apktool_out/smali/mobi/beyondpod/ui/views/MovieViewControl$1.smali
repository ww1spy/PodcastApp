.class Lmobi/beyondpod/ui/views/MovieViewControl$1;
.super Ljava/lang/Object;
.source "MovieViewControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/MovieViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MovieViewControl;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MovieViewControl;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 83
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$000(Lmobi/beyondpod/ui/views/MovieViewControl;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$100(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$300(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$200(Lmobi/beyondpod/ui/views/MovieViewControl;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$400(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$500(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$600(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$700(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$800(Lmobi/beyondpod/ui/views/MovieViewControl;)Lmobi/beyondpod/ui/views/base/BPMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$800(Lmobi/beyondpod/ui/views/MovieViewControl;)Lmobi/beyondpod/ui/views/base/BPMediaController;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->hideNavigationDelayed(J)V

    goto :goto_1

    .line 98
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$300(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$200(Lmobi/beyondpod/ui/views/MovieViewControl;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$400(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$900()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    iget-object v4, v4, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$400(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$800(Lmobi/beyondpod/ui/views/MovieViewControl;)Lmobi/beyondpod/ui/views/base/BPMediaController;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    .line 108
    :cond_2
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$1;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$800(Lmobi/beyondpod/ui/views/MovieViewControl;)Lmobi/beyondpod/ui/views/base/BPMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->updateTimeAndPosition()V

    return-void
.end method
