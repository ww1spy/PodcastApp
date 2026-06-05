.class Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;
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

    .line 94
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$000(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$100(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$200(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;I)F

    move-result p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setPlaybackSpeed2(F)V

    .line 101
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$300(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V

    return-void

    .line 105
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed2()F

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$400(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;F)V

    .line 106
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->dismiss()V

    return-void
.end method
