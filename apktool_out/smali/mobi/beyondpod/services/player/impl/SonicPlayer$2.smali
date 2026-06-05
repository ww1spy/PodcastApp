.class Lmobi/beyondpod/services/player/impl/SonicPlayer$2;
.super Ljava/lang/Object;
.source "SonicPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/SonicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 290
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SonicPlayer"

    const-string v1, "*** seekingRunnable.run(): Cannot seek since the player has been released."

    .line 291
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$600(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Landroid/media/MediaExtractor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SonicPlayer seekingRunnable cannot seek since the extractor is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$600(Lmobi/beyondpod/services/player/impl/SonicPlayer;)Landroid/media/MediaExtractor;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$700(Lmobi/beyondpod/services/player/impl/SonicPlayer;)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 300
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$702(Lmobi/beyondpod/services/player/impl/SonicPlayer;J)J

    .line 301
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$2;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$500(Lmobi/beyondpod/services/player/impl/SonicPlayer;[I)V

    return-void
.end method
