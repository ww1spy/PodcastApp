.class Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$3;
.super Ljava/lang/Object;
.source "MediaPlayerSonic.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/SonicPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$3;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$3;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmobi/beyondpod/services/player/impl/SonicPlayer;II)Z
    .locals 1

    .line 191
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$3;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$3;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

    invoke-interface {p1, v0, p2, p3}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;->onError(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;II)Z

    move-result p1

    return p1
.end method
