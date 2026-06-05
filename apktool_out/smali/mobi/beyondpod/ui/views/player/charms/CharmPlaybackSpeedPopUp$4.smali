.class Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$4;
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

    .line 124
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$4;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$4;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$000(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$4;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$300(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$4;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->access$500(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V

    :goto_0
    return-void
.end method
