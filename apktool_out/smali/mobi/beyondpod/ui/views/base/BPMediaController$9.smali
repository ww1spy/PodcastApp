.class Lmobi/beyondpod/ui/views/base/BPMediaController$9;
.super Ljava/lang/Object;
.source "BPMediaController.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;


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

    .line 492
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$9;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 0

    .line 495
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$9;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    long-to-int p2, p2

    invoke-static {p1, p4, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$1000(Lmobi/beyondpod/ui/views/base/BPMediaController;II)V

    return-void
.end method
