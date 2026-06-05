.class Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$1;
.super Ljava/lang/Object;
.source "RepeatingFrameButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$1;->this$0:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$1;->this$0:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->access$000(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;Z)V

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$1;->this$0:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$1;->this$0:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$1;->this$0:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->access$100(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
