.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$7;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$7;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 144
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->getCurrentPlayingTrackPosition()I

    move-result p1

    if-lez p1, :cond_0

    .line 145
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPreviousTrack()V

    goto :goto_0

    .line 147
    :cond_0
    sget p1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->VIBRATE_SHORT:I

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->vibrate(I)V

    :goto_0
    return-void
.end method
