.class Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$1;
.super Ljava/lang/Object;
.source "ChromecastDevice.java"

# interfaces
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusUpdated()V
    .locals 1

    .line 544
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->scheduleNextStatusUpdateIfNeeded()V

    return-void
.end method
