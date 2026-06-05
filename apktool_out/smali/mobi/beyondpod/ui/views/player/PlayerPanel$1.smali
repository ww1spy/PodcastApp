.class Lmobi/beyondpod/ui/views/player/PlayerPanel$1;
.super Ljava/lang/Object;
.source "PlayerPanel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 83
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {p2}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lmobi/beyondpod/services/player/IMediaPlaybackService;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$002(Lmobi/beyondpod/ui/views/player/PlayerPanel;Lmobi/beyondpod/services/player/IMediaPlaybackService;)Lmobi/beyondpod/services/player/IMediaPlaybackService;

    .line 87
    sget-object p1, Lmobi/beyondpod/services/player/PlayerUtils;->sService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$000(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/services/player/IMediaPlaybackService;

    move-result-object p1

    sput-object p1, Lmobi/beyondpod/services/player/PlayerUtils;->sService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    .line 92
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$000(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/services/player/IMediaPlaybackService;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 95
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$100(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$200(Lmobi/beyondpod/ui/views/player/PlayerPanel;J)V

    .line 97
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$500(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;

    move-result-object p1

    new-instance p2, Lmobi/beyondpod/ui/views/player/PlayerPanel$1$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$1$1;-><init>(Lmobi/beyondpod/ui/views/player/PlayerPanel$1;)V

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/views/player/PlayerPanel$IPlayerPanelOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
