.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$4;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$4;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 0

    .line 120
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$4;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    move-result-object p1

    invoke-interface {p1, p4, p2, p3}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->scanBackward(IJ)V

    return-void
.end method
