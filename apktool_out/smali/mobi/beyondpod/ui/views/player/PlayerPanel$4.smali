.class Lmobi/beyondpod/ui/views/player/PlayerPanel$4;
.super Ljava/lang/Object;
.source "PlayerPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerPanel;->onActivated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$4;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 246
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$4;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->isPlayerExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$4;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$800(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onActivated()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$4;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$900(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/ui/views/player/PlayerMini;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->onActivated()V

    :goto_0
    return-void
.end method
