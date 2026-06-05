.class Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$3;
.super Ljava/lang/Object;
.source "CharmPlaybackSpeedPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$3;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$3;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$000(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$3;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeedNormal()F

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$400(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;F)V

    .line 119
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$3;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->dismiss()V

    return-void
.end method
