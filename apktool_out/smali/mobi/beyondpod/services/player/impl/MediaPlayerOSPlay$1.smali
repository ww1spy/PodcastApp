.class Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$1;
.super Ljava/lang/Object;
.source "MediaPlayerOSPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$1;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 139
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$1;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot pause since OSPlay is released!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$1;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    invoke-static {v2}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->access$400(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;)Lcom/aocate/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aocate/media/MediaPlayer;->pause()V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/16 v0, 0x5dc

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 148
    invoke-static {}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unusual delay executing Pause() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    invoke-static {}, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OSPlay pause failed! reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
