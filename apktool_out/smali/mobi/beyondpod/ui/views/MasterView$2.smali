.class Lmobi/beyondpod/ui/views/MasterView$2;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/MasterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MasterView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$2;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$2;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MasterView;->refreshActionBarTitle()V

    .line 185
    iget p1, p1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    if-nez p1, :cond_0

    invoke-static {}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->shouldPeekPlaylist()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$2;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/MasterView;->access$600(Lmobi/beyondpod/ui/views/MasterView;)Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$2;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/MasterView;->access$600(Lmobi/beyondpod/ui/views/MasterView;)Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    move-result-object p1

    const v0, 0x800005

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->peekDrawer(I)V

    :cond_0
    return-void
.end method
