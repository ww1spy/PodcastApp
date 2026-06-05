.class public Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;
.super Landroid/support/v7/app/MediaRouteDiscoveryFragment;
.source "MediaRouteDiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;
    }
.end annotation


# static fields
.field public static final DISCOVERY_FRAGMENT_TAG:Ljava/lang/String; = "DiscoveryFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouteDiscoveryFragment"


# instance fields
.field _Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteDiscoveryFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateCallback()Landroid/support/v7/media/MediaRouter$Callback;
    .locals 1

    .line 27
    new-instance v0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$1;-><init>(Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;)V

    return-object v0
.end method

.method public onPrepareCallbackFlags()I
    .locals 1

    .line 149
    invoke-super {p0}, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->onPrepareCallbackFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setOwner(Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->_Owner:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;

    return-void
.end method
