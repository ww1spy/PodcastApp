.class final Lmobi/beyondpod/ui/commands/CommandManager$3;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$track:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue()V
    .locals 9

    const/4 v0, 0x1

    .line 554
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    iget-object v2, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v2

    .line 557
    iget-object v3, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/x-shockwave-flash"

    .line 561
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v4, "youtube.com/v/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    move v2, v0

    goto :goto_1

    .line 567
    :cond_0
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "audio/*"

    goto :goto_0

    .line 571
    :cond_1
    iget-object v4, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "image/*"

    move-object v4, v2

    move v2, v5

    goto :goto_1

    :pswitch_1
    const-string v2, "video/*"

    goto :goto_0

    :pswitch_2
    const-string v2, "audio/*"

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    .line 591
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdPauseAudioPlayback()V

    :cond_2
    const-string v2, "cmdOpenExternalPlayer"

    .line 593
    invoke-static {v2, v4}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 596
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 598
    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v2, "startPosition"

    .line 599
    iget-object v3, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "fromStart"

    .line 600
    iget-object v3, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4

    move v5, v0

    :cond_4
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "savePosition"

    .line 601
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "position"

    .line 603
    iget-object v3, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    long-to-int v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "return_result"

    .line 604
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "title"

    .line 605
    iget-object v3, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->master()Lmobi/beyondpod/ui/views/MasterView;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isPartnerPlayerInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 608
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->master()Lmobi/beyondpod/ui/views/MasterView;

    move-result-object v2

    iget-object v2, v2, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v3, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmobi/beyondpod/ui/views/Workspace;->LastExternalPlayerTrackPath:Ljava/lang/String;

    .line 609
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->master()Lmobi/beyondpod/ui/views/MasterView;

    move-result-object v2

    iget-object v2, v2, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lmobi/beyondpod/ui/views/Workspace;->LastExternalPlayerTrackTime:J

    .line 610
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    const-class v4, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 612
    invoke-static {v1}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 616
    :cond_5
    invoke-static {v1}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    .line 617
    iget-object v1, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->markPlayed()V

    .line 618
    iget-object v1, p0, Lmobi/beyondpod/ui/commands/CommandManager$3;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 624
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v1, ""

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
