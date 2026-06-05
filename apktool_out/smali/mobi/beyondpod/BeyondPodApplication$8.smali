.class Lmobi/beyondpod/BeyondPodApplication$8;
.super Ljava/lang/Object;
.source "BeyondPodApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/BeyondPodApplication;->updateMediaSessionPlaylist(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/BeyondPodApplication;


# direct methods
.method constructor <init>(Lmobi/beyondpod/BeyondPodApplication;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$8;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 679
    invoke-static {}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getInstance()Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->notifyPlaylistChanged()V

    return-void
.end method
