.class Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$1;
.super Ljava/lang/Object;
.source "MediaPlayerChromecast.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$1;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$1;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;I)V
    .locals 1

    .line 158
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$1;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$1;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

    invoke-interface {p1, v0, p2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;->onBufferingUpdate(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;I)V

    return-void
.end method
