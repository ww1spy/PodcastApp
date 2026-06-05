.class Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$4;
.super Ljava/lang/Object;
.source "MediaPlayerSonic.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/SonicPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$4;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$4;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lmobi/beyondpod/services/player/impl/SonicPlayer;II)Z
    .locals 1

    .line 207
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$4;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$4;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

    invoke-interface {p1, v0, p2, p3}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;->onInfo(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;II)Z

    move-result p1

    return p1
.end method
