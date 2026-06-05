.class public Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer;
.source "ChromecastDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/ChromecastDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaControlChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;
    }
.end annotation


# instance fields
.field _NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

.field _StatusUpdateRunnable:Ljava/lang/Runnable;

.field _StatusUpdatedListener:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

.field private mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mEventHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    .line 521
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;-><init>()V

    .line 539
    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$1;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_StatusUpdatedListener:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

    .line 563
    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$2;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_StatusUpdateRunnable:Ljava/lang/Runnable;

    .line 522
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 525
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 527
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mEventHandler:Landroid/os/Handler;

    goto :goto_0

    .line 529
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 531
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mEventHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 535
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mEventHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method static synthetic access$1500(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)Landroid/os/Handler;
    .locals 0

    .line 498
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 498
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method private seekWithLoad(Lcom/google/android/gms/cast/MediaInfo;J)V
    .locals 8

    .line 687
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    const-string p1, "chromecastDevice"

    const-string p2, "failed to load-for-seek remote contentent - No active session!"

    .line 689
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    if-eqz p1, :cond_0

    .line 691
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;->onLoadFailed()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "chromecastDevice"

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking (with load) to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v3, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$5;

    invoke-direct {p2, p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$5;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method


# virtual methods
.method public hasRemotePlayerLoadedMedia()Z
    .locals 3

    .line 722
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 725
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemotePlayerPlaying()Z
    .locals 2

    .line 730
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method load(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 2

    .line 608
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    const-string p1, "chromecastDevice"

    const-string v0, "failed to load remote contentent - No active session!"

    .line 610
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    if-eqz p1, :cond_0

    .line 612
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;->onLoadFailed()V

    :cond_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$3;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public onSessionEnded(II)V
    .locals 1

    .line 590
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    invoke-interface {v0, p1, p2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;->onSessionInterrupted(II)V

    :cond_0
    return-void
.end method

.method pause()V
    .locals 1

    .line 648
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->pause(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->play(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public release()V
    .locals 2

    .line 584
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method scheduleNextStatusUpdateIfNeeded()V
    .locals 4

    .line 555
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_StatusUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 557
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 560
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_StatusUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method seek(Lcom/google/android/gms/cast/MediaInfo;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->hasRemotePlayerLoadedMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->seekWithLoad(Lcom/google/android/gms/cast/MediaInfo;J)V

    return-void

    :cond_0
    const-string v0, "chromecastDevice"

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->mCastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;JI)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance p2, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$4;

    invoke-direct {p2, p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$4;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method setNotificationListener(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    return-void
.end method
