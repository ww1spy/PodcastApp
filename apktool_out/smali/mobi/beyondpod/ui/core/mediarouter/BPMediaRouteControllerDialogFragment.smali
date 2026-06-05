.class public Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialogFragment;
.super Landroid/support/v7/app/MediaRouteControllerDialogFragment;
.source "BPMediaRouteControllerDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BPMediaRouteControllerDialogFragment"


# instance fields
.field private mControllerDialog:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteControllerDialog;
    .locals 0

    .line 41
    new-instance p2, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;

    invoke-direct {p2, p1}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialogFragment;->mControllerDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    .line 43
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialogFragment;->mControllerDialog:Landroid/support/v7/app/MediaRouteControllerDialog;

    return-object p1
.end method
