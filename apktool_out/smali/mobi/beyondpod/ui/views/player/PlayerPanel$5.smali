.class Lmobi/beyondpod/ui/views/player/PlayerPanel$5;
.super Ljava/lang/Object;
.source "PlayerPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerPanel;->onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
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

    .line 287
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$5;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 292
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$5;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerPanel$5$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$5$1;-><init>(Lmobi/beyondpod/ui/views/player/PlayerPanel$5;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
