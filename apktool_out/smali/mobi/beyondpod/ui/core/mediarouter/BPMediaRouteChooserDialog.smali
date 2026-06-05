.class public Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteChooserDialog;
.super Landroid/support/v7/app/MediaRouteChooserDialog;
.source "BPMediaRouteChooserDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRouteChooserDialog"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 51
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
