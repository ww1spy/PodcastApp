.class Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$1;
.super Ljava/lang/Object;
.source "MediaPlayerAndroid.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$1;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$1;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 213
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$1;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$1;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

    invoke-interface {p1, v0, p2}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;->onBufferingUpdate(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;I)V

    return-void
.end method
