.class Lmobi/beyondpod/ui/views/player/PlayerPanel$1$1;
.super Ljava/lang/Object;
.source "PlayerPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/player/PlayerPanel$1;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerPanel$1;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerPanel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerPanel$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$300(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1$1;->this$1:Lmobi/beyondpod/ui/views/player/PlayerPanel$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$400(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    return-void
.end method
