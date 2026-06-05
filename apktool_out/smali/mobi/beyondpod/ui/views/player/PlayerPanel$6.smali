.class Lmobi/beyondpod/ui/views/player/PlayerPanel$6;
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

    .line 693
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$6;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 697
    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    .line 698
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$6;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->expandPlayer()V

    return-void
.end method
