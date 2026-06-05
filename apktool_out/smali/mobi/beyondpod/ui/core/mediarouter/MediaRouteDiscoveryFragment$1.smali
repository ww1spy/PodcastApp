.class Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "MediaRouteDiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->onCreateCallback()Landroid/support/v7/media/MediaRouter$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 2

    const-string p1, "MediaRouteDiscoveryFragment"

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteProviderAdded: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 2

    const-string p1, "MediaRouteDiscoveryFragment"

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteProviderChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 2

    const-string p1, "MediaRouteDiscoveryFragment"

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteProviderRemoved: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string p1, "MediaRouteDiscoveryFragment"

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteAdded: route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->castControlCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;->onCastDeviceDetected()V

    :cond_1
    return-void
.end method

.method public onRoutePresentationDisplayChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string p1, "MediaRouteDiscoveryFragment"

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoutePresentationDisplayChanged: route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string p1, "MediaRouteDiscoveryFragment"

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media Route Selected: route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->castControlCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->checkGooglePlayServices(Landroid/app/Activity;Z)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MediaRouteDiscoveryFragment"

    const-string p2, "device is not running a required version of Google Play Services! Please update from Google Play store"

    .line 71
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;->onIncompatiblePlayServices()V

    :cond_1
    return-void

    .line 80
    :cond_2
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->connectToDevice(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    if-eqz p1, :cond_4

    .line 83
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;->onConnectedToDevice(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "MediaRouteDiscoveryFragment"

    const-string p2, "Selected route is not a CAST route (probably bluetooth device)! Nothing to do!"

    .line 87
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    if-eqz p1, :cond_4

    .line 94
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;->onConnectionRefused()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string p1, "MediaRouteDiscoveryFragment"

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media Route Unselected: route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->disconnectFromDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;->this$0:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;->onDisconnectFromDevice()V

    :cond_0
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string p1, "MediaRouteDiscoveryFragment"

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteVolumeChanged: route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
