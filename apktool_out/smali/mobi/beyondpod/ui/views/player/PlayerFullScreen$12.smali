.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$12;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onFinishInflate()V
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

    .line 265
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$12;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 270
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$12;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$202(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;F)F

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
