.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$20;
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

    .line 557
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$20;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 561
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCharmSpeedSelected(Z)V

    .line 563
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$20;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    move-result-object p1

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->onSelectPlaybackSpeed()V

    return-void
.end method
