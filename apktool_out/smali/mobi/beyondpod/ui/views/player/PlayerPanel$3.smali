.class Lmobi/beyondpod/ui/views/player/PlayerPanel$3;
.super Landroid/os/Handler;
.source "PlayerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlayerPanel;
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

    .line 170
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$3;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$3;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$700(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 176
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$3;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$300(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V

    .line 178
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 179
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$3;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$3;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$100(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$200(Lmobi/beyondpod/ui/views/player/PlayerPanel;J)V

    :cond_1
    return-void
.end method
