.class public Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteChooserDialogFragment;
.super Landroid/support/v7/app/MediaRouteChooserDialogFragment;
.source "BPMediaRouteChooserDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BPMediaRouteChooserDialogFragment"


# instance fields
.field private mChooserDialog:Landroid/support/v7/app/MediaRouteChooserDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteChooserDialog;
    .locals 0

    .line 41
    new-instance p2, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteChooserDialog;

    invoke-direct {p2, p1}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteChooserDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteChooserDialogFragment;->mChooserDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    .line 42
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteChooserDialogFragment;->mChooserDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    return-object p1
.end method
