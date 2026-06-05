.class Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;
.super Ljava/lang/Object;
.source "ChromecastPlayer.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/ChromecastPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackComplete(Ljava/lang/String;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$100(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ChromecastPlayer"

    const-string v0, "Detected \'playback complete\' event!"

    .line 117
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->pause()V

    .line 119
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;[I)V

    goto :goto_0

    :cond_0
    const-string v0, "ChromecastPlayer"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected \'playback complete\' but not for our DataSource! DataSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    .line 123
    invoke-static {v2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$100(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", event contentId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPlaybackError()V
    .locals 4

    .line 157
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x64

    aput v3, v1, v2

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;[I)V

    return-void
.end method

.method public onVideoFocusGain()V
    .locals 2

    const-string v0, "ChromecastPlayer"

    const-string v1, "Got \'videoFocusGain\' event!"

    .line 151
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoFocusLost()V
    .locals 3

    const-string v0, "ChromecastPlayer"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video input was switched away! Is playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ChromecastPlayer"

    const-string v1, "Pausing Chromecast playback..."

    .line 135
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "pause"

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method
