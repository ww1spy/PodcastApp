.class public Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;
.super Landroid/support/v7/app/MediaRouteDialogFactory;
.source "BPMediaRouteDialogFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BPMediaRouteDialogFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteDialogFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateChooserDialogFragment()Landroid/support/v7/app/MediaRouteChooserDialogFragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 43
    new-instance v0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteChooserDialogFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteChooserDialogFragment;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 27
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;->onCreateControllerDialogFragment()Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public onCreateControllerDialogFragment()Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialogFragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    new-instance v0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialogFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialogFragment;-><init>()V

    return-object v0
.end method
