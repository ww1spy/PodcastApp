.class Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$12;
.super Ljava/lang/Object;
.source "MediaPlayerOSPlay.java"

# interfaces
.implements Lcom/aocate/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;->setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$12;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$12;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lcom/aocate/media/MediaPlayer;)V
    .locals 1

    .line 536
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$12;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay$12;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerOSPlay;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;->onSeekComplete(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;)V

    return-void
.end method
