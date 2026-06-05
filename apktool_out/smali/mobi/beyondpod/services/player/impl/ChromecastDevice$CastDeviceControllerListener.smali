.class Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;
.super Lcom/google/android/gms/cast/Cast$Listener;
.source "ChromecastDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/ChromecastDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CastDeviceControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 1

    const-string p1, "chromecastDevice"

    const-string v0, "Application has stopped"

    .line 339
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$502(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 341
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$600(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    .line 342
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$700(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    .line 343
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->switchToDefaultRoute()V

    .line 344
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->removeRemoteControlClient()V

    .line 345
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->setMediaSession(Ljava/lang/Object;)V

    return-void
.end method

.method public onApplicationStatusChanged()V
    .locals 2

    const-string v0, "chromecastDevice"

    const-string v1, "Application status Changed"

    .line 333
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeChanged()V
    .locals 2

    .line 323
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$400(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "chromecastDevice"

    const-string v1, "Application Volume Changed"

    .line 326
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
