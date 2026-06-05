.class public Lmobi/beyondpod/ui/views/MovieView;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MovieView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;
.implements Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieView"


# instance fields
.field private _FinishOnCompletion:Z

.field private _IsCommandResume:Z

.field private _LastSystemUiVis:I

.field private _MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

.field private _MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

.field private _Track:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_IsCommandResume:Z

    return-void
.end method

.method private HandleServiceCommand(Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_IsCommandResume:Z

    const-string v0, "command"

    .line 566
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MovieView"

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===#####==== Received MediaButtonEvent! Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    if-nez p1, :cond_0

    const-string p1, "MovieView"

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ignored because MovieControl is not initialized!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "resume"

    .line 579
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 581
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MovieViewControl;->play()V

    goto/16 :goto_0

    :cond_1
    const-string p1, "togglepause"

    .line 583
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 585
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->doPlayPause()V

    goto :goto_0

    :cond_2
    const-string p1, "pause"

    .line 587
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 589
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MovieViewControl;->pause()V

    goto :goto_0

    :cond_3
    const-string p1, "stop"

    .line 591
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 593
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MovieViewControl;->stop()V

    goto :goto_0

    :cond_4
    const-string p1, "skiptoend"

    .line 595
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 597
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->doSkipToEnd()V

    goto :goto_0

    :cond_5
    const-string p1, "skipforward"

    .line 599
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 601
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->doSkipForward()V

    goto :goto_0

    :cond_6
    const-string p1, "skipbackword"

    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 606
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->doSkipBack()V

    goto :goto_0

    :cond_7
    const-string p1, "playnext"

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 610
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->goToNextTrack()V

    goto :goto_0

    :cond_8
    const-string p1, "playprevious"

    .line 612
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 614
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->goToPreviousTrack()V

    :cond_9
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/MovieView;)I
    .locals 0

    .line 73
    iget p0, p0, Lmobi/beyondpod/ui/views/MovieView;->_LastSystemUiVis:I

    return p0
.end method

.method static synthetic access$002(Lmobi/beyondpod/ui/views/MovieView;I)I
    .locals 0

    .line 73
    iput p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_LastSystemUiVis:I

    return p1
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/MovieView;)Lmobi/beyondpod/ui/views/base/BPMediaController;
    .locals 0

    .line 73
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/MovieView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/MovieView;->_FinishOnCompletion:Z

    return p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/MovieView;)Lmobi/beyondpod/rsscore/Track;
    .locals 0

    .line 73
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    return-object p0
.end method

.method private static executeActionDeleteCurrentTrackIfAllowed(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackAsync(Lmobi/beyondpod/rsscore/Track;)V

    :cond_0
    return-void
.end method

.method private executeActionDoNothing()V
    .locals 4

    .line 423
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-static {}, Lmobi/beyondpod/ui/views/MovieView;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;-><init>(Lmobi/beyondpod/services/player/PlayList;I)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    .line 424
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void
.end method

.method private executeActionPlayNextPosition(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 431
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayNextTrack()V

    .line 432
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void
.end method

.method private executeActionPlayPreviousPosition(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 443
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPreviousTrack()V

    .line 444
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void
.end method

.method private loadCurrentTrackFromIntent(Landroid/content/Intent;)Z
    .locals 4

    .line 320
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    .line 322
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 327
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 330
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, ""

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private static playList()Lmobi/beyondpod/services/player/PlayList;
    .locals 1

    .line 86
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    return-object v0
.end method

.method private static playTrackInternal(Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 91
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Z

    return-void
.end method


# virtual methods
.method public doPause()V
    .locals 1

    .line 554
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->pause()V

    return-void
.end method

.method public doStart()V
    .locals 1

    .line 560
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->play()V

    return-void
.end method

.method public goToNextTrack()V
    .locals 1

    .line 540
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->stop()V

    .line 541
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/MovieView;->executeActionPlayNextPosition(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method public goToPreviousTrack()V
    .locals 1

    .line 547
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->stop()V

    .line 548
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/MovieView;->executeActionPlayPreviousPosition(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method public handleEndOfPlaybackFor(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "MovieView"

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===#####==== Completed the playback of video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lmobi/beyondpod/ui/views/MovieView;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/PlayList;->onTrackPlaybackComplete(Z)V

    .line 400
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void
.end method

.method public hideNavigation()V
    .locals 1

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MovieView;->setNavVisibility(Z)V

    return-void
.end method

.method public onCastDeviceDetected()V
    .locals 0

    return-void
.end method

.method public onConnectedToDevice(Ljava/lang/String;)V
    .locals 4

    .line 621
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f1002d4

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 622
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 623
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void
.end method

.method public onConnectionRefused()V
    .locals 2

    const v0, 0x7f1002fa

    const/4 v1, 0x1

    .line 635
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    .line 104
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_1

    const/high16 v0, 0x80000

    .line 106
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v2

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    const/high16 v0, 0x480000

    .line 110
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/MovieView;->setShowWhenLocked(Z)V

    .line 116
    :goto_0
    invoke-static {}, Lmobi/beyondpod/ui/core/MovieViewCounter;->addInstance()V

    const/16 v0, 0x9

    .line 118
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MovieView;->supportRequestWindowFeature(I)Z

    .line 119
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MovieView"

    const-string v0, "Closing view because the repository is not Loaded"

    .line 123
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void

    .line 128
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f0c0084

    .line 130
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MovieView;->setContentView(I)V

    .line 133
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "DiscoveryFragment"

    .line 134
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_3

    .line 136
    new-instance v2, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    invoke-direct {v2}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;-><init>()V

    .line 137
    invoke-virtual {v2, p0}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->setOwner(Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;)V

    .line 138
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 139
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v3, "DiscoveryFragment"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_3
    const v0, 0x7f0901ff

    .line 142
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/BPMediaController;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    .line 143
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->initialize(Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;)V

    .line 145
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    new-instance v2, Lmobi/beyondpod/ui/views/MovieView$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/MovieView$1;-><init>(Lmobi/beyondpod/ui/views/MovieView;)V

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 160
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v2, 0xf

    .line 162
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 164
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x7f060099

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v0, 0x7f06009a

    .line 167
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Lmobi/beyondpod/ui/views/base/UIUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 169
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/MovieView;->loadCurrentTrackFromIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 171
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void

    .line 175
    :cond_5
    new-instance v0, Lmobi/beyondpod/ui/views/MovieView$2;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-direct {v0, p0, v2, p0}, Lmobi/beyondpod/ui/views/MovieView$2;-><init>(Lmobi/beyondpod/ui/views/MovieView;Lmobi/beyondpod/ui/views/base/BPMediaController;Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    const-string v0, "android.intent.extra.screenOrientation"

    .line 268
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.screenOrientation"

    const/4 v2, -0x1

    .line 270
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 272
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->getRequestedOrientation()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 274
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MovieView;->setRequestedOrientation(I)V

    :cond_6
    const-string v0, "android.intent.extra.finishOnCompletion"

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_FinishOnCompletion:Z

    .line 280
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 282
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v2, v3}, Lmobi/beyondpod/ui/views/base/BPMediaController;->hideNavigationDelayed(J)V

    .line 284
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->playTrack(Lmobi/beyondpod/rsscore/Track;)V

    .line 286
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onVideoPlaybackStarted(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MovieView"

    const-string v1, "===#####==== OnDestroy called"

    .line 362
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->stop()V

    .line 366
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/core/MovieViewCounter;->removeInstance()V

    .line 367
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDisconnectFromDevice()V
    .locals 0

    return-void
.end method

.method public onIncompatiblePlayServices()V
    .locals 1

    const/4 v0, 0x1

    .line 647
    invoke-static {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->checkGooglePlayServices(Landroid/app/Activity;Z)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 670
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    const/4 p1, 0x1

    return p1

    .line 677
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 655
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->hideNavigationDelayed(J)V

    const/4 p1, 0x1

    return p1

    .line 662
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "MovieView"

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===#####==== MovieView - New Intent Received! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mobi.beyondpod.services.musicservicecommand"

    .line 293
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "closeVideoPlayer"

    const-string v1, "command"

    .line 295
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->requestCloseView()V

    return-void

    .line 300
    :cond_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/MovieView;->HandleServiceCommand(Landroid/content/Intent;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/MovieView;->loadCurrentTrackFromIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/MovieViewControl;->playTrack(Lmobi/beyondpod/rsscore/Track;)V

    .line 315
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 457
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->requestCloseView()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 342
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const-string v0, "MovieView"

    const-string v1, "===#####==== OnPause called"

    .line 343
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->onPause()V

    .line 345
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->onMainWindowHidden()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 467
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f100027

    .line 469
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 470
    new-instance v1, Landroid/support/v7/app/MediaRouteActionProvider;

    invoke-direct {v1, p0}, Landroid/support/v7/app/MediaRouteActionProvider;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteActionProvider;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 472
    new-instance v2, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;

    invoke-direct {v2}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteActionProvider;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    .line 473
    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 474
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 476
    invoke-static {}, Lmobi/beyondpod/ui/views/MovieView;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-static {p0, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->buildShareEpisodeIntent(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v2, Landroid/support/v7/widget/ShareActionProvider;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    const-string v3, "share_history.xml"

    .line 484
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    const v0, 0x7f10000a

    .line 486
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 487
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 488
    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 373
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 374
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    .line 376
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->onMainWindowVisible()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "MovieView"

    const-string v1, "===#####==== OnStop=== called"

    .line 351
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/MovieViewControl;->onVideoWindowHidden(Z)V

    .line 356
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_IsCommandResume:Z

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->onResume(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 387
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/MovieView;->_IsCommandResume:Z

    return-void
.end method

.method public requestCloseView()V
    .locals 0

    .line 527
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void
.end method

.method setNavVisibility(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x707

    goto :goto_0

    :cond_0
    const/16 p1, 0x700

    .line 521
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->setSystemUiVisibility(I)V

    return-void
.end method

.method public showNavigation()V
    .locals 1

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MovieView;->setNavVisibility(Z)V

    return-void
.end method

.method public skipToEnd()V
    .locals 1

    .line 533
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_MovieViewControl:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->skipToEnd()V

    .line 534
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView;->_Track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MovieView;->handleEndOfPlaybackFor(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method
