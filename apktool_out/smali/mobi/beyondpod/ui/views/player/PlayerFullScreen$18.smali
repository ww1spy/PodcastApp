.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$18;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 519
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$18;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 523
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCharmSleepSelected(Z)V

    .line 525
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerSleepTimeout()I

    move-result v0

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    :cond_0
    if-eqz v0, :cond_1

    .line 529
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$18;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    move-result-object v1

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->getTimeToSleep()I

    move-result v1

    if-nez v1, :cond_1

    .line 531
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$18;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    move-result-object p1

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->setSleepTo(I)V

    return-void

    .line 535
    :cond_1
    new-instance v0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$18;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$18;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$18;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {v3}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    move-result-object v3

    .line 536
    invoke-interface {v3}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->getTimeToSleep()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;F)V

    .line 537
    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->show(Landroid/view/View;)V

    return-void
.end method
