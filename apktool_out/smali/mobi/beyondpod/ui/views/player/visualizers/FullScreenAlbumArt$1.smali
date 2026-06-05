.class Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullScreenAlbumArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;->crossfade(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;

.field final synthetic val$from:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;Landroid/widget/ImageView;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt$1;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt$1;->val$from:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt$1;->val$from:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/FullScreenAlbumArt$1;->val$from:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
