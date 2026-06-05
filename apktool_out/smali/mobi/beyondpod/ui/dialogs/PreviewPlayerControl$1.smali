.class Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$1;
.super Landroid/os/Handler;
.source "PreviewPlayerControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$1;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$1;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$000(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/ui/views/base/AlbumView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/AlbumView;->setArtwork(Landroid/graphics/Bitmap;)V

    .line 177
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$1;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$000(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/ui/views/base/AlbumView;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/AlbumView;->invalidate()V

    :cond_0
    return-void
.end method
