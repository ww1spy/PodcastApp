.class Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$7;
.super Ljava/lang/Object;
.source "MediaPlayerOSPlay.java"

# interfaces
.implements Lcom/aocate/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$7;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$7;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/aocate/media/MediaPlayer;I)V
    .locals 1

    .line 454
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$7;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$7;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    invoke-interface {p1, v0, p2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;->onBufferingUpdate(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;I)V

    return-void
.end method
