.class Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$5;
.super Ljava/lang/Object;
.source "ChromecastDevice.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->seekWithLoad(Lcom/google/android/gms/cast/MediaInfo;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$5;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V
    .locals 3

    const-string v0, "chromecastDevice"

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####---- On Load-For-Seek Completed! status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-interface {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 709
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$5;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    iget-object p1, p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    if-eqz p1, :cond_1

    .line 710
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$5;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    iget-object p1, p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;->onSeekCompleted()V

    goto :goto_0

    .line 713
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$5;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    iget-object p1, p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    if-eqz p1, :cond_1

    .line 714
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$5;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    iget-object p1, p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;->onSeekFailed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 700
    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$5;->onResult(Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;)V

    return-void
.end method
