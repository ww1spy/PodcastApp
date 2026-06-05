.class final Lmobi/beyondpod/services/player/MediaButtonIntentReceiver$1;
.super Landroid/os/Handler;
.source "MediaButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "*** Long Press Detected! Skipping Forward..."

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mobi.beyondpod.services.musicservicecommand"

    .line 100
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "command"

    .line 101
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->WRLongPressButtonAction()I

    move-result v3

    invoke-static {v3}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->translateCommand(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "commandOption"

    const-string v3, "play"

    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->publishMediaButtonEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 104
    invoke-static {v1}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->access$002(Z)Z

    :cond_1
    :goto_0
    return-void
.end method
