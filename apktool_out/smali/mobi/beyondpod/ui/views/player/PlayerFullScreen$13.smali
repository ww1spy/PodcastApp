.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$13;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->onFinishInflate()V
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

    .line 303
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$13;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 307
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$13;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V

    :cond_0
    return-void
.end method
