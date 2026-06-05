.class Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$11;
.super Ljava/lang/Object;
.source "MediaPlayerOSPlay.java"

# interfaces
.implements Lcom/aocate/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$11;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$11;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/aocate/media/MediaPlayer;)V
    .locals 1

    .line 520
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$11;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$11;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;->onPrepared(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;)V

    return-void
.end method
