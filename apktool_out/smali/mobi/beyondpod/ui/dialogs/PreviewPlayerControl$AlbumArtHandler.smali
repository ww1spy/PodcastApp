.class Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;
.super Landroid/os/Handler;
.source "PreviewPlayerControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;Landroid/os/Looper;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    .line 186
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 191
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 195
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$000(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/ui/views/base/AlbumView;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/AlbumView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$000(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/ui/views/base/AlbumView;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/AlbumView;->getHeight()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$100(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$100(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$100(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 207
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$200(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$200(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$000(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/ui/views/base/AlbumView;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/AlbumView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    .line 210
    invoke-static {v2}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$000(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/ui/views/base/AlbumView;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/base/AlbumView;->getHeight()I

    move-result v2

    .line 209
    invoke-static {p1, v0, v2}, Lmobi/beyondpod/ui/core/FeedImageCache;->getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 214
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$100(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$100(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$100(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 197
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->removeMessages(I)V

    .line 198
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public sendSetCurrentArtMessage()V
    .locals 1

    const/4 v0, 0x2

    .line 224
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->removeMessages(I)V

    .line 225
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
