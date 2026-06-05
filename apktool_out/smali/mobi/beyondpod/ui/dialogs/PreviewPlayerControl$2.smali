.class Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$2;
.super Ljava/lang/Object;
.source "PreviewPlayerControl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 230
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$2;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 233
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$2;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$300(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$2;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$400(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$2;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$100(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$2;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->access$500(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
