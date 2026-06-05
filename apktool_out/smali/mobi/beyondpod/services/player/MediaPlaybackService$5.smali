.class Lmobi/beyondpod/services/player/MediaPlaybackService$5;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/MediaPlaybackService;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$5;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMainUIVisibilityChangedEvent(Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;)V
    .locals 2

    .line 549
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showPlayerPausedNotication()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 552
    :cond_0
    iget-boolean p1, p1, Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;->isVisible:Z

    if-eqz p1, :cond_1

    .line 553
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$5;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->stopForeground(Landroid/app/Service;I)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$5;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 557
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$5;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$5;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setPlayerNotification(Landroid/app/Service;Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 560
    :cond_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$5;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    iget-object v1, p0, Lmobi/beyondpod/services/player/MediaPlaybackService$5;->this$0:Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaPlaybackService;->access$1100(Lmobi/beyondpod/services/player/MediaPlaybackService;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setPlayerPauseNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :goto_0
    return-void
.end method
