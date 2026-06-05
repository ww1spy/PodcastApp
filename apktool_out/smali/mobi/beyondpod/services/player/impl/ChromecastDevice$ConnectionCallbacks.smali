.class Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;
.super Ljava/lang/Object;
.source "ChromecastDevice.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/ChromecastDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 355
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$800(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 361
    :cond_0
    :try_start_0
    sget-object p1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$800(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :try_start_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGChromecastEnvironment()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "D1B83C8C"

    goto :goto_0

    :cond_1
    const-string p1, "BBC4E9EF"

    :goto_0
    const-string v0, "chromecastDevice"

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device controller connected! Launching receiver application..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    const/4 v1, 0x1

    .line 378
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/LaunchOptions;->setRelaunchIfRunning(Z)V

    .line 379
    sget-object v1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$800(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 364
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "chromecastDevice"

    const-string v0, "onConnected() called but device not connected."

    .line 365
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 369
    :cond_2
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string v0, "chromecastDevice"

    const-string v1, "Error requesting status!"

    .line 426
    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string p1, "chromecastDevice"

    const-string v0, "device controller disconnected!"

    .line 433
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$600(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    .line 435
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$700(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    return-void
.end method
