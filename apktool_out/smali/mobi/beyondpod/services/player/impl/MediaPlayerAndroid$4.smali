.class Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$4;
.super Ljava/lang/Object;
.source "MediaPlayerAndroid.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;->setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

.field final synthetic val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$4;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$4;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 262
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$4;->val$listener:Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid$4;->this$0:Lmobi/beyondpod/services/player/impl/MediaPlayerAndroid;

    invoke-interface {p1, v0, p2, p3}, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;->onInfo(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;II)Z

    move-result p1

    return p1
.end method
