.class public Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;
.super Ljava/lang/Object;
.source "PreviewPlayerControl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;
    }
.end annotation


# static fields
.field private static final ALBUM_ART_DECODED:I = 0x3

.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final GET_ALBUM_ART:I = 0x2

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"


# instance fields
.field private _Album:Lmobi/beyondpod/ui/views/base/AlbumView;

.field private _AlbumArtHandler:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;

.field private _AlbumArtWorker:Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;

.field private _Context:Landroid/content/Context;

.field private _CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

.field private final _Handler:Landroid/os/Handler;

.field private _IsAudio:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mPlayingChecker:Ljava/lang/Runnable;

.field private mPositionWhenPaused:I

.field private final mProgressView:Landroid/view/View;

.field private final mUri:Landroid/net/Uri;

.field private final mVideoView:Landroid/widget/VideoView;

.field private mWasPlayingWhenPaused:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;Lmobi/beyondpod/rsscore/Feed;I)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mPositionWhenPaused:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mWasPlayingWhenPaused:Z

    .line 59
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_IsAudio:Z

    .line 169
    new-instance v1, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$1;-><init>(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_Handler:Landroid/os/Handler;

    .line 229
    new-instance v1, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$2;-><init>(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mPlayingChecker:Ljava/lang/Runnable;

    .line 71
    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_Context:Landroid/content/Context;

    .line 73
    move-object v1, p2

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 75
    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;

    const-string v2, "preview album art worker"

    invoke-direct {v1, v2}, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_AlbumArtWorker:Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;

    .line 76
    new-instance v1, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_AlbumArtWorker:Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;-><init>(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;Landroid/os/Looper;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_AlbumArtHandler:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;

    const v1, 0x7f090275

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    const v1, 0x7f0901d9

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mProgressView:Landroid/view/View;

    .line 80
    iput-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mUri:Landroid/net/Uri;

    .line 82
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p3, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 85
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p3, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 86
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 87
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p3, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 88
    new-instance p3, Landroid/widget/MediaController;

    invoke-direct {p3, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mMediaController:Landroid/widget/MediaController;

    .line 89
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p3, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 92
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p3}, Landroid/widget/VideoView;->requestFocus()Z

    .line 94
    new-instance p3, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    .line 95
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p3}, Landroid/widget/VideoView;->start()V

    const p3, 0x7f0901cd

    .line 100
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/ui/views/base/AlbumView;

    iput-object p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_Album:Lmobi/beyondpod/ui/views/base/AlbumView;

    const/4 p3, 0x1

    if-ne p5, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    .line 101
    :goto_0
    iput-boolean p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_IsAudio:Z

    .line 102
    iput-object p4, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const p3, 0x7f08021e

    .line 104
    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_1

    .line 106
    sget-object p3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object p4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 109
    :cond_1
    iget-boolean p3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_IsAudio:Z

    if-eqz p3, :cond_2

    const p3, 0x7f09004d

    .line 111
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/ui/views/base/AlbumView;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_Album:Lmobi/beyondpod/ui/views/base/AlbumView;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_Handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Lmobi/beyondpod/rsscore/Feed;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/widget/VideoView;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mPlayingChecker:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->onCompletion()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 245
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_AlbumArtWorker:Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel$Worker;->quit()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 155
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_Handler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 156
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mProgressView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mPositionWhenPaused:I

    .line 135
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mWasPlayingWhenPaused:Z

    .line 136
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 124
    iget-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_IsAudio:Z

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    .line 127
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->_AlbumArtHandler:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl$AlbumArtHandler;->sendSetCurrentArtMessage()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 141
    iget v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mPositionWhenPaused:I

    if-ltz v0, :cond_0

    .line 143
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 144
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mPositionWhenPaused:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mPositionWhenPaused:I

    .line 146
    iget-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mWasPlayingWhenPaused:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    :cond_0
    return-void
.end method
