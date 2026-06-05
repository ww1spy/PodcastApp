.class Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$6;
.super Ljava/lang/Object;
.source "MediaPlayerChromecast.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$6;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$6;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$6;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$6;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;->onSeekComplete(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;)V

    return-void
.end method
