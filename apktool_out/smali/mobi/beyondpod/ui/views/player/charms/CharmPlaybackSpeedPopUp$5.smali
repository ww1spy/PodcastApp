.class Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$5;
.super Ljava/lang/Object;
.source "CharmPlaybackSpeedPopUp.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 143
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$5;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$5;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$5;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {p3, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$200(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;I)F

    move-result p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$602(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;F)F

    .line 162
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$5;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$5;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$600(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)F

    move-result p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$400(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
