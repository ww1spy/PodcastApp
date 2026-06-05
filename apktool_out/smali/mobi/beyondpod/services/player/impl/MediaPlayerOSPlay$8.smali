.class Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$8;
.super Ljava/lang/Object;
.source "MediaPlayerOSPlay.java"

# interfaces
.implements Lcom/aocate/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$8;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$8;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/aocate/media/MediaPlayer;)V
    .locals 1

    .line 471
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$8;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$8;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;->onCompletion(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;)V

    return-void
.end method
