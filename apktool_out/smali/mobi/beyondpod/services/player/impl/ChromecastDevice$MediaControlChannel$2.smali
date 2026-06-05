.class Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$2;
.super Ljava/lang/Object;
.source "ChromecastDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 564
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 572
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->access$1500(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    iget-object v1, v1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->_StatusUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 573
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$2;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-static {v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->access$1600(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "chromecastDevice"

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to update status! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
