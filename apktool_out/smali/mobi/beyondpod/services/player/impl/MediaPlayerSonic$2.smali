.class Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$2;
.super Ljava/lang/Object;
.source "MediaPlayerSonic.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/SonicPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;->setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$2;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$2;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$2;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerSonic$2;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerSonic;

    invoke-interface {p1, v0}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;->onCompletion(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;)V

    return-void
.end method
