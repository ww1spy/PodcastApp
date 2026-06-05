.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$2;
.super Landroid/os/AsyncTask;
.source "RemoteControlLP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->updateSessionQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$2;->this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 424
    :try_start_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$2;->this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

    invoke-static {p1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$100(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;)Ljava/util/List;

    move-result-object p1

    .line 426
    iget-object v0, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$2;->this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

    invoke-static {v0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$200(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;)Landroid/media/session/MediaSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    .line 427
    iget-object p1, p0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$2;->this$0:Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

    invoke-static {p1}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$200(Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;)Landroid/media/session/MediaSession;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$string;->auto_playlist:I

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    invoke-static {}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "failed to set the session queue"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
