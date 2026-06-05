.class Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;
.super Ljava/lang/Object;
.source "ChromecastDevice.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V
    .locals 3

    .line 385
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "chromecastDevice"

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver application launched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getApplicationStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v0, v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$600(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    .line 393
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v0, v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$700(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    .line 395
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v0, v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$902(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v0, v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$502(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 400
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object p1, p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v1, v1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$800(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1002(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    .line 401
    sget-object p1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v0, v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$800(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v1, v1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    .line 402
    invoke-static {v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1000(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v2, v2, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1000(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    move-result-object v2

    .line 401
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    .line 404
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object p1, p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;-><init>()V

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1102(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    .line 405
    sget-object p1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v0, v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$800(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v1, v1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    .line 406
    invoke-static {v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1100(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v2, v2, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1100(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    move-result-object v2

    .line 405
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    .line 408
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object p1, p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1000(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->this$1:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    iget-object v0, v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$800(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    const/4 p1, 0x0

    .line 409
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdSwitchPlayerForCurrentTrack(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "chromecastDevice"

    const-string v1, "Unable to request status"

    .line 413
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v0, "chromecastDevice"

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver application launch failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 381
    check-cast p1, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks$1;->onResult(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V

    return-void
.end method
