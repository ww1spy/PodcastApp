.class Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$5;
.super Ljava/lang/Object;
.source "MediaPlayerChromecast.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/ChromecastPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;->setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$5;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$5;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$5;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast$5;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerChromecast;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;->onPrepared(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;)V

    return-void
.end method
