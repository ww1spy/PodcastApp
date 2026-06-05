.class Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "ChromecastDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/ChromecastDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CastMediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;)V
    .locals 0

    .line 449
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 467
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1408(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)I

    const-string p1, "chromecastDevice"

    .line 468
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Chromecast device detected! Devices: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1400(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 473
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1410(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)I

    const-string p1, "chromecastDevice"

    .line 474
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Chromecast device disappeared! Devices: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1400(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 454
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    .line 455
    iget-object p2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p2, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1200(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lcom/google/android/gms/cast/CastDevice;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 461
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-static {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->access$1300(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    return-void
.end method
