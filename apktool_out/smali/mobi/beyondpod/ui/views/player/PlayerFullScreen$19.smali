.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$19;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->loadCharms()V
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

    .line 542
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$19;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 p1, 0x1

    .line 546
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCharmSleepSelected(Z)V

    .line 548
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$19;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$19;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    move-result-object v1

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->getTimeToSleep()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0, v2}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->setSleepTo(I)V

    return p1
.end method
