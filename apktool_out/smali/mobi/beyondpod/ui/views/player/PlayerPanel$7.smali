.class Lmobi/beyondpod/ui/views/player/PlayerPanel$7;
.super Ljava/lang/Object;
.source "PlayerPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerPanel;->autoShowPlayerIfNeeded()V
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

    .line 705
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$7;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 709
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$7;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$1002(Lmobi/beyondpod/ui/views/player/PlayerPanel;Z)Z

    .line 710
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$7;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->expandPlayer()V

    return-void
.end method
