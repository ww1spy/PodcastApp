.class Lmobi/beyondpod/ui/views/MovieView$2;
.super Lmobi/beyondpod/ui/views/MovieViewControl;
.source "MovieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MovieView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MovieView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MovieView;Lmobi/beyondpod/ui/views/base/BPMediaController;Landroid/content/Context;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-direct {p0, p2, p3}, Lmobi/beyondpod/ui/views/MovieViewControl;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Z)V
    .locals 1

    .line 180
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieView;->access$200(Lmobi/beyondpod/ui/views/MovieView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieView$2;->playbackFailed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 184
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->markPlayed()V

    .line 185
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView$2;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/MovieView;->handleEndOfPlaybackFor(Lmobi/beyondpod/rsscore/Track;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 193
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/MovieViewControl;->onError(Landroid/media/MediaPlayer;II)Z

    const/4 p1, 0x1

    const/16 p2, -0x3ec

    if-ne p3, p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 201
    :goto_0
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    const v0, 0x7f100177

    goto :goto_1

    :cond_1
    const v0, 0x7f100179

    .line 202
    :goto_1
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_2

    const v0, 0x7f100178

    goto :goto_2

    :cond_2
    const v0, 0x7f10017a

    .line 204
    :goto_2
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f100092

    .line 206
    new-instance v1, Lmobi/beyondpod/ui/views/MovieView$2$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/MovieView$2$1;-><init>(Lmobi/beyondpod/ui/views/MovieView$2;)V

    invoke-virtual {p3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-nez p2, :cond_3

    const p2, 0x7f10008e

    .line 218
    new-instance v0, Lmobi/beyondpod/ui/views/MovieView$2$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MovieView$2$2;-><init>(Lmobi/beyondpod/ui/views/MovieView$2;)V

    invoke-virtual {p3, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    iget-object p2, p0, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/MovieView;->access$300(Lmobi/beyondpod/ui/views/MovieView;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "video/*"

    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getExternalPlayersFor(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 230
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_3

    const p2, 0x7f100095

    .line 232
    new-instance v0, Lmobi/beyondpod/ui/views/MovieView$2$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MovieView$2$3;-><init>(Lmobi/beyondpod/ui/views/MovieView$2;)V

    invoke-virtual {p3, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    :cond_3
    new-instance p2, Lmobi/beyondpod/ui/views/MovieView$2$4;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/MovieView$2$4;-><init>(Lmobi/beyondpod/ui/views/MovieView$2;)V

    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 262
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/MovieViewControl;->onPrepared(Landroid/media/MediaPlayer;)V

    const-string p1, "MovieView"

    const-string v0, "Movie Prepared!"

    .line 263
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
