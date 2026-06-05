.class Lmobi/beyondpod/ui/views/player/PlaylistFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistFragment;->switchToPlaylist(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$5;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 323
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$5;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 317
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$5;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setVisibility(I)V

    return-void
.end method
