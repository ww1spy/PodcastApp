.class Lmobi/beyondpod/ui/views/player/PlayerPanel$5$1;
.super Ljava/lang/Object;
.source "PlayerPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerPanel$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/player/PlayerPanel$5;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerPanel$5;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$5$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerPanel$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 298
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$5$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerPanel$5;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/player/PlayerPanel$5;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$300(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    return-void
.end method
