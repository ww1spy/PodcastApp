.class public interface abstract Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;
.super Ljava/lang/Object;
.source "MediaRouteDiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDiscoveryFragmentOwner"
.end annotation


# virtual methods
.method public abstract onCastDeviceDetected()V
.end method

.method public abstract onConnectedToDevice(Ljava/lang/String;)V
.end method

.method public abstract onConnectionRefused()V
.end method

.method public abstract onDisconnectFromDevice()V
.end method

.method public abstract onIncompatiblePlayServices()V
.end method
