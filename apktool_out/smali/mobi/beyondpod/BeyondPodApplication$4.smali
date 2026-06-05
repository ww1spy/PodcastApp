.class Lmobi/beyondpod/BeyondPodApplication$4;
.super Landroid/content/BroadcastReceiver;
.source "BeyondPodApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/BeyondPodApplication;->registerEnvironmentListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/BeyondPodApplication;


# direct methods
.method constructor <init>(Lmobi/beyondpod/BeyondPodApplication;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$4;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 375
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage card "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unmounted!"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 380
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "mobi.beyondpod.services.musicservicecommand"

    .line 381
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "command"

    const-string v1, "stop"

    .line 382
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 391
    :cond_3
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$4;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->masterActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 393
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Closing Master View!"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$4;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->masterActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 397
    :cond_4
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Saving and unloading the repository..."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveAndUnloadRepositoryAsync()V

    goto/16 :goto_3

    :cond_5
    const-string p1, "android.intent.action.MEDIA_MOUNTED"

    .line 400
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 402
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storage card "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mounted!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    .line 405
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 421
    :cond_6
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detected a fake mount, Repository is already initialized! State:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 407
    :cond_7
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 415
    :cond_8
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mounted card is not our storage root ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), Ignoring..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 410
    :cond_9
    :goto_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Storage root card mounted!, Initializing configuration..."

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$4;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->initialize()V

    :cond_a
    :goto_3
    return-void
.end method
